.class Landroid/icu/text/SpoofChecker$SpoofData;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpoofData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;,
        Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;,
        Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;
    }
.end annotation


# static fields
.field private static final DATA_FORMAT:I = 0x43667520

.field private static final IS_ACCEPTABLE:Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;


# instance fields
.field fAnyCaseTrie:Landroid/icu/impl/Trie2;

.field fCFUKeys:[I

.field fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

.field fCFUStrings:Ljava/lang/String;

.field fCFUValues:[S

.field fLowerCaseTrie:Landroid/icu/impl/Trie2;

.field fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 2205
    new-instance v0, Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;-><init>(Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;)V

    #@6
    sput-object v0, Landroid/icu/text/SpoofChecker$SpoofData;->IS_ACCEPTABLE:Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    #@8
    .line 2171
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2233
    sget-object v0, Landroid/icu/text/SpoofChecker$SpoofData;->IS_ACCEPTABLE:Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    #@5
    const v1, 0x43667520

    #@8
    invoke-static {p1, v1, v0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@b
    .line 2234
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    #@e
    .line 2235
    invoke-virtual {p0, p1}, Landroid/icu/text/SpoofChecker$SpoofData;->readData(Ljava/nio/ByteBuffer;)V

    #@11
    .line 2232
    return-void
.end method

.method static getDefault()Landroid/icu/text/SpoofChecker$SpoofData;
    .locals 1

    #@0
    .prologue
    .line 2222
    invoke-static {}, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->-get0()Landroid/icu/text/SpoofChecker$SpoofData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2239
    instance-of v1, p1, Landroid/icu/text/SpoofChecker$SpoofData;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2240
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 2242
    nop

    #@8
    nop

    #@9
    .line 2243
    .local v0, "otherData":Landroid/icu/text/SpoofChecker$SpoofData;
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@b
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@d
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    return v3

    #@14
    .line 2244
    :cond_1
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    #@16
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    #@18
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([S[S)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_2

    #@1e
    return v3

    #@1f
    .line 2245
    :cond_2
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@21
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@23
    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_3

    #@29
    return v3

    #@2a
    .line 2246
    :cond_3
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@2c
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@2e
    if-eq v1, v2, :cond_4

    #@30
    .line 2247
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@32
    if-eqz v1, :cond_4

    #@34
    .line 2248
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@36
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_7

    #@3e
    .line 2249
    :cond_4
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    #@40
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    #@42
    if-eq v1, v2, :cond_5

    #@44
    .line 2250
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    #@46
    if-eqz v1, :cond_5

    #@48
    .line 2251
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    #@4a
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    #@4c
    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie2;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_8

    #@52
    .line 2252
    :cond_5
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    #@54
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    #@56
    if-eq v1, v2, :cond_6

    #@58
    .line 2253
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    #@5a
    if-eqz v1, :cond_6

    #@5c
    .line 2254
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    #@5e
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    #@60
    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie2;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v1

    #@64
    if-eqz v1, :cond_9

    #@66
    .line 2255
    :cond_6
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    #@68
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    #@6a
    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@6d
    move-result v1

    #@6e
    if-nez v1, :cond_a

    #@70
    return v3

    #@71
    .line 2248
    :cond_7
    return v3

    #@72
    .line 2251
    :cond_8
    return v3

    #@73
    .line 2254
    :cond_9
    return v3

    #@74
    .line 2256
    :cond_a
    const/4 v1, 0x1

    #@75
    return v1
.end method

.method readData(Ljava/nio/ByteBuffer;)V
    .locals 22
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2263
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@3
    move-result v17

    #@4
    .line 2264
    .local v17, "magic":I
    const v20, 0x3845fdef

    #@7
    move/from16 v0, v17

    #@9
    move/from16 v1, v20

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 2265
    new-instance v20, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v21, "Bad Spoof Check Data."

    #@12
    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v20

    #@16
    .line 2268
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@19
    move-result v12

    #@1a
    .line 2270
    .local v12, "dataFormatVersion":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@1d
    move-result v13

    #@1e
    .line 2272
    .local v13, "dataLength":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@21
    move-result v2

    #@22
    .line 2273
    .local v2, "CFUKeysOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@25
    move-result v3

    #@26
    .line 2275
    .local v3, "CFUKeysSize":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@29
    move-result v8

    #@2a
    .line 2276
    .local v8, "CFUValuesOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@2d
    move-result v9

    #@2e
    .line 2278
    .local v9, "CFUValuesSize":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@31
    move-result v6

    #@32
    .line 2279
    .local v6, "CFUStringTableOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@35
    move-result v7

    #@36
    .line 2281
    .local v7, "CFUStringTableSize":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@39
    move-result v4

    #@3a
    .line 2282
    .local v4, "CFUStringLengthsOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@3d
    move-result v5

    #@3e
    .line 2284
    .local v5, "CFUStringLengthsSize":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@41
    move-result v10

    #@42
    .line 2286
    .local v10, "anyCaseTrieOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@45
    move-result v11

    #@46
    .line 2288
    .local v11, "anyCaseTrieSize":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@49
    move-result v16

    #@4a
    .line 2290
    .local v16, "lowerCaseTrieOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@4d
    move-result v15

    #@4e
    .line 2292
    .local v15, "lowerCaseTrieLength":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@51
    move-result v18

    #@52
    .line 2293
    .local v18, "scriptSetsOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@55
    move-result v19

    #@56
    .line 2296
    .local v19, "scriptSetslength":I
    const/16 v20, 0x0

    #@58
    move-object/from16 v0, v20

    #@5a
    move-object/from16 v1, p0

    #@5c
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@5e
    .line 2297
    const/16 v20, 0x0

    #@60
    move-object/from16 v0, v20

    #@62
    move-object/from16 v1, p0

    #@64
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    #@66
    .line 2298
    const/16 v20, 0x0

    #@68
    move-object/from16 v0, v20

    #@6a
    move-object/from16 v1, p0

    #@6c
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@6e
    .line 2299
    const/16 v20, 0x0

    #@70
    move-object/from16 v0, v20

    #@72
    move-object/from16 v1, p0

    #@74
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@76
    .line 2305
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    #@79
    .line 2306
    move-object/from16 v0, p1

    #@7b
    invoke-static {v0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@7e
    .line 2307
    const/16 v20, 0x0

    #@80
    move-object/from16 v0, p1

    #@82
    move/from16 v1, v20

    #@84
    invoke-static {v0, v3, v1}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    #@87
    move-result-object v20

    #@88
    move-object/from16 v0, v20

    #@8a
    move-object/from16 v1, p0

    #@8c
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@8e
    .line 2309
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    #@91
    .line 2310
    move-object/from16 v0, p1

    #@93
    invoke-static {v0, v8}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@96
    .line 2311
    const/16 v20, 0x0

    #@98
    move-object/from16 v0, p1

    #@9a
    move/from16 v1, v20

    #@9c
    invoke-static {v0, v9, v1}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    #@9f
    move-result-object v20

    #@a0
    move-object/from16 v0, v20

    #@a2
    move-object/from16 v1, p0

    #@a4
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    #@a6
    .line 2313
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    #@a9
    .line 2314
    move-object/from16 v0, p1

    #@ab
    invoke-static {v0, v6}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@ae
    .line 2315
    const/16 v20, 0x0

    #@b0
    move-object/from16 v0, p1

    #@b2
    move/from16 v1, v20

    #@b4
    invoke-static {v0, v7, v1}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    #@b7
    move-result-object v20

    #@b8
    move-object/from16 v0, v20

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@be
    .line 2317
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    #@c1
    .line 2318
    move-object/from16 v0, p1

    #@c3
    invoke-static {v0, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@c6
    .line 2319
    new-array v0, v5, [Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@c8
    move-object/from16 v20, v0

    #@ca
    move-object/from16 v0, v20

    #@cc
    move-object/from16 v1, p0

    #@ce
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@d0
    .line 2320
    const/4 v14, 0x0

    #@d1
    .local v14, "i":I
    :goto_0
    if-ge v14, v5, :cond_1

    #@d3
    .line 2321
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@d7
    move-object/from16 v20, v0

    #@d9
    new-instance v21, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@db
    invoke-direct/range {v21 .. v21}, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;-><init>()V

    #@de
    aput-object v21, v20, v14

    #@e0
    .line 2322
    move-object/from16 v0, p0

    #@e2
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@e4
    move-object/from16 v20, v0

    #@e6
    aget-object v20, v20, v14

    #@e8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@eb
    move-result v21

    #@ec
    move/from16 v0, v21

    #@ee
    move-object/from16 v1, v20

    #@f0
    iput v0, v1, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fLastString:I

    #@f2
    .line 2323
    move-object/from16 v0, p0

    #@f4
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@f6
    move-object/from16 v20, v0

    #@f8
    aget-object v20, v20, v14

    #@fa
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@fd
    move-result v21

    #@fe
    move/from16 v0, v21

    #@100
    move-object/from16 v1, v20

    #@102
    iput v0, v1, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fStrLength:I

    #@104
    .line 2320
    add-int/lit8 v14, v14, 0x1

    #@106
    goto :goto_0

    #@107
    .line 2326
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    #@10a
    .line 2327
    move-object/from16 v0, p1

    #@10c
    invoke-static {v0, v10}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@10f
    .line 2328
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/Trie2;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;

    #@112
    move-result-object v20

    #@113
    move-object/from16 v0, v20

    #@115
    move-object/from16 v1, p0

    #@117
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    #@119
    .line 2330
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    #@11c
    .line 2331
    move-object/from16 v0, p1

    #@11e
    move/from16 v1, v16

    #@120
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@123
    .line 2332
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/Trie2;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;

    #@126
    move-result-object v20

    #@127
    move-object/from16 v0, v20

    #@129
    move-object/from16 v1, p0

    #@12b
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    #@12d
    .line 2334
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    #@130
    .line 2335
    move-object/from16 v0, p1

    #@132
    move/from16 v1, v18

    #@134
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@137
    .line 2336
    move/from16 v0, v19

    #@139
    new-array v0, v0, [Landroid/icu/text/SpoofChecker$ScriptSet;

    #@13b
    move-object/from16 v20, v0

    #@13d
    move-object/from16 v0, v20

    #@13f
    move-object/from16 v1, p0

    #@141
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    #@143
    .line 2337
    const/4 v14, 0x0

    #@144
    :goto_1
    move/from16 v0, v19

    #@146
    if-ge v14, v0, :cond_2

    #@148
    .line 2338
    move-object/from16 v0, p0

    #@14a
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    #@14c
    move-object/from16 v20, v0

    #@14e
    new-instance v21, Landroid/icu/text/SpoofChecker$ScriptSet;

    #@150
    move-object/from16 v0, v21

    #@152
    move-object/from16 v1, p1

    #@154
    invoke-direct {v0, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>(Ljava/nio/ByteBuffer;)V

    #@157
    aput-object v21, v20, v14

    #@159
    .line 2337
    add-int/lit8 v14, v14, 0x1

    #@15b
    goto :goto_1

    #@15c
    .line 2262
    :cond_2
    return-void
.end method
