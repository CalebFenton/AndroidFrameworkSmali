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
.field private static final greylist-max-o BIDI_CONTROL_SHIFT:I = 0xb

.field private static final greylist-max-o BPT_MASK:I = 0x300

.field private static final greylist-max-o BPT_SHIFT:I = 0x8

.field private static final greylist-max-o CLASS_MASK:I = 0x1f

.field private static final greylist-max-o DATA_FILE_NAME:Ljava/lang/String; = "ubidi.icu"

.field private static final greylist-max-o DATA_NAME:Ljava/lang/String; = "ubidi"

.field private static final greylist-max-o DATA_TYPE:Ljava/lang/String; = "icu"

.field private static final greylist-max-o ESC_MIRROR_DELTA:I = -0x4

.field private static final greylist-max-o FMT:I = 0x42694469

.field public static final blacklist INSTANCE:Landroid/icu/impl/UBiDiProps;

.field private static final greylist-max-o IS_MIRRORED_SHIFT:I = 0xc

.field private static final greylist-max-o IX_JG_LIMIT:I = 0x5

.field private static final greylist-max-o IX_JG_LIMIT2:I = 0x7

.field private static final greylist-max-o IX_JG_START:I = 0x4

.field private static final greylist-max-o IX_JG_START2:I = 0x6

.field private static final greylist-max-o IX_MAX_VALUES:I = 0xf

.field private static final greylist-max-o IX_MIRROR_LENGTH:I = 0x3

.field private static final greylist-max-o IX_TOP:I = 0x10

.field private static final greylist-max-o IX_TRIE_SIZE:I = 0x2

.field private static final greylist-max-o JOIN_CONTROL_SHIFT:I = 0xa

.field private static final greylist-max-o JT_MASK:I = 0xe0

.field private static final greylist-max-o JT_SHIFT:I = 0x5

.field private static final greylist-max-o MAX_JG_MASK:I = 0xff0000

.field private static final greylist-max-o MAX_JG_SHIFT:I = 0x10

.field private static final greylist-max-o MIRROR_DELTA_SHIFT:I = 0xd

.field private static final greylist-max-o MIRROR_INDEX_SHIFT:I = 0x15


# instance fields
.field private greylist-max-o indexes:[I

.field private greylist-max-o jgArray:[B

.field private greylist-max-o jgArray2:[B

.field private greylist-max-o mirrors:[I

.field private greylist-max-o trie:Landroid/icu/impl/Trie2_16;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 345
    :try_start_0
    new-instance v0, Landroid/icu/impl/UBiDiProps;

    invoke-direct {v0}, Landroid/icu/impl/UBiDiProps;-><init>()V

    sput-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    .line 348
    nop

    .line 349
    return-void

    .line 346
    :catch_9
    move-exception v0

    .line 347
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "ubidi.icu"

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Landroid/icu/impl/UBiDiProps;->readData(Ljava/nio/ByteBuffer;)V

    .line 44
    return-void
.end method

.method private static final greylist-max-o getClassFromProps(I)I
    .registers 2
    .param p0, "props"    # I

    .line 309
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method private static final greylist-max-o getFlagFromProps(II)Z
    .registers 4
    .param p0, "props"    # I
    .param p1, "shift"    # I

    .line 312
    shr-int v0, p0, p1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method private final greylist-max-o getMirror(II)I
    .registers 10
    .param p1, "c"    # I
    .param p2, "props"    # I

    .line 183
    invoke-static {p2}, Landroid/icu/impl/UBiDiProps;->getMirrorDeltaFromProps(I)I

    move-result v0

    .line 184
    .local v0, "delta":I
    const/4 v1, -0x4

    if-eq v0, v1, :cond_a

    .line 185
    add-int v1, p1, v0

    return v1

    .line 192
    :cond_a
    iget-object v1, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    .line 195
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_2f

    .line 196
    iget-object v3, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    aget v3, v3, v2

    .line 197
    .local v3, "m":I
    invoke-static {v3}, Landroid/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    move-result v4

    .line 198
    .local v4, "c2":I
    if-ne p1, v4, :cond_29

    .line 200
    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    invoke-static {v3}, Landroid/icu/impl/UBiDiProps;->getMirrorIndex(I)I

    move-result v6

    aget v5, v5, v6

    invoke-static {v5}, Landroid/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    move-result v5

    return v5

    .line 201
    :cond_29
    if-ge p1, v4, :cond_2c

    .line 202
    goto :goto_2f

    .line 195
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 207
    .end local v3    # "m":I
    .end local v4    # "c2":I
    :cond_2f
    :goto_2f
    return p1
.end method

.method private static final greylist-max-o getMirrorCodePoint(I)I
    .registers 2
    .param p0, "m"    # I

    .line 329
    const v0, 0x1fffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static final greylist-max-o getMirrorDeltaFromProps(I)I
    .registers 2
    .param p0, "props"    # I

    .line 315
    int-to-short v0, p0

    shr-int/lit8 v0, v0, 0xd

    return v0
.end method

.method private static final greylist-max-o getMirrorIndex(I)I
    .registers 2
    .param p0, "m"    # I

    .line 332
    ushr-int/lit8 v0, p0, 0x15

    return v0
.end method

.method private greylist-max-o readData(Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/icu/impl/UBiDiProps$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/UBiDiProps$IsAcceptable;-><init>(Landroid/icu/impl/UBiDiProps-IA;)V

    const v1, 0x42694469

    invoke-static {p1, v1, v0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 53
    .local v0, "count":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_81

    .line 56
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    .line 58
    iget-object v1, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 59
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_2b

    .line 60
    iget-object v3, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v3, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 64
    :cond_2b
    invoke-static {p1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    .line 65
    iget-object v3, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    .line 66
    .local v3, "expectedTrieLength":I
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v4}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v4

    .line 67
    .local v4, "trieLength":I
    if-gt v4, v3, :cond_79

    .line 71
    sub-int v5, v3, v4

    invoke-static {p1, v5}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 74
    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v6, 0x3

    aget v0, v5, v6

    .line 75
    if-lez v0, :cond_50

    .line 76
    invoke-static {p1, v0, v2}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    .line 80
    :cond_50
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v5, 0x5

    aget v2, v2, v5

    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    sub-int/2addr v2, v5

    .line 81
    .end local v0    # "count":I
    .local v2, "count":I
    new-array v0, v2, [B

    iput-object v0, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    .line 82
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 85
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v5, 0x7

    aget v0, v0, v5

    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    sub-int/2addr v0, v5

    .line 86
    .end local v2    # "count":I
    .restart local v0    # "count":I
    new-array v2, v0, [B

    iput-object v2, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    .line 87
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 88
    return-void

    .line 68
    :cond_79
    new-instance v2, Ljava/io/IOException;

    const-string v5, "ubidi.icu: not enough bytes for the trie"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    .end local v1    # "i":I
    .end local v3    # "expectedTrieLength":I
    .end local v4    # "trieLength":I
    :cond_81
    new-instance v1, Ljava/io/IOException;

    const-string v2, "indexes[0] too small in ubidi.icu"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final blacklist addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .registers 12
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 107
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 109
    .local v0, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    move-object v2, v1

    .local v2, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v1, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_1d

    .line 110
    iget v1, v2, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_6

    .line 114
    .end local v2    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_1d
    iget-object v1, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    .line 115
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    if-ge v2, v1, :cond_35

    .line 116
    iget-object v3, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    aget v3, v3, v2

    invoke-static {v3}, Landroid/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    move-result v3

    .line 117
    .local v3, "c":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 121
    .end local v3    # "c":I
    :cond_35
    iget-object v3, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    .line 122
    .local v3, "start":I
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    .line 123
    .local v4, "limit":I
    iget-object v6, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    .line 125
    .local v6, "jga":[B
    :goto_41
    sub-int v1, v4, v3

    .line 126
    const/4 v7, 0x0

    .line 127
    .local v7, "prev":B
    const/4 v2, 0x0

    :goto_45
    if-ge v2, v1, :cond_54

    .line 128
    aget-byte v8, v6, v2

    .line 129
    .local v8, "jg":B
    if-eq v8, v7, :cond_4f

    .line 130
    invoke-virtual {p1, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 131
    move v7, v8

    .line 133
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 135
    .end local v8    # "jg":B
    :cond_54
    if-eqz v7, :cond_59

    .line 137
    invoke-virtual {p1, v4}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 139
    :cond_59
    iget-object v8, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    aget v8, v8, v5

    if-ne v4, v8, :cond_6c

    .line 141
    iget-object v8, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v9, 0x6

    aget v3, v8, v9

    .line 142
    iget-object v8, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v9, 0x7

    aget v4, v8, v9

    .line 143
    iget-object v6, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    goto :goto_41

    .line 152
    :cond_6c
    return-void
.end method

.method public final blacklist getClass(I)I
    .registers 3
    .param p1, "c"    # I

    .line 175
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UBiDiProps;->getClassFromProps(I)I

    move-result v0

    return v0
.end method

.method public final blacklist getJoiningGroup(I)I
    .registers 6
    .param p1, "c"    # I

    .line 231
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    .line 232
    .local v0, "start":I
    iget-object v1, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    .line 233
    .local v1, "limit":I
    if-gt v0, p1, :cond_17

    if-ge p1, v1, :cond_17

    .line 234
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    sub-int v3, p1, v0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    return v2

    .line 236
    :cond_17
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v3, 0x6

    aget v0, v2, v3

    .line 237
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v3, 0x7

    aget v1, v2, v3

    .line 238
    if-gt v0, p1, :cond_2e

    if-ge p1, v1, :cond_2e

    .line 239
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    sub-int v3, p1, v0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    return v2

    .line 241
    :cond_2e
    const/4 v2, 0x0

    return v2
.end method

.method public final blacklist getJoiningType(I)I
    .registers 3
    .param p1, "c"    # I

    .line 225
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xe0

    shr-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public final blacklist getMaxValue(I)I
    .registers 4
    .param p1, "which"    # I

    .line 159
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/16 v1, 0xf

    aget v0, v0, v1

    .line 160
    .local v0, "max":I
    sparse-switch p1, :sswitch_data_1e

    .line 170
    const/4 v1, -0x1

    return v1

    .line 168
    :sswitch_b
    and-int/lit16 v1, v0, 0x300

    shr-int/lit8 v1, v1, 0x8

    return v1

    .line 166
    :sswitch_10
    and-int/lit16 v1, v0, 0xe0

    shr-int/lit8 v1, v1, 0x5

    return v1

    .line 164
    :sswitch_15
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x10

    return v1

    .line 162
    :sswitch_1b
    and-int/lit8 v1, v0, 0x1f

    return v1

    :sswitch_data_1e
    .sparse-switch
        0x1000 -> :sswitch_1b
        0x1006 -> :sswitch_15
        0x1007 -> :sswitch_10
        0x1015 -> :sswitch_b
    .end sparse-switch
.end method

.method public final blacklist getMirror(I)I
    .registers 4
    .param p1, "c"    # I

    .line 212
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 213
    .local v0, "props":I
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UBiDiProps;->getMirror(II)I

    move-result v1

    return v1
.end method

.method public final blacklist getPairedBracket(I)I
    .registers 4
    .param p1, "c"    # I

    .line 249
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 250
    .local v0, "props":I
    and-int/lit16 v1, v0, 0x300

    if-nez v1, :cond_b

    .line 251
    return p1

    .line 253
    :cond_b
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UBiDiProps;->getMirror(II)I

    move-result v1

    return v1
.end method

.method public final blacklist getPairedBracketType(I)I
    .registers 3
    .param p1, "c"    # I

    .line 245
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x300

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final blacklist isBidiControl(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 217
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result v0

    return v0
.end method

.method public final blacklist isJoinControl(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 221
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result v0

    return v0
.end method

.method public final blacklist isMirrored(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 179
    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Landroid/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result v0

    return v0
.end method
