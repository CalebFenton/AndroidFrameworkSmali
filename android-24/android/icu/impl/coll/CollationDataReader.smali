.class final Landroid/icu/impl/coll/CollationDataReader;
.super Ljava/lang/Object;
.source "CollationDataReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DATA_FORMAT:I = 0x55436f6c

.field private static final IS_ACCEPTABLE:Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

.field static final IX_CE32S_OFFSET:I = 0xb

.field static final IX_CES_OFFSET:I = 0x9

.field static final IX_COMPRESSIBLE_BYTES_OFFSET:I = 0x11

.field static final IX_CONTEXTS_OFFSET:I = 0xd

.field static final IX_FAST_LATIN_TABLE_OFFSET:I = 0xf

.field static final IX_INDEXES_LENGTH:I = 0x0

.field static final IX_JAMO_CE32S_START:I = 0x4

.field static final IX_OPTIONS:I = 0x1

.field static final IX_REORDER_CODES_OFFSET:I = 0x5

.field static final IX_REORDER_TABLE_OFFSET:I = 0x6

.field static final IX_RESERVED10_OFFSET:I = 0xa

.field static final IX_RESERVED18_OFFSET:I = 0x12

.field static final IX_RESERVED2:I = 0x2

.field static final IX_RESERVED3:I = 0x3

.field static final IX_RESERVED8_OFFSET:I = 0x8

.field static final IX_ROOT_ELEMENTS_OFFSET:I = 0xc

.field static final IX_SCRIPTS_OFFSET:I = 0x10

.field static final IX_TOTAL_SIZE:I = 0x13

.field static final IX_TRIE_OFFSET:I = 0x7

.field static final IX_UNSAFE_BWD_OFFSET:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationDataReader;

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
    sput-boolean v0, Landroid/icu/impl/coll/CollationDataReader;->-assertionsDisabled:Z

    #@b
    .line 498
    new-instance v0, Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;-><init>(Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;)V

    #@11
    sput-object v0, Landroid/icu/impl/coll/CollationDataReader;->IS_ACCEPTABLE:Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

    #@13
    .line 30
    return-void

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static read(Landroid/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Landroid/icu/impl/coll/CollationTailoring;)V
    .locals 50
    .param p0, "base"    # Landroid/icu/impl/coll/CollationTailoring;
    .param p1, "inBytes"    # Ljava/nio/ByteBuffer;
    .param p2, "tailoring"    # Landroid/icu/impl/coll/CollationTailoring;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    sget-object v43, Landroid/icu/impl/coll/CollationDataReader;->IS_ACCEPTABLE:Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

    #@2
    const v44, 0x55436f6c

    #@5
    move-object/from16 v0, p1

    #@7
    move/from16 v1, v44

    #@9
    move-object/from16 v2, v43

    #@b
    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@e
    move-result v43

    #@f
    move/from16 v0, v43

    #@11
    move-object/from16 v1, p2

    #@13
    iput v0, v1, Landroid/icu/impl/coll/CollationTailoring;->version:I

    #@15
    .line 101
    if-eqz p0, :cond_0

    #@17
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationTailoring;->getUCAVersion()I

    #@1a
    move-result v43

    #@1b
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationTailoring;->getUCAVersion()I

    #@1e
    move-result v44

    #@1f
    move/from16 v0, v43

    #@21
    move/from16 v1, v44

    #@23
    if-eq v0, v1, :cond_0

    #@25
    .line 102
    new-instance v43, Landroid/icu/util/ICUException;

    #@27
    const-string/jumbo v44, "Tailoring UCA version differs from base data UCA version"

    #@2a
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v43

    #@2e
    .line 105
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@31
    move-result v19

    #@32
    .line 106
    .local v19, "inLength":I
    const/16 v43, 0x8

    #@34
    move/from16 v0, v19

    #@36
    move/from16 v1, v43

    #@38
    if-ge v0, v1, :cond_1

    #@3a
    .line 107
    new-instance v43, Landroid/icu/util/ICUException;

    #@3c
    const-string/jumbo v44, "not enough bytes"

    #@3f
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@42
    throw v43

    #@43
    .line 109
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@46
    move-result v21

    #@47
    .line 110
    .local v21, "indexesLength":I
    const/16 v43, 0x2

    #@49
    move/from16 v0, v21

    #@4b
    move/from16 v1, v43

    #@4d
    if-lt v0, v1, :cond_2

    #@4f
    mul-int/lit8 v43, v21, 0x4

    #@51
    move/from16 v0, v19

    #@53
    move/from16 v1, v43

    #@55
    if-ge v0, v1, :cond_3

    #@57
    .line 111
    :cond_2
    new-instance v43, Landroid/icu/util/ICUException;

    #@59
    const-string/jumbo v44, "not enough indexes"

    #@5c
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v43

    #@60
    .line 113
    :cond_3
    const/16 v43, 0x14

    #@62
    move/from16 v0, v43

    #@64
    new-array v0, v0, [I

    #@66
    move-object/from16 v18, v0

    #@68
    .line 114
    .local v18, "inIndexes":[I
    const/16 v43, 0x0

    #@6a
    aput v21, v18, v43

    #@6c
    .line 115
    const/16 v16, 0x1

    #@6e
    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    #@70
    move/from16 v1, v21

    #@72
    if-ge v0, v1, :cond_4

    #@74
    move-object/from16 v0, v18

    #@76
    array-length v0, v0

    #@77
    move/from16 v43, v0

    #@79
    move/from16 v0, v16

    #@7b
    move/from16 v1, v43

    #@7d
    if-ge v0, v1, :cond_4

    #@7f
    .line 116
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@82
    move-result v43

    #@83
    aput v43, v18, v16

    #@85
    .line 115
    add-int/lit8 v16, v16, 0x1

    #@87
    goto :goto_0

    #@88
    .line 118
    :cond_4
    move/from16 v16, v21

    #@8a
    :goto_1
    move-object/from16 v0, v18

    #@8c
    array-length v0, v0

    #@8d
    move/from16 v43, v0

    #@8f
    move/from16 v0, v16

    #@91
    move/from16 v1, v43

    #@93
    if-ge v0, v1, :cond_5

    #@95
    .line 119
    const/16 v43, -0x1

    #@97
    aput v43, v18, v16

    #@99
    .line 118
    add-int/lit8 v16, v16, 0x1

    #@9b
    goto :goto_1

    #@9c
    .line 121
    :cond_5
    move-object/from16 v0, v18

    #@9e
    array-length v0, v0

    #@9f
    move/from16 v43, v0

    #@a1
    move/from16 v0, v21

    #@a3
    move/from16 v1, v43

    #@a5
    if-le v0, v1, :cond_6

    #@a7
    .line 122
    move-object/from16 v0, v18

    #@a9
    array-length v0, v0

    #@aa
    move/from16 v43, v0

    #@ac
    sub-int v43, v21, v43

    #@ae
    mul-int/lit8 v43, v43, 0x4

    #@b0
    move-object/from16 v0, p1

    #@b2
    move/from16 v1, v43

    #@b4
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@b7
    .line 135
    :cond_6
    const/16 v43, 0x13

    #@b9
    move/from16 v0, v21

    #@bb
    move/from16 v1, v43

    #@bd
    if-le v0, v1, :cond_7

    #@bf
    .line 136
    const/16 v43, 0x13

    #@c1
    aget v24, v18, v43

    #@c3
    .line 142
    .local v24, "length":I
    :goto_2
    move/from16 v0, v19

    #@c5
    move/from16 v1, v24

    #@c7
    if-ge v0, v1, :cond_9

    #@c9
    .line 143
    new-instance v43, Landroid/icu/util/ICUException;

    #@cb
    const-string/jumbo v44, "not enough bytes"

    #@ce
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@d1
    throw v43

    #@d2
    .line 137
    .end local v24    # "length":I
    :cond_7
    const/16 v43, 0x5

    #@d4
    move/from16 v0, v21

    #@d6
    move/from16 v1, v43

    #@d8
    if-le v0, v1, :cond_8

    #@da
    .line 138
    add-int/lit8 v43, v21, -0x1

    #@dc
    aget v24, v18, v43

    #@de
    .restart local v24    # "length":I
    goto :goto_2

    #@df
    .line 140
    .end local v24    # "length":I
    :cond_8
    const/16 v24, 0x0

    #@e1
    .restart local v24    # "length":I
    goto :goto_2

    #@e2
    .line 146
    :cond_9
    if-nez p0, :cond_a

    #@e4
    const/4 v6, 0x0

    #@e5
    .line 149
    :goto_3
    const/16 v20, 0x5

    #@e7
    .line 150
    .local v20, "index":I
    aget v25, v18, v20

    #@e9
    .line 151
    .local v25, "offset":I
    const/16 v43, 0x6

    #@eb
    aget v43, v18, v43

    #@ed
    sub-int v24, v43, v25

    #@ef
    .line 152
    const/16 v43, 0x4

    #@f1
    move/from16 v0, v24

    #@f3
    move/from16 v1, v43

    #@f5
    if-lt v0, v1, :cond_f

    #@f7
    .line 153
    if-nez v6, :cond_b

    #@f9
    .line 156
    new-instance v43, Landroid/icu/util/ICUException;

    #@fb
    const-string/jumbo v44, "Collation base data must not reorder scripts"

    #@fe
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@101
    throw v43

    #@102
    .line 146
    .end local v20    # "index":I
    .end local v25    # "offset":I
    :cond_a
    move-object/from16 v0, p0

    #@104
    iget-object v6, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@106
    .local v6, "baseData":Landroid/icu/impl/coll/CollationData;
    goto :goto_3

    #@107
    .line 158
    .end local v6    # "baseData":Landroid/icu/impl/coll/CollationData;
    .restart local v20    # "index":I
    .restart local v25    # "offset":I
    :cond_b
    div-int/lit8 v29, v24, 0x4

    #@109
    .line 159
    .local v29, "reorderCodesLength":I
    and-int/lit8 v43, v24, 0x3

    #@10b
    move-object/from16 v0, p1

    #@10d
    move/from16 v1, v29

    #@10f
    move/from16 v2, v43

    #@111
    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    #@114
    move-result-object v28

    #@115
    .line 165
    .local v28, "reorderCodes":[I
    const/16 v30, 0x0

    #@117
    .line 166
    .local v30, "reorderRangesLength":I
    :goto_4
    move/from16 v0, v30

    #@119
    move/from16 v1, v29

    #@11b
    if-ge v0, v1, :cond_c

    #@11d
    .line 167
    sub-int v43, v29, v30

    #@11f
    add-int/lit8 v43, v43, -0x1

    #@121
    aget v43, v28, v43

    #@123
    const/high16 v44, -0x10000

    #@125
    and-int v43, v43, v44

    #@127
    if-eqz v43, :cond_c

    #@129
    .line 168
    add-int/lit8 v30, v30, 0x1

    #@12b
    goto :goto_4

    #@12c
    .line 170
    :cond_c
    sget-boolean v43, Landroid/icu/impl/coll/CollationDataReader;->-assertionsDisabled:Z

    #@12e
    if-nez v43, :cond_e

    #@130
    move/from16 v0, v30

    #@132
    move/from16 v1, v29

    #@134
    if-ge v0, v1, :cond_d

    #@136
    const/16 v43, 0x1

    #@138
    :goto_5
    if-nez v43, :cond_e

    #@13a
    new-instance v43, Ljava/lang/AssertionError;

    #@13c
    invoke-direct/range {v43 .. v43}, Ljava/lang/AssertionError;-><init>()V

    #@13f
    throw v43

    #@140
    :cond_d
    const/16 v43, 0x0

    #@142
    goto :goto_5

    #@143
    .line 171
    :cond_e
    sub-int v29, v29, v30

    #@145
    .line 181
    .end local v30    # "reorderRangesLength":I
    :goto_6
    const/16 v31, 0x0

    #@147
    .line 182
    .local v31, "reorderTable":[B
    const/16 v20, 0x6

    #@149
    .line 183
    aget v25, v18, v20

    #@14b
    .line 184
    const/16 v43, 0x7

    #@14d
    aget v43, v18, v43

    #@14f
    sub-int v24, v43, v25

    #@151
    .line 185
    const/16 v43, 0x100

    #@153
    move/from16 v0, v24

    #@155
    move/from16 v1, v43

    #@157
    if-lt v0, v1, :cond_11

    #@159
    .line 186
    if-nez v29, :cond_10

    #@15b
    .line 187
    new-instance v43, Landroid/icu/util/ICUException;

    #@15d
    const-string/jumbo v44, "Reordering table without reordering codes"

    #@160
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@163
    throw v43

    #@164
    .line 173
    .end local v28    # "reorderCodes":[I
    .end local v29    # "reorderCodesLength":I
    .end local v31    # "reorderTable":[B
    :cond_f
    const/16 v43, 0x0

    #@166
    move/from16 v0, v43

    #@168
    new-array v0, v0, [I

    #@16a
    move-object/from16 v28, v0

    #@16c
    .line 174
    .restart local v28    # "reorderCodes":[I
    const/16 v29, 0x0

    #@16e
    .line 175
    .restart local v29    # "reorderCodesLength":I
    move-object/from16 v0, p1

    #@170
    move/from16 v1, v24

    #@172
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@175
    goto :goto_6

    #@176
    .line 189
    .restart local v31    # "reorderTable":[B
    :cond_10
    const/16 v43, 0x100

    #@178
    move/from16 v0, v43

    #@17a
    new-array v0, v0, [B

    #@17c
    move-object/from16 v31, v0

    #@17e
    .line 190
    .local v31, "reorderTable":[B
    move-object/from16 v0, p1

    #@180
    move-object/from16 v1, v31

    #@182
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@185
    .line 191
    move/from16 v0, v24

    #@187
    add-int/lit16 v0, v0, -0x100

    #@189
    move/from16 v24, v0

    #@18b
    .line 196
    .end local v31    # "reorderTable":[B
    :cond_11
    move-object/from16 v0, p1

    #@18d
    move/from16 v1, v24

    #@18f
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@192
    .line 198
    if-eqz v6, :cond_12

    #@194
    iget-wide v0, v6, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    #@196
    move-wide/from16 v44, v0

    #@198
    const/16 v43, 0x1

    #@19a
    aget v43, v18, v43

    #@19c
    move/from16 v0, v43

    #@19e
    int-to-long v0, v0

    #@19f
    move-wide/from16 v46, v0

    #@1a1
    const-wide v48, 0xff000000L

    #@1a6
    and-long v46, v46, v48

    #@1a8
    cmp-long v43, v44, v46

    #@1aa
    if-eqz v43, :cond_12

    #@1ac
    .line 199
    new-instance v43, Landroid/icu/util/ICUException;

    #@1ae
    const-string/jumbo v44, "Tailoring numeric primary weight differs from base data"

    #@1b1
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@1b4
    throw v43

    #@1b5
    .line 201
    :cond_12
    const/4 v11, 0x0

    #@1b6
    .line 203
    .local v11, "data":Landroid/icu/impl/coll/CollationData;
    const/16 v20, 0x7

    #@1b8
    .line 204
    aget v25, v18, v20

    #@1ba
    .line 205
    const/16 v43, 0x8

    #@1bc
    aget v43, v18, v43

    #@1be
    sub-int v24, v43, v25

    #@1c0
    .line 206
    const/16 v43, 0x8

    #@1c2
    move/from16 v0, v24

    #@1c4
    move/from16 v1, v43

    #@1c6
    if-lt v0, v1, :cond_14

    #@1c8
    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationTailoring;->ensureOwnedData()V

    #@1cb
    .line 208
    move-object/from16 v0, p2

    #@1cd
    iget-object v11, v0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    #@1cf
    .line 209
    .local v11, "data":Landroid/icu/impl/coll/CollationData;
    iput-object v6, v11, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@1d1
    .line 210
    const/16 v43, 0x1

    #@1d3
    aget v43, v18, v43

    #@1d5
    move/from16 v0, v43

    #@1d7
    int-to-long v0, v0

    #@1d8
    move-wide/from16 v44, v0

    #@1da
    const-wide v46, 0xff000000L

    #@1df
    and-long v44, v44, v46

    #@1e1
    move-wide/from16 v0, v44

    #@1e3
    iput-wide v0, v11, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    #@1e5
    .line 211
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/Trie2_32;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_32;

    #@1e8
    move-result-object v43

    #@1e9
    move-object/from16 v0, v43

    #@1eb
    move-object/from16 v1, p2

    #@1ed
    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->trie:Landroid/icu/impl/Trie2_32;

    #@1ef
    move-object/from16 v0, v43

    #@1f1
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    #@1f3
    .line 212
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    #@1f5
    move-object/from16 v43, v0

    #@1f7
    invoke-virtual/range {v43 .. v43}, Landroid/icu/impl/Trie2_32;->getSerializedLength()I

    #@1fa
    move-result v40

    #@1fb
    .line 213
    .local v40, "trieLength":I
    move/from16 v0, v40

    #@1fd
    move/from16 v1, v24

    #@1ff
    if-le v0, v1, :cond_13

    #@201
    .line 214
    new-instance v43, Landroid/icu/util/ICUException;

    #@203
    const-string/jumbo v44, "Not enough bytes for the mappings trie"

    #@206
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@209
    throw v43

    #@20a
    .line 216
    :cond_13
    sub-int v24, v24, v40

    #@20c
    .line 223
    .end local v11    # "data":Landroid/icu/impl/coll/CollationData;
    .end local v40    # "trieLength":I
    :goto_7
    move-object/from16 v0, p1

    #@20e
    move/from16 v1, v24

    #@210
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@213
    .line 225
    const/16 v20, 0x8

    #@215
    .line 226
    aget v25, v18, v20

    #@217
    .line 227
    const/16 v43, 0x9

    #@219
    aget v43, v18, v43

    #@21b
    sub-int v24, v43, v25

    #@21d
    .line 228
    move-object/from16 v0, p1

    #@21f
    move/from16 v1, v24

    #@221
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@224
    .line 230
    const/16 v20, 0x9

    #@226
    .line 231
    aget v25, v18, v20

    #@228
    .line 232
    const/16 v43, 0xa

    #@22a
    aget v43, v18, v43

    #@22c
    sub-int v24, v43, v25

    #@22e
    .line 233
    const/16 v43, 0x8

    #@230
    move/from16 v0, v24

    #@232
    move/from16 v1, v43

    #@234
    if-lt v0, v1, :cond_17

    #@236
    .line 234
    if-nez v11, :cond_16

    #@238
    .line 235
    new-instance v43, Landroid/icu/util/ICUException;

    #@23a
    const-string/jumbo v44, "Tailored ces without tailored trie"

    #@23d
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@240
    throw v43

    #@241
    .line 217
    .local v11, "data":Landroid/icu/impl/coll/CollationData;
    :cond_14
    if-eqz v6, :cond_15

    #@243
    .line 219
    move-object/from16 v0, p2

    #@245
    iput-object v6, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@247
    goto :goto_7

    #@248
    .line 221
    :cond_15
    new-instance v43, Landroid/icu/util/ICUException;

    #@24a
    const-string/jumbo v44, "Missing collation data mappings"

    #@24d
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@250
    throw v43

    #@251
    .line 237
    .end local v11    # "data":Landroid/icu/impl/coll/CollationData;
    :cond_16
    div-int/lit8 v43, v24, 0x8

    #@253
    and-int/lit8 v44, v24, 0x7

    #@255
    move-object/from16 v0, p1

    #@257
    move/from16 v1, v43

    #@259
    move/from16 v2, v44

    #@25b
    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->getLongs(Ljava/nio/ByteBuffer;II)[J

    #@25e
    move-result-object v43

    #@25f
    move-object/from16 v0, v43

    #@261
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@263
    .line 242
    :goto_8
    const/16 v20, 0xa

    #@265
    .line 243
    aget v25, v18, v20

    #@267
    .line 244
    const/16 v43, 0xb

    #@269
    aget v43, v18, v43

    #@26b
    sub-int v24, v43, v25

    #@26d
    .line 245
    move-object/from16 v0, p1

    #@26f
    move/from16 v1, v24

    #@271
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@274
    .line 247
    const/16 v20, 0xb

    #@276
    .line 248
    aget v25, v18, v20

    #@278
    .line 249
    const/16 v43, 0xc

    #@27a
    aget v43, v18, v43

    #@27c
    sub-int v24, v43, v25

    #@27e
    .line 250
    const/16 v43, 0x4

    #@280
    move/from16 v0, v24

    #@282
    move/from16 v1, v43

    #@284
    if-lt v0, v1, :cond_1a

    #@286
    .line 251
    if-nez v11, :cond_18

    #@288
    .line 252
    new-instance v43, Landroid/icu/util/ICUException;

    #@28a
    const-string/jumbo v44, "Tailored ce32s without tailored trie"

    #@28d
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@290
    throw v43

    #@291
    .line 239
    :cond_17
    move-object/from16 v0, p1

    #@293
    move/from16 v1, v24

    #@295
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@298
    goto :goto_8

    #@299
    .line 254
    :cond_18
    div-int/lit8 v43, v24, 0x4

    #@29b
    and-int/lit8 v44, v24, 0x3

    #@29d
    move-object/from16 v0, p1

    #@29f
    move/from16 v1, v43

    #@2a1
    move/from16 v2, v44

    #@2a3
    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    #@2a6
    move-result-object v43

    #@2a7
    move-object/from16 v0, v43

    #@2a9
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@2ab
    .line 259
    :goto_9
    const/16 v43, 0x4

    #@2ad
    aget v22, v18, v43

    #@2af
    .line 260
    .local v22, "jamoCE32sStart":I
    if-ltz v22, :cond_1d

    #@2b1
    .line 261
    if-eqz v11, :cond_19

    #@2b3
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@2b5
    move-object/from16 v43, v0

    #@2b7
    if-nez v43, :cond_1b

    #@2b9
    .line 262
    :cond_19
    new-instance v43, Landroid/icu/util/ICUException;

    #@2bb
    const-string/jumbo v44, "JamoCE32sStart index into non-existent ce32s[]"

    #@2be
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@2c1
    throw v43

    #@2c2
    .line 256
    .end local v22    # "jamoCE32sStart":I
    :cond_1a
    move-object/from16 v0, p1

    #@2c4
    move/from16 v1, v24

    #@2c6
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@2c9
    goto :goto_9

    #@2ca
    .line 264
    .restart local v22    # "jamoCE32sStart":I
    :cond_1b
    const/16 v43, 0x43

    #@2cc
    move/from16 v0, v43

    #@2ce
    new-array v0, v0, [I

    #@2d0
    move-object/from16 v43, v0

    #@2d2
    move-object/from16 v0, v43

    #@2d4
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@2d6
    .line 265
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@2d8
    move-object/from16 v43, v0

    #@2da
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@2dc
    move-object/from16 v44, v0

    #@2de
    const/16 v45, 0x0

    #@2e0
    const/16 v46, 0x43

    #@2e2
    move-object/from16 v0, v43

    #@2e4
    move/from16 v1, v22

    #@2e6
    move-object/from16 v2, v44

    #@2e8
    move/from16 v3, v45

    #@2ea
    move/from16 v4, v46

    #@2ec
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@2ef
    .line 274
    :cond_1c
    :goto_a
    const/16 v20, 0xc

    #@2f1
    .line 275
    aget v25, v18, v20

    #@2f3
    .line 276
    const/16 v43, 0xd

    #@2f5
    aget v43, v18, v43

    #@2f7
    sub-int v24, v43, v25

    #@2f9
    .line 277
    const/16 v43, 0x4

    #@2fb
    move/from16 v0, v24

    #@2fd
    move/from16 v1, v43

    #@2ff
    if-lt v0, v1, :cond_24

    #@301
    .line 278
    div-int/lit8 v32, v24, 0x4

    #@303
    .line 279
    .local v32, "rootElementsLength":I
    if-nez v11, :cond_1f

    #@305
    .line 280
    new-instance v43, Landroid/icu/util/ICUException;

    #@307
    const-string/jumbo v44, "Root elements but no mappings"

    #@30a
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@30d
    throw v43

    #@30e
    .line 266
    .end local v32    # "rootElementsLength":I
    :cond_1d
    if-eqz v11, :cond_1c

    #@310
    .line 268
    if-eqz v6, :cond_1e

    #@312
    .line 269
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@314
    move-object/from16 v43, v0

    #@316
    move-object/from16 v0, v43

    #@318
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@31a
    goto :goto_a

    #@31b
    .line 271
    :cond_1e
    new-instance v43, Landroid/icu/util/ICUException;

    #@31d
    const-string/jumbo v44, "Missing Jamo CE32s for Hangul processing"

    #@320
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@323
    throw v43

    #@324
    .line 282
    .restart local v32    # "rootElementsLength":I
    :cond_1f
    const/16 v43, 0x4

    #@326
    move/from16 v0, v32

    #@328
    move/from16 v1, v43

    #@32a
    if-gt v0, v1, :cond_20

    #@32c
    .line 283
    new-instance v43, Landroid/icu/util/ICUException;

    #@32e
    const-string/jumbo v44, "Root elements array too short"

    #@331
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@334
    throw v43

    #@335
    .line 285
    :cond_20
    move/from16 v0, v32

    #@337
    new-array v0, v0, [J

    #@339
    move-object/from16 v43, v0

    #@33b
    move-object/from16 v0, v43

    #@33d
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    #@33f
    .line 286
    const/16 v16, 0x0

    #@341
    :goto_b
    move/from16 v0, v16

    #@343
    move/from16 v1, v32

    #@345
    if-ge v0, v1, :cond_21

    #@347
    .line 287
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    #@349
    move-object/from16 v43, v0

    #@34b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@34e
    move-result v44

    #@34f
    move/from16 v0, v44

    #@351
    int-to-long v0, v0

    #@352
    move-wide/from16 v44, v0

    #@354
    const-wide v46, 0xffffffffL

    #@359
    and-long v44, v44, v46

    #@35b
    aput-wide v44, v43, v16

    #@35d
    .line 286
    add-int/lit8 v16, v16, 0x1

    #@35f
    goto :goto_b

    #@360
    .line 289
    :cond_21
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    #@362
    move-object/from16 v43, v0

    #@364
    const/16 v44, 0x3

    #@366
    aget-wide v8, v43, v44

    #@368
    .line 290
    .local v8, "commonSecTer":J
    const-wide/32 v44, 0x5000500

    #@36b
    cmp-long v43, v8, v44

    #@36d
    if-eqz v43, :cond_22

    #@36f
    .line 291
    new-instance v43, Landroid/icu/util/ICUException;

    #@371
    const-string/jumbo v44, "Common sec/ter weights in base data differ from the hardcoded value"

    #@374
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@377
    throw v43

    #@378
    .line 293
    :cond_22
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    #@37a
    move-object/from16 v43, v0

    #@37c
    const/16 v44, 0x4

    #@37e
    aget-wide v36, v43, v44

    #@380
    .line 294
    .local v36, "secTerBoundaries":J
    const/16 v43, 0x18

    #@382
    ushr-long v44, v36, v43

    #@384
    const-wide/16 v46, 0x45

    #@386
    cmp-long v43, v44, v46

    #@388
    if-gez v43, :cond_23

    #@38a
    .line 297
    new-instance v43, Landroid/icu/util/ICUException;

    #@38c
    const-string/jumbo v44, "[fixed last secondary common byte] is too low"

    #@38f
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@392
    throw v43

    #@393
    .line 299
    :cond_23
    and-int/lit8 v24, v24, 0x3

    #@395
    .line 301
    .end local v8    # "commonSecTer":J
    .end local v32    # "rootElementsLength":I
    .end local v36    # "secTerBoundaries":J
    :cond_24
    move-object/from16 v0, p1

    #@397
    move/from16 v1, v24

    #@399
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@39c
    .line 303
    const/16 v20, 0xd

    #@39e
    .line 304
    aget v25, v18, v20

    #@3a0
    .line 305
    const/16 v43, 0xe

    #@3a2
    aget v43, v18, v43

    #@3a4
    sub-int v24, v43, v25

    #@3a6
    .line 306
    const/16 v43, 0x2

    #@3a8
    move/from16 v0, v24

    #@3aa
    move/from16 v1, v43

    #@3ac
    if-lt v0, v1, :cond_26

    #@3ae
    .line 307
    if-nez v11, :cond_25

    #@3b0
    .line 308
    new-instance v43, Landroid/icu/util/ICUException;

    #@3b2
    const-string/jumbo v44, "Tailored contexts without tailored trie"

    #@3b5
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@3b8
    throw v43

    #@3b9
    .line 310
    :cond_25
    div-int/lit8 v43, v24, 0x2

    #@3bb
    and-int/lit8 v44, v24, 0x1

    #@3bd
    move-object/from16 v0, p1

    #@3bf
    move/from16 v1, v43

    #@3c1
    move/from16 v2, v44

    #@3c3
    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    #@3c6
    move-result-object v43

    #@3c7
    move-object/from16 v0, v43

    #@3c9
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@3cb
    .line 315
    :goto_c
    const/16 v20, 0xe

    #@3cd
    .line 316
    aget v25, v18, v20

    #@3cf
    .line 317
    const/16 v43, 0xf

    #@3d1
    aget v43, v18, v43

    #@3d3
    sub-int v24, v43, v25

    #@3d5
    .line 318
    const/16 v43, 0x2

    #@3d7
    move/from16 v0, v24

    #@3d9
    move/from16 v1, v43

    #@3db
    if-lt v0, v1, :cond_2d

    #@3dd
    .line 319
    if-nez v11, :cond_27

    #@3df
    .line 320
    new-instance v43, Landroid/icu/util/ICUException;

    #@3e1
    const-string/jumbo v44, "Unsafe-backward-set but no mappings"

    #@3e4
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@3e7
    throw v43

    #@3e8
    .line 312
    :cond_26
    move-object/from16 v0, p1

    #@3ea
    move/from16 v1, v24

    #@3ec
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@3ef
    goto :goto_c

    #@3f0
    .line 322
    :cond_27
    if-nez v6, :cond_28

    #@3f2
    .line 334
    new-instance v43, Landroid/icu/text/UnicodeSet;

    #@3f4
    const v44, 0xdc00

    #@3f7
    const v45, 0xdfff

    #@3fa
    invoke-direct/range {v43 .. v45}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    #@3fd
    move-object/from16 v0, v43

    #@3ff
    move-object/from16 v1, p2

    #@401
    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@403
    .line 335
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@405
    move-object/from16 v43, v0

    #@407
    move-object/from16 v0, p2

    #@409
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@40b
    move-object/from16 v44, v0

    #@40d
    invoke-virtual/range {v43 .. v44}, Landroid/icu/impl/Normalizer2Impl;->addLcccChars(Landroid/icu/text/UnicodeSet;)V

    #@410
    .line 341
    :goto_d
    new-instance v38, Landroid/icu/impl/USerializedSet;

    #@412
    invoke-direct/range {v38 .. v38}, Landroid/icu/impl/USerializedSet;-><init>()V

    #@415
    .line 342
    .local v38, "sset":Landroid/icu/impl/USerializedSet;
    div-int/lit8 v43, v24, 0x2

    #@417
    and-int/lit8 v44, v24, 0x1

    #@419
    move-object/from16 v0, p1

    #@41b
    move/from16 v1, v43

    #@41d
    move/from16 v2, v44

    #@41f
    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    #@422
    move-result-object v42

    #@423
    .line 343
    .local v42, "unsafeData":[C
    const/16 v24, 0x0

    #@425
    .line 344
    const/16 v43, 0x0

    #@427
    move-object/from16 v0, v38

    #@429
    move-object/from16 v1, v42

    #@42b
    move/from16 v2, v43

    #@42d
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/USerializedSet;->getSet([CI)Z

    #@430
    .line 345
    invoke-virtual/range {v38 .. v38}, Landroid/icu/impl/USerializedSet;->countRanges()I

    #@433
    move-result v10

    #@434
    .line 346
    .local v10, "count":I
    const/16 v43, 0x2

    #@436
    move/from16 v0, v43

    #@438
    new-array v0, v0, [I

    #@43a
    move-object/from16 v27, v0

    #@43c
    .line 347
    .local v27, "range":[I
    const/16 v16, 0x0

    #@43e
    :goto_e
    move/from16 v0, v16

    #@440
    if-ge v0, v10, :cond_29

    #@442
    .line 348
    move-object/from16 v0, v38

    #@444
    move/from16 v1, v16

    #@446
    move-object/from16 v2, v27

    #@448
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/USerializedSet;->getRange(I[I)Z

    #@44b
    .line 349
    move-object/from16 v0, p2

    #@44d
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@44f
    move-object/from16 v43, v0

    #@451
    const/16 v44, 0x0

    #@453
    aget v44, v27, v44

    #@455
    const/16 v45, 0x1

    #@457
    aget v45, v27, v45

    #@459
    invoke-virtual/range {v43 .. v45}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@45c
    .line 347
    add-int/lit8 v16, v16, 0x1

    #@45e
    goto :goto_e

    #@45f
    .line 338
    .end local v10    # "count":I
    .end local v27    # "range":[I
    .end local v38    # "sset":Landroid/icu/impl/USerializedSet;
    .end local v42    # "unsafeData":[C
    :cond_28
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@461
    move-object/from16 v43, v0

    #@463
    invoke-virtual/range {v43 .. v43}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    #@466
    move-result-object v43

    #@467
    move-object/from16 v0, v43

    #@469
    move-object/from16 v1, p2

    #@46b
    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@46d
    goto :goto_d

    #@46e
    .line 353
    .restart local v10    # "count":I
    .restart local v27    # "range":[I
    .restart local v38    # "sset":Landroid/icu/impl/USerializedSet;
    .restart local v42    # "unsafeData":[C
    :cond_29
    const/high16 v7, 0x10000

    #@470
    .line 354
    .local v7, "c":I
    const v23, 0xd800

    #@473
    .local v23, "lead":I
    :goto_f
    const v43, 0xdc00

    #@476
    move/from16 v0, v23

    #@478
    move/from16 v1, v43

    #@47a
    if-ge v0, v1, :cond_2b

    #@47c
    .line 355
    move-object/from16 v0, p2

    #@47e
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@480
    move-object/from16 v43, v0

    #@482
    add-int/lit16 v0, v7, 0x3ff

    #@484
    move/from16 v44, v0

    #@486
    move-object/from16 v0, v43

    #@488
    move/from16 v1, v44

    #@48a
    invoke-virtual {v0, v7, v1}, Landroid/icu/text/UnicodeSet;->containsNone(II)Z

    #@48d
    move-result v43

    #@48e
    if-nez v43, :cond_2a

    #@490
    .line 356
    move-object/from16 v0, p2

    #@492
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@494
    move-object/from16 v43, v0

    #@496
    move-object/from16 v0, v43

    #@498
    move/from16 v1, v23

    #@49a
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@49d
    .line 354
    :cond_2a
    add-int/lit8 v23, v23, 0x1

    #@49f
    add-int/lit16 v7, v7, 0x400

    #@4a1
    goto :goto_f

    #@4a2
    .line 359
    :cond_2b
    move-object/from16 v0, p2

    #@4a4
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@4a6
    move-object/from16 v43, v0

    #@4a8
    invoke-virtual/range {v43 .. v43}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@4ab
    .line 360
    move-object/from16 v0, p2

    #@4ad
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@4af
    move-object/from16 v43, v0

    #@4b1
    move-object/from16 v0, v43

    #@4b3
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@4b5
    .line 369
    .end local v7    # "c":I
    .end local v10    # "count":I
    .end local v23    # "lead":I
    .end local v27    # "range":[I
    .end local v38    # "sset":Landroid/icu/impl/USerializedSet;
    .end local v42    # "unsafeData":[C
    :cond_2c
    :goto_10
    move-object/from16 v0, p1

    #@4b7
    move/from16 v1, v24

    #@4b9
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@4bc
    .line 374
    const/16 v20, 0xf

    #@4be
    .line 375
    aget v25, v18, v20

    #@4c0
    .line 376
    const/16 v43, 0x10

    #@4c2
    aget v43, v18, v43

    #@4c4
    sub-int v24, v43, v25

    #@4c6
    .line 377
    if-eqz v11, :cond_31

    #@4c8
    .line 378
    const/16 v43, 0x0

    #@4ca
    move-object/from16 v0, v43

    #@4cc
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@4ce
    .line 379
    const/16 v43, 0x0

    #@4d0
    move-object/from16 v0, v43

    #@4d2
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@4d4
    .line 380
    const/16 v43, 0x1

    #@4d6
    aget v43, v18, v43

    #@4d8
    shr-int/lit8 v43, v43, 0x10

    #@4da
    move/from16 v0, v43

    #@4dc
    and-int/lit16 v0, v0, 0xff

    #@4de
    move/from16 v43, v0

    #@4e0
    const/16 v44, 0x2

    #@4e2
    move/from16 v0, v43

    #@4e4
    move/from16 v1, v44

    #@4e6
    if-ne v0, v1, :cond_31

    #@4e8
    .line 381
    const/16 v43, 0x2

    #@4ea
    move/from16 v0, v24

    #@4ec
    move/from16 v1, v43

    #@4ee
    if-lt v0, v1, :cond_30

    #@4f0
    .line 382
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@4f3
    move-result v14

    #@4f4
    .line 383
    .local v14, "header0":C
    and-int/lit16 v15, v14, 0xff

    #@4f6
    .line 384
    .local v15, "headerLength":I
    new-array v0, v15, [C

    #@4f8
    move-object/from16 v43, v0

    #@4fa
    move-object/from16 v0, v43

    #@4fc
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@4fe
    .line 385
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@500
    move-object/from16 v43, v0

    #@502
    const/16 v44, 0x0

    #@504
    aput-char v14, v43, v44

    #@506
    .line 386
    const/16 v16, 0x1

    #@508
    :goto_11
    move/from16 v0, v16

    #@50a
    if-ge v0, v15, :cond_2f

    #@50c
    .line 387
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@50e
    move-object/from16 v43, v0

    #@510
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@513
    move-result v44

    #@514
    aput-char v44, v43, v16

    #@516
    .line 386
    add-int/lit8 v16, v16, 0x1

    #@518
    goto :goto_11

    #@519
    .line 361
    .end local v14    # "header0":C
    .end local v15    # "headerLength":I
    :cond_2d
    if-eqz v11, :cond_2c

    #@51b
    .line 363
    if-eqz v6, :cond_2e

    #@51d
    .line 365
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@51f
    move-object/from16 v43, v0

    #@521
    move-object/from16 v0, v43

    #@523
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@525
    goto :goto_10

    #@526
    .line 367
    :cond_2e
    new-instance v43, Landroid/icu/util/ICUException;

    #@528
    const-string/jumbo v44, "Missing unsafe-backward-set"

    #@52b
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@52e
    throw v43

    #@52f
    .line 389
    .restart local v14    # "header0":C
    .restart local v15    # "headerLength":I
    :cond_2f
    div-int/lit8 v43, v24, 0x2

    #@531
    sub-int v39, v43, v15

    #@533
    .line 390
    .local v39, "tableLength":I
    and-int/lit8 v43, v24, 0x1

    #@535
    move-object/from16 v0, p1

    #@537
    move/from16 v1, v39

    #@539
    move/from16 v2, v43

    #@53b
    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    #@53e
    move-result-object v43

    #@53f
    move-object/from16 v0, v43

    #@541
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@543
    .line 391
    const/16 v24, 0x0

    #@545
    .line 392
    shr-int/lit8 v43, v14, 0x8

    #@547
    const/16 v44, 0x2

    #@549
    move/from16 v0, v43

    #@54b
    move/from16 v1, v44

    #@54d
    if-eq v0, v1, :cond_31

    #@54f
    .line 393
    new-instance v43, Landroid/icu/util/ICUException;

    #@551
    const-string/jumbo v44, "Fast-Latin table version differs from version in data header"

    #@554
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@557
    throw v43

    #@558
    .line 395
    .end local v14    # "header0":C
    .end local v15    # "headerLength":I
    .end local v39    # "tableLength":I
    :cond_30
    if-eqz v6, :cond_31

    #@55a
    .line 396
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@55c
    move-object/from16 v43, v0

    #@55e
    move-object/from16 v0, v43

    #@560
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@562
    .line 397
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@564
    move-object/from16 v43, v0

    #@566
    move-object/from16 v0, v43

    #@568
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@56a
    .line 401
    :cond_31
    move-object/from16 v0, p1

    #@56c
    move/from16 v1, v24

    #@56e
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@571
    .line 403
    const/16 v20, 0x10

    #@573
    .line 404
    aget v25, v18, v20

    #@575
    .line 405
    const/16 v43, 0x11

    #@577
    aget v43, v18, v43

    #@579
    sub-int v24, v43, v25

    #@57b
    .line 406
    const/16 v43, 0x2

    #@57d
    move/from16 v0, v24

    #@57f
    move/from16 v1, v43

    #@581
    if-lt v0, v1, :cond_37

    #@583
    .line 407
    if-nez v11, :cond_32

    #@585
    .line 408
    new-instance v43, Landroid/icu/util/ICUException;

    #@587
    const-string/jumbo v44, "Script order data but no mappings"

    #@58a
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@58d
    throw v43

    #@58e
    .line 410
    :cond_32
    div-int/lit8 v34, v24, 0x2

    #@590
    .line 411
    .local v34, "scriptsLength":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    #@593
    move-result-object v17

    #@594
    .line 412
    .local v17, "inChars":Ljava/nio/CharBuffer;
    invoke-virtual/range {v17 .. v17}, Ljava/nio/CharBuffer;->get()C

    #@597
    move-result v43

    #@598
    move/from16 v0, v43

    #@59a
    iput v0, v11, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@59c
    .line 414
    iget v0, v11, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@59e
    move/from16 v43, v0

    #@5a0
    add-int/lit8 v43, v43, 0x1

    #@5a2
    add-int/lit8 v43, v43, 0x10

    #@5a4
    sub-int v33, v34, v43

    #@5a6
    .line 415
    .local v33, "scriptStartsLength":I
    const/16 v43, 0x2

    #@5a8
    move/from16 v0, v33

    #@5aa
    move/from16 v1, v43

    #@5ac
    if-gt v0, v1, :cond_33

    #@5ae
    .line 416
    new-instance v43, Landroid/icu/util/ICUException;

    #@5b0
    const-string/jumbo v44, "Script order data too short"

    #@5b3
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@5b6
    throw v43

    #@5b7
    .line 418
    :cond_33
    iget v0, v11, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@5b9
    move/from16 v43, v0

    #@5bb
    add-int/lit8 v43, v43, 0x10

    #@5bd
    move/from16 v0, v43

    #@5bf
    new-array v0, v0, [C

    #@5c1
    move-object/from16 v43, v0

    #@5c3
    move-object/from16 v0, v43

    #@5c5
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@5c7
    move-object/from16 v0, v17

    #@5c9
    move-object/from16 v1, v43

    #@5cb
    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    #@5ce
    .line 419
    move/from16 v0, v33

    #@5d0
    new-array v0, v0, [C

    #@5d2
    move-object/from16 v43, v0

    #@5d4
    move-object/from16 v0, v43

    #@5d6
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@5d8
    move-object/from16 v0, v17

    #@5da
    move-object/from16 v1, v43

    #@5dc
    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    #@5df
    .line 420
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@5e1
    move-object/from16 v43, v0

    #@5e3
    const/16 v44, 0x0

    #@5e5
    aget-char v43, v43, v44

    #@5e7
    if-nez v43, :cond_34

    #@5e9
    .line 421
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@5eb
    move-object/from16 v43, v0

    #@5ed
    const/16 v44, 0x1

    #@5ef
    aget-char v43, v43, v44

    #@5f1
    const/16 v44, 0x300

    #@5f3
    move/from16 v0, v43

    #@5f5
    move/from16 v1, v44

    #@5f7
    if-eq v0, v1, :cond_35

    #@5f9
    .line 424
    :cond_34
    new-instance v43, Landroid/icu/util/ICUException;

    #@5fb
    const-string/jumbo v44, "Script order data not valid"

    #@5fe
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@601
    throw v43

    #@602
    .line 422
    :cond_35
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@604
    move-object/from16 v43, v0

    #@606
    add-int/lit8 v44, v33, -0x1

    #@608
    aget-char v43, v43, v44

    #@60a
    .line 423
    const v44, 0xff00

    #@60d
    .line 422
    move/from16 v0, v43

    #@60f
    move/from16 v1, v44

    #@611
    if-ne v0, v1, :cond_34

    #@613
    .line 433
    .end local v17    # "inChars":Ljava/nio/CharBuffer;
    .end local v33    # "scriptStartsLength":I
    .end local v34    # "scriptsLength":I
    :cond_36
    :goto_12
    move-object/from16 v0, p1

    #@615
    move/from16 v1, v24

    #@617
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@61a
    .line 435
    const/16 v20, 0x11

    #@61c
    .line 436
    aget v25, v18, v20

    #@61e
    .line 437
    const/16 v43, 0x12

    #@620
    aget v43, v18, v43

    #@622
    sub-int v24, v43, v25

    #@624
    .line 438
    const/16 v43, 0x100

    #@626
    move/from16 v0, v24

    #@628
    move/from16 v1, v43

    #@62a
    if-lt v0, v1, :cond_3d

    #@62c
    .line 439
    if-nez v11, :cond_38

    #@62e
    .line 440
    new-instance v43, Landroid/icu/util/ICUException;

    #@630
    const-string/jumbo v44, "Data for compressible primary lead bytes but no mappings"

    #@633
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@636
    throw v43

    #@637
    .line 426
    :cond_37
    if-eqz v11, :cond_36

    #@639
    .line 428
    if-eqz v6, :cond_36

    #@63b
    .line 429
    iget v0, v6, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@63d
    move/from16 v43, v0

    #@63f
    move/from16 v0, v43

    #@641
    iput v0, v11, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@643
    .line 430
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@645
    move-object/from16 v43, v0

    #@647
    move-object/from16 v0, v43

    #@649
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@64b
    .line 431
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@64d
    move-object/from16 v43, v0

    #@64f
    move-object/from16 v0, v43

    #@651
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@653
    goto :goto_12

    #@654
    .line 442
    :cond_38
    const/16 v43, 0x100

    #@656
    move/from16 v0, v43

    #@658
    new-array v0, v0, [Z

    #@65a
    move-object/from16 v43, v0

    #@65c
    move-object/from16 v0, v43

    #@65e
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    #@660
    .line 443
    const/16 v16, 0x0

    #@662
    :goto_13
    const/16 v43, 0x100

    #@664
    move/from16 v0, v16

    #@666
    move/from16 v1, v43

    #@668
    if-ge v0, v1, :cond_3a

    #@66a
    .line 444
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    #@66c
    move-object/from16 v44, v0

    #@66e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    #@671
    move-result v43

    #@672
    if-eqz v43, :cond_39

    #@674
    const/16 v43, 0x1

    #@676
    :goto_14
    aput-boolean v43, v44, v16

    #@678
    .line 443
    add-int/lit8 v16, v16, 0x1

    #@67a
    goto :goto_13

    #@67b
    .line 444
    :cond_39
    const/16 v43, 0x0

    #@67d
    goto :goto_14

    #@67e
    .line 446
    :cond_3a
    move/from16 v0, v24

    #@680
    add-int/lit16 v0, v0, -0x100

    #@682
    move/from16 v24, v0

    #@684
    .line 454
    :cond_3b
    :goto_15
    move-object/from16 v0, p1

    #@686
    move/from16 v1, v24

    #@688
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@68b
    .line 456
    const/16 v20, 0x12

    #@68d
    .line 457
    aget v25, v18, v20

    #@68f
    .line 458
    const/16 v43, 0x13

    #@691
    aget v43, v18, v43

    #@693
    sub-int v24, v43, v25

    #@695
    .line 459
    move-object/from16 v0, p1

    #@697
    move/from16 v1, v24

    #@699
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@69c
    .line 461
    move-object/from16 v0, p2

    #@69e
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@6a0
    move-object/from16 v43, v0

    #@6a2
    invoke-virtual/range {v43 .. v43}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@6a5
    move-result-object v41

    #@6a6
    check-cast v41, Landroid/icu/impl/coll/CollationSettings;

    #@6a8
    .line 462
    .local v41, "ts":Landroid/icu/impl/coll/CollationSettings;
    const/16 v43, 0x1

    #@6aa
    aget v43, v18, v43

    #@6ac
    const v44, 0xffff

    #@6af
    and-int v26, v43, v44

    #@6b1
    .line 463
    .local v26, "options":I
    const/16 v43, 0x180

    #@6b3
    move/from16 v0, v43

    #@6b5
    new-array v13, v0, [C

    #@6b7
    .line 465
    .local v13, "fastLatinPrimaries":[C
    move-object/from16 v0, p2

    #@6b9
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@6bb
    move-object/from16 v43, v0

    #@6bd
    .line 464
    move-object/from16 v0, v43

    #@6bf
    move-object/from16 v1, v41

    #@6c1
    invoke-static {v0, v1, v13}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    #@6c4
    move-result v12

    #@6c5
    .line 466
    .local v12, "fastLatinOptions":I
    move-object/from16 v0, v41

    #@6c7
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@6c9
    move/from16 v43, v0

    #@6cb
    move/from16 v0, v26

    #@6cd
    move/from16 v1, v43

    #@6cf
    if-ne v0, v1, :cond_3f

    #@6d1
    move-object/from16 v0, v41

    #@6d3
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@6d5
    move-wide/from16 v44, v0

    #@6d7
    const-wide/16 v46, 0x0

    #@6d9
    cmp-long v43, v44, v46

    #@6db
    if-eqz v43, :cond_3f

    #@6dd
    .line 467
    move-object/from16 v0, v41

    #@6df
    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@6e1
    move-object/from16 v43, v0

    #@6e3
    move-object/from16 v0, v28

    #@6e5
    move-object/from16 v1, v43

    #@6e7
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@6ea
    move-result v43

    #@6eb
    .line 466
    if-eqz v43, :cond_3f

    #@6ed
    .line 468
    move-object/from16 v0, v41

    #@6ef
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    #@6f1
    move/from16 v43, v0

    #@6f3
    move/from16 v0, v43

    #@6f5
    if-ne v12, v0, :cond_3f

    #@6f7
    .line 469
    if-ltz v12, :cond_3c

    #@6f9
    .line 470
    move-object/from16 v0, v41

    #@6fb
    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    #@6fd
    move-object/from16 v43, v0

    #@6ff
    move-object/from16 v0, v43

    #@701
    invoke-static {v13, v0}, Ljava/util/Arrays;->equals([C[C)Z

    #@704
    move-result v43

    #@705
    .line 466
    if-eqz v43, :cond_3f

    #@707
    .line 471
    :cond_3c
    return-void

    #@708
    .line 447
    .end local v12    # "fastLatinOptions":I
    .end local v13    # "fastLatinPrimaries":[C
    .end local v26    # "options":I
    .end local v41    # "ts":Landroid/icu/impl/coll/CollationSettings;
    :cond_3d
    if-eqz v11, :cond_3b

    #@70a
    .line 449
    if-eqz v6, :cond_3e

    #@70c
    .line 450
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    #@70e
    move-object/from16 v43, v0

    #@710
    move-object/from16 v0, v43

    #@712
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    #@714
    goto/16 :goto_15

    #@716
    .line 452
    :cond_3e
    new-instance v43, Landroid/icu/util/ICUException;

    #@718
    const-string/jumbo v44, "Missing data for compressible primary lead bytes"

    #@71b
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@71e
    throw v43

    #@71f
    .line 474
    .restart local v12    # "fastLatinOptions":I
    .restart local v13    # "fastLatinPrimaries":[C
    .restart local v26    # "options":I
    .restart local v41    # "ts":Landroid/icu/impl/coll/CollationSettings;
    :cond_3f
    move-object/from16 v0, p2

    #@721
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@723
    move-object/from16 v43, v0

    #@725
    invoke-virtual/range {v43 .. v43}, Landroid/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Landroid/icu/impl/coll/SharedObject;

    #@728
    move-result-object v35

    #@729
    check-cast v35, Landroid/icu/impl/coll/CollationSettings;

    #@72b
    .line 475
    .local v35, "settings":Landroid/icu/impl/coll/CollationSettings;
    move/from16 v0, v26

    #@72d
    move-object/from16 v1, v35

    #@72f
    iput v0, v1, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@731
    .line 477
    move-object/from16 v0, p2

    #@733
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@735
    move-object/from16 v43, v0

    #@737
    .line 478
    invoke-virtual/range {v35 .. v35}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    #@73a
    move-result v44

    #@73b
    move/from16 v0, v44

    #@73d
    add-int/lit16 v0, v0, 0x1000

    #@73f
    move/from16 v44, v0

    #@741
    .line 477
    invoke-virtual/range {v43 .. v44}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    #@744
    move-result-wide v44

    #@745
    move-wide/from16 v0, v44

    #@747
    move-object/from16 v2, v35

    #@749
    iput-wide v0, v2, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@74b
    .line 479
    move-object/from16 v0, v35

    #@74d
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@74f
    move-wide/from16 v44, v0

    #@751
    const-wide/16 v46, 0x0

    #@753
    cmp-long v43, v44, v46

    #@755
    if-nez v43, :cond_40

    #@757
    .line 480
    new-instance v43, Landroid/icu/util/ICUException;

    #@759
    const-string/jumbo v44, "The maxVariable could not be mapped to a variableTop"

    #@75c
    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@75f
    throw v43

    #@760
    .line 483
    :cond_40
    if-eqz v29, :cond_41

    #@762
    .line 484
    move-object/from16 v0, v35

    #@764
    move-object/from16 v1, v28

    #@766
    move/from16 v2, v29

    #@768
    move-object/from16 v3, v31

    #@76a
    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/icu/impl/coll/CollationSettings;->aliasReordering(Landroid/icu/impl/coll/CollationData;[II[B)V

    #@76d
    .line 488
    :cond_41
    move-object/from16 v0, p2

    #@76f
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@771
    move-object/from16 v43, v0

    #@773
    .line 489
    move-object/from16 v0, v35

    #@775
    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    #@777
    move-object/from16 v44, v0

    #@779
    .line 487
    move-object/from16 v0, v43

    #@77b
    move-object/from16 v1, v35

    #@77d
    move-object/from16 v2, v44

    #@77f
    invoke-static {v0, v1, v2}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    #@782
    move-result v43

    #@783
    move/from16 v0, v43

    #@785
    move-object/from16 v1, v35

    #@787
    iput v0, v1, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    #@789
    .line 99
    return-void
.end method
