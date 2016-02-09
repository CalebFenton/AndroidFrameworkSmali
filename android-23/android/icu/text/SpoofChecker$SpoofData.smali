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
        Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;,
        Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;,
        Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;
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
    .line 2194
    new-instance v0, Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;-><init>(Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;)V

    #@6
    sput-object v0, Landroid/icu/text/SpoofChecker$SpoofData;->IS_ACCEPTABLE:Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    #@8
    .line 2160
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2216
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
    .line 2221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2222
    sget-object v0, Landroid/icu/text/SpoofChecker$SpoofData;->IS_ACCEPTABLE:Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    #@5
    const v1, 0x43667520

    #@8
    invoke-static {p1, v1, v0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@b
    .line 2223
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    #@e
    .line 2224
    invoke-virtual {p0, p1}, Landroid/icu/text/SpoofChecker$SpoofData;->readData(Ljava/nio/ByteBuffer;)V

    #@11
    .line 2221
    return-void
.end method

.method static getDefault()Landroid/icu/text/SpoofChecker$SpoofData;
    .locals 1

    #@0
    .prologue
    .line 2211
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
    .line 2228
    instance-of v1, p1, Landroid/icu/text/SpoofChecker$SpoofData;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2229
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 2231
    check-cast v0, Landroid/icu/text/SpoofChecker$SpoofData;

    #@9
    .line 2232
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
    .line 2233
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
    .line 2234
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
    .line 2235
    :cond_3
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@2c
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@2e
    if-eq v1, v2, :cond_4

    #@30
    .line 2236
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@32
    if-eqz v1, :cond_4

    #@34
    .line 2237
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
    .line 2238
    :cond_4
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    #@40
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    #@42
    if-eq v1, v2, :cond_5

    #@44
    .line 2239
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    #@46
    if-eqz v1, :cond_5

    #@48
    .line 2240
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
    .line 2241
    :cond_5
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    #@54
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    #@56
    if-eq v1, v2, :cond_6

    #@58
    .line 2242
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    #@5a
    if-eqz v1, :cond_6

    #@5c
    .line 2243
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
    .line 2244
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
    .line 2237
    :cond_7
    return v3

    #@72
    .line 2240
    :cond_8
    return v3

    #@73
    .line 2243
    :cond_9
    return v3

    #@74
    .line 2245
    :cond_a
    const/4 v1, 0x1

    #@75
    return v1
.end method

.method readData(Ljava/nio/ByteBuffer;)V
    .locals 23
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2252
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@3
    move-result v18

    #@4
    .line 2253
    .local v18, "magic":I
    const v21, 0x3845fdef

    #@7
    move/from16 v0, v18

    #@9
    move/from16 v1, v21

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 2254
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v22, "Bad Spoof Check Data."

    #@12
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v21

    #@16
    .line 2257
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@19
    move-result v13

    #@1a
    .line 2259
    .local v13, "dataFormatVersion":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@1d
    move-result v14

    #@1e
    .line 2261
    .local v14, "dataLength":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@21
    move-result v2

    #@22
    .line 2262
    .local v2, "CFUKeysOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@25
    move-result v3

    #@26
    .line 2264
    .local v3, "CFUKeysSize":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@29
    move-result v9

    #@2a
    .line 2265
    .local v9, "CFUValuesOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@2d
    move-result v10

    #@2e
    .line 2267
    .local v10, "CFUValuesSize":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@31
    move-result v7

    #@32
    .line 2268
    .local v7, "CFUStringTableOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@35
    move-result v8

    #@36
    .line 2270
    .local v8, "CFUStringTableSize":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@39
    move-result v5

    #@3a
    .line 2271
    .local v5, "CFUStringLengthsOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@3d
    move-result v6

    #@3e
    .line 2273
    .local v6, "CFUStringLengthsSize":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@41
    move-result v11

    #@42
    .line 2275
    .local v11, "anyCaseTrieOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@45
    move-result v12

    #@46
    .line 2277
    .local v12, "anyCaseTrieSize":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@49
    move-result v17

    #@4a
    .line 2279
    .local v17, "lowerCaseTrieOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@4d
    move-result v16

    #@4e
    .line 2281
    .local v16, "lowerCaseTrieLength":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@51
    move-result v19

    #@52
    .line 2282
    .local v19, "scriptSetsOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@55
    move-result v20

    #@56
    .line 2285
    .local v20, "scriptSetslength":I
    const/16 v21, 0x0

    #@58
    move-object/from16 v0, v21

    #@5a
    move-object/from16 v1, p0

    #@5c
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@5e
    .line 2286
    const/16 v21, 0x0

    #@60
    move-object/from16 v0, v21

    #@62
    move-object/from16 v1, p0

    #@64
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    #@66
    .line 2287
    const/16 v21, 0x0

    #@68
    move-object/from16 v0, v21

    #@6a
    move-object/from16 v1, p0

    #@6c
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@6e
    .line 2288
    const/16 v21, 0x0

    #@70
    move-object/from16 v0, v21

    #@72
    move-object/from16 v1, p0

    #@74
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@76
    .line 2294
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@79
    .line 2295
    move-object/from16 v0, p1

    #@7b
    invoke-static {v0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@7e
    .line 2296
    new-array v0, v3, [I

    #@80
    move-object/from16 v21, v0

    #@82
    move-object/from16 v0, v21

    #@84
    move-object/from16 v1, p0

    #@86
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@88
    .line 2297
    const/4 v15, 0x0

    #@89
    .local v15, "i":I
    :goto_0
    if-ge v15, v3, :cond_1

    #@8b
    .line 2298
    move-object/from16 v0, p0

    #@8d
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@8f
    move-object/from16 v21, v0

    #@91
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@94
    move-result v22

    #@95
    aput v22, v21, v15

    #@97
    .line 2297
    add-int/lit8 v15, v15, 0x1

    #@99
    goto :goto_0

    #@9a
    .line 2301
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@9d
    .line 2302
    move-object/from16 v0, p1

    #@9f
    invoke-static {v0, v9}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@a2
    .line 2303
    new-array v0, v10, [S

    #@a4
    move-object/from16 v21, v0

    #@a6
    move-object/from16 v0, v21

    #@a8
    move-object/from16 v1, p0

    #@aa
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    #@ac
    .line 2304
    const/4 v15, 0x0

    #@ad
    :goto_1
    if-ge v15, v10, :cond_2

    #@af
    .line 2305
    move-object/from16 v0, p0

    #@b1
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    #@b3
    move-object/from16 v21, v0

    #@b5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@b8
    move-result v22

    #@b9
    aput-short v22, v21, v15

    #@bb
    .line 2304
    add-int/lit8 v15, v15, 0x1

    #@bd
    goto :goto_1

    #@be
    .line 2308
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@c1
    .line 2309
    move-object/from16 v0, p1

    #@c3
    invoke-static {v0, v7}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@c6
    .line 2310
    new-instance v4, Ljava/lang/StringBuffer;

    #@c8
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@cb
    .line 2311
    .local v4, "CFUStringB":Ljava/lang/StringBuffer;
    const/4 v15, 0x0

    #@cc
    :goto_2
    if-ge v15, v8, :cond_3

    #@ce
    .line 2312
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@d1
    move-result v21

    #@d2
    move/from16 v0, v21

    #@d4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@d7
    .line 2311
    add-int/lit8 v15, v15, 0x1

    #@d9
    goto :goto_2

    #@da
    .line 2314
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@dd
    move-result-object v21

    #@de
    move-object/from16 v0, v21

    #@e0
    move-object/from16 v1, p0

    #@e2
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@e4
    .line 2316
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@e7
    .line 2317
    move-object/from16 v0, p1

    #@e9
    invoke-static {v0, v5}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@ec
    .line 2318
    new-array v0, v6, [Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@ee
    move-object/from16 v21, v0

    #@f0
    move-object/from16 v0, v21

    #@f2
    move-object/from16 v1, p0

    #@f4
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@f6
    .line 2319
    const/4 v15, 0x0

    #@f7
    :goto_3
    if-ge v15, v6, :cond_4

    #@f9
    .line 2320
    move-object/from16 v0, p0

    #@fb
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@fd
    move-object/from16 v21, v0

    #@ff
    new-instance v22, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@101
    invoke-direct/range {v22 .. v22}, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;-><init>()V

    #@104
    aput-object v22, v21, v15

    #@106
    .line 2321
    move-object/from16 v0, p0

    #@108
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@10a
    move-object/from16 v21, v0

    #@10c
    aget-object v21, v21, v15

    #@10e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@111
    move-result v22

    #@112
    move/from16 v0, v22

    #@114
    move-object/from16 v1, v21

    #@116
    iput v0, v1, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fLastString:I

    #@118
    .line 2322
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@11c
    move-object/from16 v21, v0

    #@11e
    aget-object v21, v21, v15

    #@120
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@123
    move-result v22

    #@124
    move/from16 v0, v22

    #@126
    move-object/from16 v1, v21

    #@128
    iput v0, v1, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fStrLength:I

    #@12a
    .line 2319
    add-int/lit8 v15, v15, 0x1

    #@12c
    goto :goto_3

    #@12d
    .line 2325
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@130
    .line 2326
    move-object/from16 v0, p1

    #@132
    invoke-static {v0, v11}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@135
    .line 2327
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/Trie2;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;

    #@138
    move-result-object v21

    #@139
    move-object/from16 v0, v21

    #@13b
    move-object/from16 v1, p0

    #@13d
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    #@13f
    .line 2329
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@142
    .line 2330
    move-object/from16 v0, p1

    #@144
    move/from16 v1, v17

    #@146
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@149
    .line 2331
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/Trie2;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;

    #@14c
    move-result-object v21

    #@14d
    move-object/from16 v0, v21

    #@14f
    move-object/from16 v1, p0

    #@151
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    #@153
    .line 2333
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@156
    .line 2334
    move-object/from16 v0, p1

    #@158
    move/from16 v1, v19

    #@15a
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@15d
    .line 2335
    move/from16 v0, v20

    #@15f
    new-array v0, v0, [Landroid/icu/text/SpoofChecker$ScriptSet;

    #@161
    move-object/from16 v21, v0

    #@163
    move-object/from16 v0, v21

    #@165
    move-object/from16 v1, p0

    #@167
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    #@169
    .line 2336
    const/4 v15, 0x0

    #@16a
    :goto_4
    move/from16 v0, v20

    #@16c
    if-ge v15, v0, :cond_5

    #@16e
    .line 2337
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    #@172
    move-object/from16 v21, v0

    #@174
    new-instance v22, Landroid/icu/text/SpoofChecker$ScriptSet;

    #@176
    move-object/from16 v0, v22

    #@178
    move-object/from16 v1, p1

    #@17a
    invoke-direct {v0, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>(Ljava/nio/ByteBuffer;)V

    #@17d
    aput-object v22, v21, v15

    #@17f
    .line 2336
    add-int/lit8 v15, v15, 0x1

    #@181
    goto :goto_4

    #@182
    .line 2251
    :cond_5
    return-void
.end method
