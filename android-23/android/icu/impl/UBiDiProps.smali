.class public final Landroid/icu/impl/UBiDiProps;
.super Ljava/lang/Object;
.source "UBiDiProps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UBiDiProps$IsAcceptable;
    }
.end annotation


# static fields
.field private static final BIDI_CONTROL_SHIFT:I = 0xb

.field private static final BPT_MASK:I = 0x300

.field private static final BPT_SHIFT:I = 0x8

.field private static final CLASS_MASK:I = 0x1f

.field private static final DATA_FILE_NAME:Ljava/lang/String; = "ubidi.icu"

.field private static final DATA_NAME:Ljava/lang/String; = "ubidi"

.field private static final DATA_TYPE:Ljava/lang/String; = "icu"

.field private static final ESC_MIRROR_DELTA:I = -0x4

.field private static final FMT:I = 0x42694469

.field public static final INSTANCE:Landroid/icu/impl/UBiDiProps;

.field private static final IS_MIRRORED_SHIFT:I = 0xc

.field private static final IX_JG_LIMIT:I = 0x5

.field private static final IX_JG_LIMIT2:I = 0x7

.field private static final IX_JG_START:I = 0x4

.field private static final IX_JG_START2:I = 0x6

.field private static final IX_MAX_VALUES:I = 0xf

.field private static final IX_MIRROR_LENGTH:I = 0x3

.field private static final IX_TOP:I = 0x10

.field private static final IX_TRIE_SIZE:I = 0x2

.field private static final JOIN_CONTROL_SHIFT:I = 0xa

.field private static final JT_MASK:I = 0xe0

.field private static final JT_SHIFT:I = 0x5

.field private static final MAX_JG_MASK:I = 0xff0000

.field private static final MAX_JG_SHIFT:I = 0x10

.field private static final MIRROR_DELTA_SHIFT:I = 0xd

.field private static final MIRROR_INDEX_SHIFT:I = 0x15


# instance fields
.field private indexes:[I

.field private jgArray:[B

.field private jgArray2:[B

.field private mirrors:[I

.field private trie:Landroid/icu/impl/Trie2_16;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 345
    :try_start_0
    new-instance v1, Landroid/icu/impl/UBiDiProps;

    #@2
    invoke-direct {v1}, Landroid/icu/impl/UBiDiProps;-><init>()V

    #@5
    sput-object v1, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 31
    return-void

    #@8
    .line 346
    :catch_0
    move-exception v0

    #@9
    .line 347
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    #@b
    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@e
    throw v1
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    const-string/jumbo v1, "ubidi.icu"

    #@6
    invoke-static {v1}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@9
    move-result-object v0

    #@a
    .line 37
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Landroid/icu/impl/UBiDiProps;->readData(Ljava/nio/ByteBuffer;)V

    #@d
    .line 35
    return-void
.end method

.method private static final getClassFromProps(I)I
    .locals 1
    .param p0, "props"    # I

    #@0
    .prologue
    .line 309
    and-int/lit8 v0, p0, 0x1f

    #@2
    return v0
.end method

.method private static final getFlagFromProps(II)Z
    .locals 2
    .param p0, "props"    # I
    .param p1, "shift"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 312
    shr-int v1, p0, p1

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private final getMirror(II)I
    .locals 7
    .param p1, "c"    # I
    .param p2, "props"    # I

    #@0
    .prologue
    .line 183
    invoke-static {p2}, Landroid/icu/impl/UBiDiProps;->getMirrorDeltaFromProps(I)I

    #@3
    move-result v1

    #@4
    .line 184
    .local v1, "delta":I
    const/4 v5, -0x4

    #@5
    if-eq v1, v5, :cond_0

    #@7
    .line 185
    add-int v5, p1, v1

    #@9
    return v5

    #@a
    .line 192
    :cond_0
    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@c
    const/4 v6, 0x3

    #@d
    aget v3, v5, v6

    #@f
    .line 195
    .local v3, "length":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@12
    .line 196
    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    #@14
    aget v4, v5, v2

    #@16
    .line 197
    .local v4, "m":I
    invoke-static {v4}, Landroid/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    #@19
    move-result v0

    #@1a
    .line 198
    .local v0, "c2":I
    if-ne p1, v0, :cond_1

    #@1c
    .line 200
    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    #@1e
    invoke-static {v4}, Landroid/icu/impl/UBiDiProps;->getMirrorIndex(I)I

    #@21
    move-result v6

    #@22
    aget v5, v5, v6

    #@24
    invoke-static {v5}, Landroid/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    #@27
    move-result v5

    #@28
    return v5

    #@29
    .line 201
    :cond_1
    if-ge p1, v0, :cond_3

    #@2b
    .line 207
    .end local v0    # "c2":I
    .end local v4    # "m":I
    :cond_2
    return p1

    #@2c
    .line 195
    .restart local v0    # "c2":I
    .restart local v4    # "m":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0
.end method

.method private static final getMirrorCodePoint(I)I
    .locals 1
    .param p0, "m"    # I

    #@0
    .prologue
    .line 329
    const v0, 0x1fffff

    #@3
    and-int/2addr v0, p0

    #@4
    return v0
.end method

.method private static final getMirrorDeltaFromProps(I)I
    .locals 1
    .param p0, "props"    # I

    #@0
    .prologue
    .line 315
    int-to-short v0, p0

    #@1
    shr-int/lit8 v0, v0, 0xd

    #@3
    return v0
.end method

.method private static final getMirrorIndex(I)I
    .locals 1
    .param p0, "m"    # I

    #@0
    .prologue
    .line 332
    ushr-int/lit8 v0, p0, 0x15

    #@2
    return v0
.end method

.method private readData(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 42
    new-instance v4, Landroid/icu/impl/UBiDiProps$IsAcceptable;

    #@3
    const/4 v5, 0x0

    #@4
    invoke-direct {v4, v5}, Landroid/icu/impl/UBiDiProps$IsAcceptable;-><init>(Landroid/icu/impl/UBiDiProps$IsAcceptable;)V

    #@7
    const v5, 0x42694469

    #@a
    invoke-static {p1, v5, v4}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@d
    .line 46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@10
    move-result v0

    #@11
    .line 47
    .local v0, "count":I
    const/16 v4, 0x10

    #@13
    if-ge v0, v4, :cond_0

    #@15
    .line 48
    new-instance v4, Ljava/io/IOException;

    #@17
    const-string/jumbo v5, "indexes[0] too small in ubidi.icu"

    #@1a
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v4

    #@1e
    .line 50
    :cond_0
    new-array v4, v0, [I

    #@20
    iput-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@22
    .line 52
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@24
    aput v0, v4, v6

    #@26
    .line 53
    const/4 v2, 0x1

    #@27
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@29
    .line 54
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@2b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@2e
    move-result v5

    #@2f
    aput v5, v4, v2

    #@31
    .line 53
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 58
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    #@37
    move-result-object v4

    #@38
    iput-object v4, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    #@3a
    .line 59
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@3c
    const/4 v5, 0x2

    #@3d
    aget v1, v4, v5

    #@3f
    .line 60
    .local v1, "expectedTrieLength":I
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    #@41
    invoke-virtual {v4}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    #@44
    move-result v3

    #@45
    .line 61
    .local v3, "trieLength":I
    if-le v3, v1, :cond_2

    #@47
    .line 62
    new-instance v4, Ljava/io/IOException;

    #@49
    const-string/jumbo v5, "ubidi.icu: not enough bytes for the trie"

    #@4c
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v4

    #@50
    .line 65
    :cond_2
    sub-int v4, v1, v3

    #@52
    invoke-static {p1, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@55
    .line 68
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@57
    const/4 v5, 0x3

    #@58
    aget v0, v4, v5

    #@5a
    .line 69
    if-lez v0, :cond_3

    #@5c
    .line 70
    new-array v4, v0, [I

    #@5e
    iput-object v4, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    #@60
    .line 71
    const/4 v2, 0x0

    #@61
    :goto_1
    if-ge v2, v0, :cond_3

    #@63
    .line 72
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    #@65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@68
    move-result v5

    #@69
    aput v5, v4, v2

    #@6b
    .line 71
    add-int/lit8 v2, v2, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 77
    :cond_3
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@70
    const/4 v5, 0x5

    #@71
    aget v4, v4, v5

    #@73
    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@75
    const/4 v6, 0x4

    #@76
    aget v5, v5, v6

    #@78
    sub-int v0, v4, v5

    #@7a
    .line 78
    new-array v4, v0, [B

    #@7c
    iput-object v4, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    #@7e
    .line 79
    const/4 v2, 0x0

    #@7f
    :goto_2
    if-ge v2, v0, :cond_4

    #@81
    .line 80
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    #@83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@86
    move-result v5

    #@87
    aput-byte v5, v4, v2

    #@89
    .line 79
    add-int/lit8 v2, v2, 0x1

    #@8b
    goto :goto_2

    #@8c
    .line 84
    :cond_4
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@8e
    const/4 v5, 0x7

    #@8f
    aget v4, v4, v5

    #@91
    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@93
    const/4 v6, 0x6

    #@94
    aget v5, v5, v6

    #@96
    sub-int v0, v4, v5

    #@98
    .line 85
    new-array v4, v0, [B

    #@9a
    iput-object v4, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    #@9c
    .line 86
    const/4 v2, 0x0

    #@9d
    :goto_3
    if-ge v2, v0, :cond_5

    #@9f
    .line 87
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    #@a1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@a4
    move-result v5

    #@a5
    aput-byte v5, v4, v2

    #@a7
    .line 86
    add-int/lit8 v2, v2, 0x1

    #@a9
    goto :goto_3

    #@aa
    .line 40
    :cond_5
    return-void
.end method


# virtual methods
.method public final addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 13
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    const/4 v12, 0x5

    #@1
    .line 107
    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    #@3
    invoke-virtual {v10}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v9

    #@7
    .line 109
    .local v9, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v10

    #@b
    if-eqz v10, :cond_0

    #@d
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v7

    #@11
    check-cast v7, Landroid/icu/impl/Trie2$Range;

    #@13
    .local v7, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v10, v7, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@15
    if-eqz v10, :cond_1

    #@17
    .line 114
    .end local v7    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_0
    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@19
    const/4 v11, 0x3

    #@1a
    aget v4, v10, v11

    #@1c
    .line 115
    .local v4, "length":I
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    #@1f
    .line 116
    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    #@21
    aget v10, v10, v1

    #@23
    invoke-static {v10}, Landroid/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    #@26
    move-result v0

    #@27
    .line 117
    .local v0, "c":I
    add-int/lit8 v10, v0, 0x1

    #@29
    invoke-virtual {p1, v0, v10}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@2c
    .line 115
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 110
    .end local v0    # "c":I
    .end local v1    # "i":I
    .end local v4    # "length":I
    .restart local v7    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_1
    iget v10, v7, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@31
    invoke-virtual {p1, v10}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@34
    goto :goto_0

    #@35
    .line 121
    .end local v7    # "range":Landroid/icu/impl/Trie2$Range;
    .restart local v1    # "i":I
    .restart local v4    # "length":I
    :cond_2
    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@37
    const/4 v11, 0x4

    #@38
    aget v8, v10, v11

    #@3a
    .line 122
    .local v8, "start":I
    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@3c
    aget v5, v10, v12

    #@3e
    .line 123
    .local v5, "limit":I
    iget-object v3, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    #@40
    .line 125
    .local v3, "jga":[B
    :goto_2
    sub-int v4, v5, v8

    #@42
    .line 126
    const/4 v6, 0x0

    #@43
    .line 127
    .local v6, "prev":B
    const/4 v1, 0x0

    #@44
    .end local v6    # "prev":B
    :goto_3
    if-ge v1, v4, :cond_4

    #@46
    .line 128
    aget-byte v2, v3, v1

    #@48
    .line 129
    .local v2, "jg":B
    if-eq v2, v6, :cond_3

    #@4a
    .line 130
    invoke-virtual {p1, v8}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@4d
    .line 131
    move v6, v2

    #@4e
    .line 133
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@50
    .line 127
    add-int/lit8 v1, v1, 0x1

    #@52
    goto :goto_3

    #@53
    .line 135
    .end local v2    # "jg":B
    :cond_4
    if-eqz v6, :cond_5

    #@55
    .line 137
    invoke-virtual {p1, v5}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@58
    .line 139
    :cond_5
    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@5a
    aget v10, v10, v12

    #@5c
    if-ne v5, v10, :cond_6

    #@5e
    .line 141
    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@60
    const/4 v11, 0x6

    #@61
    aget v8, v10, v11

    #@63
    .line 142
    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@65
    const/4 v11, 0x7

    #@66
    aget v5, v10, v11

    #@68
    .line 143
    iget-object v3, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    #@6a
    goto :goto_2

    #@6b
    .line 100
    :cond_6
    return-void
.end method

.method public final getClass(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Landroid/icu/impl/UBiDiProps;->getClassFromProps(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getJoiningGroup(I)I
    .locals 4
    .param p1, "c"    # I

    #@0
    .prologue
    .line 231
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@2
    const/4 v3, 0x4

    #@3
    aget v1, v2, v3

    #@5
    .line 232
    .local v1, "start":I
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@7
    const/4 v3, 0x5

    #@8
    aget v0, v2, v3

    #@a
    .line 233
    .local v0, "limit":I
    if-gt v1, p1, :cond_0

    #@c
    if-ge p1, v0, :cond_0

    #@e
    .line 234
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    #@10
    sub-int v3, p1, v1

    #@12
    aget-byte v2, v2, v3

    #@14
    and-int/lit16 v2, v2, 0xff

    #@16
    return v2

    #@17
    .line 236
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@19
    const/4 v3, 0x6

    #@1a
    aget v1, v2, v3

    #@1c
    .line 237
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@1e
    const/4 v3, 0x7

    #@1f
    aget v0, v2, v3

    #@21
    .line 238
    if-gt v1, p1, :cond_1

    #@23
    if-ge p1, v0, :cond_1

    #@25
    .line 239
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    #@27
    sub-int v3, p1, v1

    #@29
    aget-byte v2, v2, v3

    #@2b
    and-int/lit16 v2, v2, 0xff

    #@2d
    return v2

    #@2e
    .line 241
    :cond_1
    const/4 v2, 0x0

    #@2f
    return v2
.end method

.method public final getJoiningType(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    and-int/lit16 v0, v0, 0xe0

    #@8
    shr-int/lit8 v0, v0, 0x5

    #@a
    return v0
.end method

.method public final getMaxValue(I)I
    .locals 3
    .param p1, "which"    # I

    #@0
    .prologue
    .line 159
    iget-object v1, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    #@2
    const/16 v2, 0xf

    #@4
    aget v0, v1, v2

    #@6
    .line 160
    .local v0, "max":I
    sparse-switch p1, :sswitch_data_0

    #@9
    .line 170
    const/4 v1, -0x1

    #@a
    return v1

    #@b
    .line 162
    :sswitch_0
    and-int/lit8 v1, v0, 0x1f

    #@d
    return v1

    #@e
    .line 164
    :sswitch_1
    const/high16 v1, 0xff0000

    #@10
    and-int/2addr v1, v0

    #@11
    shr-int/lit8 v1, v1, 0x10

    #@13
    return v1

    #@14
    .line 166
    :sswitch_2
    and-int/lit16 v1, v0, 0xe0

    #@16
    shr-int/lit8 v1, v1, 0x5

    #@18
    return v1

    #@19
    .line 168
    :sswitch_3
    and-int/lit16 v1, v0, 0x300

    #@1b
    shr-int/lit8 v1, v1, 0x8

    #@1d
    return v1

    #@1e
    .line 160
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x1006 -> :sswitch_1
        0x1007 -> :sswitch_2
        0x1015 -> :sswitch_3
    .end sparse-switch
.end method

.method public final getMirror(I)I
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 212
    iget-object v1, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    .line 213
    .local v0, "props":I
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UBiDiProps;->getMirror(II)I

    #@9
    move-result v1

    #@a
    return v1
.end method

.method public final getPairedBracket(I)I
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 249
    iget-object v1, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    .line 250
    .local v0, "props":I
    and-int/lit16 v1, v0, 0x300

    #@8
    if-nez v1, :cond_0

    #@a
    .line 251
    return p1

    #@b
    .line 253
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UBiDiProps;->getMirror(II)I

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public final getPairedBracketType(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    and-int/lit16 v0, v0, 0x300

    #@8
    shr-int/lit8 v0, v0, 0x8

    #@a
    return v0
.end method

.method public final isBidiControl(I)Z
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    const/16 v1, 0xb

    #@8
    invoke-static {v0, v1}, Landroid/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public final isJoinControl(I)Z
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    const/16 v1, 0xa

    #@8
    invoke-static {v0, v1}, Landroid/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public final isMirrored(I)Z
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    const/16 v1, 0xc

    #@8
    invoke-static {v0, v1}, Landroid/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    #@b
    move-result v0

    #@c
    return v0
.end method
