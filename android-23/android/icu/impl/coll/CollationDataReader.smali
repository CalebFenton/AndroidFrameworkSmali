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
    .line 517
    new-instance v0, Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;-><init>(Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;)V

    #@11
    sput-object v0, Landroid/icu/impl/coll/CollationDataReader;->IS_ACCEPTABLE:Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

    #@13
    .line 29
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
    .line 520
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
    .line 99
    sget-object v44, Landroid/icu/impl/coll/CollationDataReader;->IS_ACCEPTABLE:Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

    #@2
    const v45, 0x55436f6c

    #@5
    move-object/from16 v0, p1

    #@7
    move/from16 v1, v45

    #@9
    move-object/from16 v2, v44

    #@b
    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@e
    move-result v44

    #@f
    move/from16 v0, v44

    #@11
    move-object/from16 v1, p2

    #@13
    iput v0, v1, Landroid/icu/impl/coll/CollationTailoring;->version:I

    #@15
    .line 100
    if-eqz p0, :cond_0

    #@17
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationTailoring;->getUCAVersion()I

    #@1a
    move-result v44

    #@1b
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationTailoring;->getUCAVersion()I

    #@1e
    move-result v45

    #@1f
    move/from16 v0, v44

    #@21
    move/from16 v1, v45

    #@23
    if-eq v0, v1, :cond_0

    #@25
    .line 101
    new-instance v44, Landroid/icu/util/ICUException;

    #@27
    const-string/jumbo v45, "Tailoring UCA version differs from base data UCA version"

    #@2a
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v44

    #@2e
    .line 104
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@31
    move-result v19

    #@32
    .line 105
    .local v19, "inLength":I
    const/16 v44, 0x8

    #@34
    move/from16 v0, v19

    #@36
    move/from16 v1, v44

    #@38
    if-ge v0, v1, :cond_1

    #@3a
    .line 106
    new-instance v44, Landroid/icu/util/ICUException;

    #@3c
    const-string/jumbo v45, "not enough bytes"

    #@3f
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@42
    throw v44

    #@43
    .line 108
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@46
    move-result v21

    #@47
    .line 109
    .local v21, "indexesLength":I
    const/16 v44, 0x2

    #@49
    move/from16 v0, v21

    #@4b
    move/from16 v1, v44

    #@4d
    if-lt v0, v1, :cond_2

    #@4f
    mul-int/lit8 v44, v21, 0x4

    #@51
    move/from16 v0, v19

    #@53
    move/from16 v1, v44

    #@55
    if-ge v0, v1, :cond_3

    #@57
    .line 110
    :cond_2
    new-instance v44, Landroid/icu/util/ICUException;

    #@59
    const-string/jumbo v45, "not enough indexes"

    #@5c
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v44

    #@60
    .line 112
    :cond_3
    const/16 v44, 0x14

    #@62
    move/from16 v0, v44

    #@64
    new-array v0, v0, [I

    #@66
    move-object/from16 v18, v0

    #@68
    .line 113
    .local v18, "inIndexes":[I
    const/16 v44, 0x0

    #@6a
    aput v21, v18, v44

    #@6c
    .line 114
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
    move/from16 v44, v0

    #@79
    move/from16 v0, v16

    #@7b
    move/from16 v1, v44

    #@7d
    if-ge v0, v1, :cond_4

    #@7f
    .line 115
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@82
    move-result v44

    #@83
    aput v44, v18, v16

    #@85
    .line 114
    add-int/lit8 v16, v16, 0x1

    #@87
    goto :goto_0

    #@88
    .line 117
    :cond_4
    move/from16 v16, v21

    #@8a
    :goto_1
    move-object/from16 v0, v18

    #@8c
    array-length v0, v0

    #@8d
    move/from16 v44, v0

    #@8f
    move/from16 v0, v16

    #@91
    move/from16 v1, v44

    #@93
    if-ge v0, v1, :cond_5

    #@95
    .line 118
    const/16 v44, -0x1

    #@97
    aput v44, v18, v16

    #@99
    .line 117
    add-int/lit8 v16, v16, 0x1

    #@9b
    goto :goto_1

    #@9c
    .line 120
    :cond_5
    move-object/from16 v0, v18

    #@9e
    array-length v0, v0

    #@9f
    move/from16 v44, v0

    #@a1
    move/from16 v0, v21

    #@a3
    move/from16 v1, v44

    #@a5
    if-le v0, v1, :cond_6

    #@a7
    .line 121
    move-object/from16 v0, v18

    #@a9
    array-length v0, v0

    #@aa
    move/from16 v44, v0

    #@ac
    sub-int v44, v21, v44

    #@ae
    mul-int/lit8 v44, v44, 0x4

    #@b0
    move-object/from16 v0, p1

    #@b2
    move/from16 v1, v44

    #@b4
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@b7
    .line 134
    :cond_6
    const/16 v44, 0x13

    #@b9
    move/from16 v0, v21

    #@bb
    move/from16 v1, v44

    #@bd
    if-le v0, v1, :cond_7

    #@bf
    .line 135
    const/16 v44, 0x13

    #@c1
    aget v24, v18, v44

    #@c3
    .line 141
    .local v24, "length":I
    :goto_2
    move/from16 v0, v19

    #@c5
    move/from16 v1, v24

    #@c7
    if-ge v0, v1, :cond_9

    #@c9
    .line 142
    new-instance v44, Landroid/icu/util/ICUException;

    #@cb
    const-string/jumbo v45, "not enough bytes"

    #@ce
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@d1
    throw v44

    #@d2
    .line 136
    .end local v24    # "length":I
    :cond_7
    const/16 v44, 0x5

    #@d4
    move/from16 v0, v21

    #@d6
    move/from16 v1, v44

    #@d8
    if-le v0, v1, :cond_8

    #@da
    .line 137
    add-int/lit8 v44, v21, -0x1

    #@dc
    aget v24, v18, v44

    #@de
    .restart local v24    # "length":I
    goto :goto_2

    #@df
    .line 139
    .end local v24    # "length":I
    :cond_8
    const/16 v24, 0x0

    #@e1
    .restart local v24    # "length":I
    goto :goto_2

    #@e2
    .line 145
    :cond_9
    if-nez p0, :cond_a

    #@e4
    const/4 v6, 0x0

    #@e5
    .line 148
    :goto_3
    const/16 v20, 0x5

    #@e7
    .line 149
    .local v20, "index":I
    aget v25, v18, v20

    #@e9
    .line 150
    .local v25, "offset":I
    const/16 v44, 0x6

    #@eb
    aget v44, v18, v44

    #@ed
    sub-int v24, v44, v25

    #@ef
    .line 151
    const/16 v44, 0x4

    #@f1
    move/from16 v0, v24

    #@f3
    move/from16 v1, v44

    #@f5
    if-lt v0, v1, :cond_10

    #@f7
    .line 152
    if-nez v6, :cond_b

    #@f9
    .line 155
    new-instance v44, Landroid/icu/util/ICUException;

    #@fb
    const-string/jumbo v45, "Collation base data must not reorder scripts"

    #@fe
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@101
    throw v44

    #@102
    .line 145
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
    .line 157
    .end local v6    # "baseData":Landroid/icu/impl/coll/CollationData;
    .restart local v20    # "index":I
    .restart local v25    # "offset":I
    :cond_b
    div-int/lit8 v29, v24, 0x4

    #@109
    .line 158
    .local v29, "reorderCodesLength":I
    move/from16 v0, v29

    #@10b
    new-array v0, v0, [I

    #@10d
    move-object/from16 v28, v0

    #@10f
    .line 159
    .local v28, "reorderCodes":[I
    const/16 v16, 0x0

    #@111
    :goto_4
    move/from16 v0, v16

    #@113
    move/from16 v1, v29

    #@115
    if-ge v0, v1, :cond_c

    #@117
    .line 160
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@11a
    move-result v44

    #@11b
    aput v44, v28, v16

    #@11d
    .line 159
    add-int/lit8 v16, v16, 0x1

    #@11f
    goto :goto_4

    #@120
    .line 162
    :cond_c
    and-int/lit8 v24, v24, 0x3

    #@122
    .line 168
    const/16 v30, 0x0

    #@124
    .line 169
    .local v30, "reorderRangesLength":I
    :goto_5
    move/from16 v0, v30

    #@126
    move/from16 v1, v29

    #@128
    if-ge v0, v1, :cond_d

    #@12a
    .line 170
    sub-int v44, v29, v30

    #@12c
    add-int/lit8 v44, v44, -0x1

    #@12e
    aget v44, v28, v44

    #@130
    const/high16 v45, -0x10000

    #@132
    and-int v44, v44, v45

    #@134
    if-eqz v44, :cond_d

    #@136
    .line 171
    add-int/lit8 v30, v30, 0x1

    #@138
    goto :goto_5

    #@139
    .line 173
    :cond_d
    sget-boolean v44, Landroid/icu/impl/coll/CollationDataReader;->-assertionsDisabled:Z

    #@13b
    if-nez v44, :cond_f

    #@13d
    move/from16 v0, v30

    #@13f
    move/from16 v1, v29

    #@141
    if-ge v0, v1, :cond_e

    #@143
    const/16 v44, 0x1

    #@145
    :goto_6
    if-nez v44, :cond_f

    #@147
    new-instance v44, Ljava/lang/AssertionError;

    #@149
    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    #@14c
    throw v44

    #@14d
    :cond_e
    const/16 v44, 0x0

    #@14f
    goto :goto_6

    #@150
    .line 174
    :cond_f
    sub-int v29, v29, v30

    #@152
    .line 179
    .end local v30    # "reorderRangesLength":I
    :goto_7
    move-object/from16 v0, p1

    #@154
    move/from16 v1, v24

    #@156
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@159
    .line 184
    const/16 v31, 0x0

    #@15b
    .line 185
    .local v31, "reorderTable":[B
    const/16 v20, 0x6

    #@15d
    .line 186
    aget v25, v18, v20

    #@15f
    .line 187
    const/16 v44, 0x7

    #@161
    aget v44, v18, v44

    #@163
    sub-int v24, v44, v25

    #@165
    .line 188
    const/16 v44, 0x100

    #@167
    move/from16 v0, v24

    #@169
    move/from16 v1, v44

    #@16b
    if-lt v0, v1, :cond_12

    #@16d
    .line 189
    if-nez v29, :cond_11

    #@16f
    .line 190
    new-instance v44, Landroid/icu/util/ICUException;

    #@171
    const-string/jumbo v45, "Reordering table without reordering codes"

    #@174
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@177
    throw v44

    #@178
    .line 176
    .end local v28    # "reorderCodes":[I
    .end local v29    # "reorderCodesLength":I
    .end local v31    # "reorderTable":[B
    :cond_10
    const/16 v44, 0x0

    #@17a
    move/from16 v0, v44

    #@17c
    new-array v0, v0, [I

    #@17e
    move-object/from16 v28, v0

    #@180
    .line 177
    .restart local v28    # "reorderCodes":[I
    const/16 v29, 0x0

    #@182
    .restart local v29    # "reorderCodesLength":I
    goto :goto_7

    #@183
    .line 192
    .restart local v31    # "reorderTable":[B
    :cond_11
    const/16 v44, 0x100

    #@185
    move/from16 v0, v44

    #@187
    new-array v0, v0, [B

    #@189
    move-object/from16 v31, v0

    #@18b
    .line 193
    .local v31, "reorderTable":[B
    move-object/from16 v0, p1

    #@18d
    move-object/from16 v1, v31

    #@18f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@192
    .line 194
    move/from16 v0, v24

    #@194
    add-int/lit16 v0, v0, -0x100

    #@196
    move/from16 v24, v0

    #@198
    .line 199
    .end local v31    # "reorderTable":[B
    :cond_12
    move-object/from16 v0, p1

    #@19a
    move/from16 v1, v24

    #@19c
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@19f
    .line 201
    if-eqz v6, :cond_13

    #@1a1
    iget-wide v0, v6, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    #@1a3
    move-wide/from16 v44, v0

    #@1a5
    const/16 v46, 0x1

    #@1a7
    aget v46, v18, v46

    #@1a9
    move/from16 v0, v46

    #@1ab
    int-to-long v0, v0

    #@1ac
    move-wide/from16 v46, v0

    #@1ae
    const-wide v48, 0xff000000L

    #@1b3
    and-long v46, v46, v48

    #@1b5
    cmp-long v44, v44, v46

    #@1b7
    if-eqz v44, :cond_13

    #@1b9
    .line 202
    new-instance v44, Landroid/icu/util/ICUException;

    #@1bb
    const-string/jumbo v45, "Tailoring numeric primary weight differs from base data"

    #@1be
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@1c1
    throw v44

    #@1c2
    .line 204
    :cond_13
    const/4 v11, 0x0

    #@1c3
    .line 206
    .local v11, "data":Landroid/icu/impl/coll/CollationData;
    const/16 v20, 0x7

    #@1c5
    .line 207
    aget v25, v18, v20

    #@1c7
    .line 208
    const/16 v44, 0x8

    #@1c9
    aget v44, v18, v44

    #@1cb
    sub-int v24, v44, v25

    #@1cd
    .line 209
    const/16 v44, 0x8

    #@1cf
    move/from16 v0, v24

    #@1d1
    move/from16 v1, v44

    #@1d3
    if-lt v0, v1, :cond_15

    #@1d5
    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationTailoring;->ensureOwnedData()V

    #@1d8
    .line 211
    move-object/from16 v0, p2

    #@1da
    iget-object v11, v0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    #@1dc
    .line 212
    .local v11, "data":Landroid/icu/impl/coll/CollationData;
    iput-object v6, v11, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@1de
    .line 213
    const/16 v44, 0x1

    #@1e0
    aget v44, v18, v44

    #@1e2
    move/from16 v0, v44

    #@1e4
    int-to-long v0, v0

    #@1e5
    move-wide/from16 v44, v0

    #@1e7
    const-wide v46, 0xff000000L

    #@1ec
    and-long v44, v44, v46

    #@1ee
    move-wide/from16 v0, v44

    #@1f0
    iput-wide v0, v11, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    #@1f2
    .line 214
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/Trie2_32;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_32;

    #@1f5
    move-result-object v44

    #@1f6
    move-object/from16 v0, v44

    #@1f8
    move-object/from16 v1, p2

    #@1fa
    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->trie:Landroid/icu/impl/Trie2_32;

    #@1fc
    move-object/from16 v0, v44

    #@1fe
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    #@200
    .line 215
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    #@202
    move-object/from16 v44, v0

    #@204
    invoke-virtual/range {v44 .. v44}, Landroid/icu/impl/Trie2_32;->getSerializedLength()I

    #@207
    move-result v41

    #@208
    .line 216
    .local v41, "trieLength":I
    move/from16 v0, v41

    #@20a
    move/from16 v1, v24

    #@20c
    if-le v0, v1, :cond_14

    #@20e
    .line 217
    new-instance v44, Landroid/icu/util/ICUException;

    #@210
    const-string/jumbo v45, "Not enough bytes for the mappings trie"

    #@213
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@216
    throw v44

    #@217
    .line 219
    :cond_14
    sub-int v24, v24, v41

    #@219
    .line 226
    .end local v11    # "data":Landroid/icu/impl/coll/CollationData;
    .end local v41    # "trieLength":I
    :goto_8
    move-object/from16 v0, p1

    #@21b
    move/from16 v1, v24

    #@21d
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@220
    .line 228
    const/16 v20, 0x8

    #@222
    .line 229
    aget v25, v18, v20

    #@224
    .line 230
    const/16 v44, 0x9

    #@226
    aget v44, v18, v44

    #@228
    sub-int v24, v44, v25

    #@22a
    .line 231
    move-object/from16 v0, p1

    #@22c
    move/from16 v1, v24

    #@22e
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@231
    .line 233
    const/16 v20, 0x9

    #@233
    .line 234
    aget v25, v18, v20

    #@235
    .line 235
    const/16 v44, 0xa

    #@237
    aget v44, v18, v44

    #@239
    sub-int v24, v44, v25

    #@23b
    .line 236
    const/16 v44, 0x8

    #@23d
    move/from16 v0, v24

    #@23f
    move/from16 v1, v44

    #@241
    if-lt v0, v1, :cond_19

    #@243
    .line 237
    if-nez v11, :cond_17

    #@245
    .line 238
    new-instance v44, Landroid/icu/util/ICUException;

    #@247
    const-string/jumbo v45, "Tailored ces without tailored trie"

    #@24a
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@24d
    throw v44

    #@24e
    .line 220
    .local v11, "data":Landroid/icu/impl/coll/CollationData;
    :cond_15
    if-eqz v6, :cond_16

    #@250
    .line 222
    move-object/from16 v0, p2

    #@252
    iput-object v6, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@254
    goto :goto_8

    #@255
    .line 224
    :cond_16
    new-instance v44, Landroid/icu/util/ICUException;

    #@257
    const-string/jumbo v45, "Missing collation data mappings"

    #@25a
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@25d
    throw v44

    #@25e
    .line 240
    .end local v11    # "data":Landroid/icu/impl/coll/CollationData;
    :cond_17
    div-int/lit8 v44, v24, 0x8

    #@260
    move/from16 v0, v44

    #@262
    new-array v0, v0, [J

    #@264
    move-object/from16 v44, v0

    #@266
    move-object/from16 v0, v44

    #@268
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@26a
    .line 241
    const/16 v16, 0x0

    #@26c
    :goto_9
    div-int/lit8 v44, v24, 0x8

    #@26e
    move/from16 v0, v16

    #@270
    move/from16 v1, v44

    #@272
    if-ge v0, v1, :cond_18

    #@274
    .line 242
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@276
    move-object/from16 v44, v0

    #@278
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    #@27b
    move-result-wide v46

    #@27c
    aput-wide v46, v44, v16

    #@27e
    .line 241
    add-int/lit8 v16, v16, 0x1

    #@280
    goto :goto_9

    #@281
    .line 244
    :cond_18
    and-int/lit8 v24, v24, 0x7

    #@283
    .line 246
    :cond_19
    move-object/from16 v0, p1

    #@285
    move/from16 v1, v24

    #@287
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@28a
    .line 248
    const/16 v20, 0xa

    #@28c
    .line 249
    aget v25, v18, v20

    #@28e
    .line 250
    const/16 v44, 0xb

    #@290
    aget v44, v18, v44

    #@292
    sub-int v24, v44, v25

    #@294
    .line 251
    move-object/from16 v0, p1

    #@296
    move/from16 v1, v24

    #@298
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@29b
    .line 253
    const/16 v20, 0xb

    #@29d
    .line 254
    aget v25, v18, v20

    #@29f
    .line 255
    const/16 v44, 0xc

    #@2a1
    aget v44, v18, v44

    #@2a3
    sub-int v24, v44, v25

    #@2a5
    .line 256
    const/16 v44, 0x4

    #@2a7
    move/from16 v0, v24

    #@2a9
    move/from16 v1, v44

    #@2ab
    if-lt v0, v1, :cond_1c

    #@2ad
    .line 257
    if-nez v11, :cond_1a

    #@2af
    .line 258
    new-instance v44, Landroid/icu/util/ICUException;

    #@2b1
    const-string/jumbo v45, "Tailored ce32s without tailored trie"

    #@2b4
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@2b7
    throw v44

    #@2b8
    .line 260
    :cond_1a
    div-int/lit8 v44, v24, 0x4

    #@2ba
    move/from16 v0, v44

    #@2bc
    new-array v0, v0, [I

    #@2be
    move-object/from16 v44, v0

    #@2c0
    move-object/from16 v0, v44

    #@2c2
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@2c4
    .line 261
    const/16 v16, 0x0

    #@2c6
    :goto_a
    div-int/lit8 v44, v24, 0x4

    #@2c8
    move/from16 v0, v16

    #@2ca
    move/from16 v1, v44

    #@2cc
    if-ge v0, v1, :cond_1b

    #@2ce
    .line 262
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@2d0
    move-object/from16 v44, v0

    #@2d2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@2d5
    move-result v45

    #@2d6
    aput v45, v44, v16

    #@2d8
    .line 261
    add-int/lit8 v16, v16, 0x1

    #@2da
    goto :goto_a

    #@2db
    .line 264
    :cond_1b
    and-int/lit8 v24, v24, 0x3

    #@2dd
    .line 266
    :cond_1c
    move-object/from16 v0, p1

    #@2df
    move/from16 v1, v24

    #@2e1
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@2e4
    .line 268
    const/16 v44, 0x4

    #@2e6
    aget v22, v18, v44

    #@2e8
    .line 269
    .local v22, "jamoCE32sStart":I
    if-ltz v22, :cond_20

    #@2ea
    .line 270
    if-eqz v11, :cond_1d

    #@2ec
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@2ee
    move-object/from16 v44, v0

    #@2f0
    if-nez v44, :cond_1e

    #@2f2
    .line 271
    :cond_1d
    new-instance v44, Landroid/icu/util/ICUException;

    #@2f4
    const-string/jumbo v45, "JamoCE32sStart index into non-existent ce32s[]"

    #@2f7
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@2fa
    throw v44

    #@2fb
    .line 273
    :cond_1e
    const/16 v44, 0x43

    #@2fd
    move/from16 v0, v44

    #@2ff
    new-array v0, v0, [I

    #@301
    move-object/from16 v44, v0

    #@303
    move-object/from16 v0, v44

    #@305
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@307
    .line 274
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@309
    move-object/from16 v44, v0

    #@30b
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@30d
    move-object/from16 v45, v0

    #@30f
    const/16 v46, 0x0

    #@311
    const/16 v47, 0x43

    #@313
    move-object/from16 v0, v44

    #@315
    move/from16 v1, v22

    #@317
    move-object/from16 v2, v45

    #@319
    move/from16 v3, v46

    #@31b
    move/from16 v4, v47

    #@31d
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@320
    .line 283
    :cond_1f
    :goto_b
    const/16 v20, 0xc

    #@322
    .line 284
    aget v25, v18, v20

    #@324
    .line 285
    const/16 v44, 0xd

    #@326
    aget v44, v18, v44

    #@328
    sub-int v24, v44, v25

    #@32a
    .line 286
    const/16 v44, 0x4

    #@32c
    move/from16 v0, v24

    #@32e
    move/from16 v1, v44

    #@330
    if-lt v0, v1, :cond_27

    #@332
    .line 287
    div-int/lit8 v32, v24, 0x4

    #@334
    .line 288
    .local v32, "rootElementsLength":I
    if-nez v11, :cond_22

    #@336
    .line 289
    new-instance v44, Landroid/icu/util/ICUException;

    #@338
    const-string/jumbo v45, "Root elements but no mappings"

    #@33b
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@33e
    throw v44

    #@33f
    .line 275
    .end local v32    # "rootElementsLength":I
    :cond_20
    if-eqz v11, :cond_1f

    #@341
    .line 277
    if-eqz v6, :cond_21

    #@343
    .line 278
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@345
    move-object/from16 v44, v0

    #@347
    move-object/from16 v0, v44

    #@349
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@34b
    goto :goto_b

    #@34c
    .line 280
    :cond_21
    new-instance v44, Landroid/icu/util/ICUException;

    #@34e
    const-string/jumbo v45, "Missing Jamo CE32s for Hangul processing"

    #@351
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@354
    throw v44

    #@355
    .line 291
    .restart local v32    # "rootElementsLength":I
    :cond_22
    const/16 v44, 0x4

    #@357
    move/from16 v0, v32

    #@359
    move/from16 v1, v44

    #@35b
    if-gt v0, v1, :cond_23

    #@35d
    .line 292
    new-instance v44, Landroid/icu/util/ICUException;

    #@35f
    const-string/jumbo v45, "Root elements array too short"

    #@362
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@365
    throw v44

    #@366
    .line 294
    :cond_23
    move/from16 v0, v32

    #@368
    new-array v0, v0, [J

    #@36a
    move-object/from16 v44, v0

    #@36c
    move-object/from16 v0, v44

    #@36e
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    #@370
    .line 295
    const/16 v16, 0x0

    #@372
    :goto_c
    move/from16 v0, v16

    #@374
    move/from16 v1, v32

    #@376
    if-ge v0, v1, :cond_24

    #@378
    .line 296
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    #@37a
    move-object/from16 v44, v0

    #@37c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@37f
    move-result v45

    #@380
    move/from16 v0, v45

    #@382
    int-to-long v0, v0

    #@383
    move-wide/from16 v46, v0

    #@385
    const-wide v48, 0xffffffffL

    #@38a
    and-long v46, v46, v48

    #@38c
    aput-wide v46, v44, v16

    #@38e
    .line 295
    add-int/lit8 v16, v16, 0x1

    #@390
    goto :goto_c

    #@391
    .line 298
    :cond_24
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    #@393
    move-object/from16 v44, v0

    #@395
    const/16 v45, 0x3

    #@397
    aget-wide v8, v44, v45

    #@399
    .line 299
    .local v8, "commonSecTer":J
    const-wide/32 v44, 0x5000500

    #@39c
    cmp-long v44, v8, v44

    #@39e
    if-eqz v44, :cond_25

    #@3a0
    .line 300
    new-instance v44, Landroid/icu/util/ICUException;

    #@3a2
    const-string/jumbo v45, "Common sec/ter weights in base data differ from the hardcoded value"

    #@3a5
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@3a8
    throw v44

    #@3a9
    .line 302
    :cond_25
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    #@3ab
    move-object/from16 v44, v0

    #@3ad
    const/16 v45, 0x4

    #@3af
    aget-wide v36, v44, v45

    #@3b1
    .line 303
    .local v36, "secTerBoundaries":J
    const/16 v44, 0x18

    #@3b3
    ushr-long v44, v36, v44

    #@3b5
    const-wide/16 v46, 0x45

    #@3b7
    cmp-long v44, v44, v46

    #@3b9
    if-gez v44, :cond_26

    #@3bb
    .line 306
    new-instance v44, Landroid/icu/util/ICUException;

    #@3bd
    const-string/jumbo v45, "[fixed last secondary common byte] is too low"

    #@3c0
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@3c3
    throw v44

    #@3c4
    .line 308
    :cond_26
    and-int/lit8 v24, v24, 0x3

    #@3c6
    .line 310
    .end local v8    # "commonSecTer":J
    .end local v32    # "rootElementsLength":I
    .end local v36    # "secTerBoundaries":J
    :cond_27
    move-object/from16 v0, p1

    #@3c8
    move/from16 v1, v24

    #@3ca
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@3cd
    .line 312
    const/16 v20, 0xd

    #@3cf
    .line 313
    aget v25, v18, v20

    #@3d1
    .line 314
    const/16 v44, 0xe

    #@3d3
    aget v44, v18, v44

    #@3d5
    sub-int v24, v44, v25

    #@3d7
    .line 315
    const/16 v44, 0x2

    #@3d9
    move/from16 v0, v24

    #@3db
    move/from16 v1, v44

    #@3dd
    if-lt v0, v1, :cond_2a

    #@3df
    .line 316
    if-nez v11, :cond_28

    #@3e1
    .line 317
    new-instance v44, Landroid/icu/util/ICUException;

    #@3e3
    const-string/jumbo v45, "Tailored contexts without tailored trie"

    #@3e6
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@3e9
    throw v44

    #@3ea
    .line 319
    :cond_28
    new-instance v33, Ljava/lang/StringBuilder;

    #@3ec
    div-int/lit8 v44, v24, 0x2

    #@3ee
    move-object/from16 v0, v33

    #@3f0
    move/from16 v1, v44

    #@3f2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@3f5
    .line 320
    .local v33, "sb":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    #@3f7
    :goto_d
    div-int/lit8 v44, v24, 0x2

    #@3f9
    move/from16 v0, v16

    #@3fb
    move/from16 v1, v44

    #@3fd
    if-ge v0, v1, :cond_29

    #@3ff
    .line 321
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@402
    move-result v44

    #@403
    move-object/from16 v0, v33

    #@405
    move/from16 v1, v44

    #@407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40a
    .line 320
    add-int/lit8 v16, v16, 0x1

    #@40c
    goto :goto_d

    #@40d
    .line 323
    :cond_29
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@410
    move-result-object v44

    #@411
    move-object/from16 v0, v44

    #@413
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@415
    .line 324
    and-int/lit8 v24, v24, 0x1

    #@417
    .line 326
    .end local v33    # "sb":Ljava/lang/StringBuilder;
    :cond_2a
    move-object/from16 v0, p1

    #@419
    move/from16 v1, v24

    #@41b
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@41e
    .line 328
    const/16 v20, 0xe

    #@420
    .line 329
    aget v25, v18, v20

    #@422
    .line 330
    const/16 v44, 0xf

    #@424
    aget v44, v18, v44

    #@426
    sub-int v24, v44, v25

    #@428
    .line 331
    const/16 v44, 0x2

    #@42a
    move/from16 v0, v24

    #@42c
    move/from16 v1, v44

    #@42e
    if-lt v0, v1, :cond_32

    #@430
    .line 332
    if-nez v11, :cond_2b

    #@432
    .line 333
    new-instance v44, Landroid/icu/util/ICUException;

    #@434
    const-string/jumbo v45, "Unsafe-backward-set but no mappings"

    #@437
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@43a
    throw v44

    #@43b
    .line 335
    :cond_2b
    if-nez v6, :cond_2c

    #@43d
    .line 347
    new-instance v44, Landroid/icu/text/UnicodeSet;

    #@43f
    const v45, 0xdc00

    #@442
    const v46, 0xdfff

    #@445
    invoke-direct/range {v44 .. v46}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    #@448
    move-object/from16 v0, v44

    #@44a
    move-object/from16 v1, p2

    #@44c
    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@44e
    .line 348
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@450
    move-object/from16 v44, v0

    #@452
    move-object/from16 v0, p2

    #@454
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@456
    move-object/from16 v45, v0

    #@458
    invoke-virtual/range {v44 .. v45}, Landroid/icu/impl/Normalizer2Impl;->addLcccChars(Landroid/icu/text/UnicodeSet;)V

    #@45b
    .line 354
    :goto_e
    new-instance v39, Landroid/icu/impl/USerializedSet;

    #@45d
    invoke-direct/range {v39 .. v39}, Landroid/icu/impl/USerializedSet;-><init>()V

    #@460
    .line 355
    .local v39, "sset":Landroid/icu/impl/USerializedSet;
    div-int/lit8 v44, v24, 0x2

    #@462
    move/from16 v0, v44

    #@464
    new-array v0, v0, [C

    #@466
    move-object/from16 v43, v0

    #@468
    .line 356
    .local v43, "unsafeData":[C
    const/16 v16, 0x0

    #@46a
    :goto_f
    div-int/lit8 v44, v24, 0x2

    #@46c
    move/from16 v0, v16

    #@46e
    move/from16 v1, v44

    #@470
    if-ge v0, v1, :cond_2d

    #@472
    .line 357
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@475
    move-result v44

    #@476
    aput-char v44, v43, v16

    #@478
    .line 356
    add-int/lit8 v16, v16, 0x1

    #@47a
    goto :goto_f

    #@47b
    .line 351
    .end local v39    # "sset":Landroid/icu/impl/USerializedSet;
    .end local v43    # "unsafeData":[C
    :cond_2c
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@47d
    move-object/from16 v44, v0

    #@47f
    invoke-virtual/range {v44 .. v44}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    #@482
    move-result-object v44

    #@483
    move-object/from16 v0, v44

    #@485
    move-object/from16 v1, p2

    #@487
    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@489
    goto :goto_e

    #@48a
    .line 359
    .restart local v39    # "sset":Landroid/icu/impl/USerializedSet;
    .restart local v43    # "unsafeData":[C
    :cond_2d
    and-int/lit8 v24, v24, 0x1

    #@48c
    .line 360
    const/16 v44, 0x0

    #@48e
    move-object/from16 v0, v39

    #@490
    move-object/from16 v1, v43

    #@492
    move/from16 v2, v44

    #@494
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/USerializedSet;->getSet([CI)Z

    #@497
    .line 361
    invoke-virtual/range {v39 .. v39}, Landroid/icu/impl/USerializedSet;->countRanges()I

    #@49a
    move-result v10

    #@49b
    .line 362
    .local v10, "count":I
    const/16 v44, 0x2

    #@49d
    move/from16 v0, v44

    #@49f
    new-array v0, v0, [I

    #@4a1
    move-object/from16 v27, v0

    #@4a3
    .line 363
    .local v27, "range":[I
    const/16 v16, 0x0

    #@4a5
    :goto_10
    move/from16 v0, v16

    #@4a7
    if-ge v0, v10, :cond_2e

    #@4a9
    .line 364
    move-object/from16 v0, v39

    #@4ab
    move/from16 v1, v16

    #@4ad
    move-object/from16 v2, v27

    #@4af
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/USerializedSet;->getRange(I[I)Z

    #@4b2
    .line 365
    move-object/from16 v0, p2

    #@4b4
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@4b6
    move-object/from16 v44, v0

    #@4b8
    const/16 v45, 0x0

    #@4ba
    aget v45, v27, v45

    #@4bc
    const/16 v46, 0x1

    #@4be
    aget v46, v27, v46

    #@4c0
    invoke-virtual/range {v44 .. v46}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@4c3
    .line 363
    add-int/lit8 v16, v16, 0x1

    #@4c5
    goto :goto_10

    #@4c6
    .line 369
    :cond_2e
    const/high16 v7, 0x10000

    #@4c8
    .line 370
    .local v7, "c":I
    const v23, 0xd800

    #@4cb
    .local v23, "lead":I
    :goto_11
    const v44, 0xdc00

    #@4ce
    move/from16 v0, v23

    #@4d0
    move/from16 v1, v44

    #@4d2
    if-ge v0, v1, :cond_30

    #@4d4
    .line 371
    move-object/from16 v0, p2

    #@4d6
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@4d8
    move-object/from16 v44, v0

    #@4da
    add-int/lit16 v0, v7, 0x3ff

    #@4dc
    move/from16 v45, v0

    #@4de
    move-object/from16 v0, v44

    #@4e0
    move/from16 v1, v45

    #@4e2
    invoke-virtual {v0, v7, v1}, Landroid/icu/text/UnicodeSet;->containsNone(II)Z

    #@4e5
    move-result v44

    #@4e6
    if-nez v44, :cond_2f

    #@4e8
    .line 372
    move-object/from16 v0, p2

    #@4ea
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@4ec
    move-object/from16 v44, v0

    #@4ee
    move-object/from16 v0, v44

    #@4f0
    move/from16 v1, v23

    #@4f2
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@4f5
    .line 370
    :cond_2f
    add-int/lit8 v23, v23, 0x1

    #@4f7
    add-int/lit16 v7, v7, 0x400

    #@4f9
    goto :goto_11

    #@4fa
    .line 375
    :cond_30
    move-object/from16 v0, p2

    #@4fc
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@4fe
    move-object/from16 v44, v0

    #@500
    invoke-virtual/range {v44 .. v44}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@503
    .line 376
    move-object/from16 v0, p2

    #@505
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@507
    move-object/from16 v44, v0

    #@509
    move-object/from16 v0, v44

    #@50b
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@50d
    .line 385
    .end local v7    # "c":I
    .end local v10    # "count":I
    .end local v23    # "lead":I
    .end local v27    # "range":[I
    .end local v39    # "sset":Landroid/icu/impl/USerializedSet;
    .end local v43    # "unsafeData":[C
    :cond_31
    :goto_12
    move-object/from16 v0, p1

    #@50f
    move/from16 v1, v24

    #@511
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@514
    .line 390
    const/16 v20, 0xf

    #@516
    .line 391
    aget v25, v18, v20

    #@518
    .line 392
    const/16 v44, 0x10

    #@51a
    aget v44, v18, v44

    #@51c
    sub-int v24, v44, v25

    #@51e
    .line 393
    if-eqz v11, :cond_37

    #@520
    .line 394
    const/16 v44, 0x0

    #@522
    move-object/from16 v0, v44

    #@524
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@526
    .line 395
    const/16 v44, 0x0

    #@528
    move-object/from16 v0, v44

    #@52a
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@52c
    .line 396
    const/16 v44, 0x1

    #@52e
    aget v44, v18, v44

    #@530
    shr-int/lit8 v44, v44, 0x10

    #@532
    move/from16 v0, v44

    #@534
    and-int/lit16 v0, v0, 0xff

    #@536
    move/from16 v44, v0

    #@538
    const/16 v45, 0x2

    #@53a
    move/from16 v0, v44

    #@53c
    move/from16 v1, v45

    #@53e
    if-ne v0, v1, :cond_37

    #@540
    .line 397
    const/16 v44, 0x2

    #@542
    move/from16 v0, v24

    #@544
    move/from16 v1, v44

    #@546
    if-lt v0, v1, :cond_36

    #@548
    .line 398
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@54b
    move-result v14

    #@54c
    .line 399
    .local v14, "header0":C
    and-int/lit16 v15, v14, 0xff

    #@54e
    .line 400
    .local v15, "headerLength":I
    new-array v0, v15, [C

    #@550
    move-object/from16 v44, v0

    #@552
    move-object/from16 v0, v44

    #@554
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@556
    .line 401
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@558
    move-object/from16 v44, v0

    #@55a
    const/16 v45, 0x0

    #@55c
    aput-char v14, v44, v45

    #@55e
    .line 402
    const/16 v16, 0x1

    #@560
    :goto_13
    move/from16 v0, v16

    #@562
    if-ge v0, v15, :cond_34

    #@564
    .line 403
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@566
    move-object/from16 v44, v0

    #@568
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@56b
    move-result v45

    #@56c
    aput-char v45, v44, v16

    #@56e
    .line 402
    add-int/lit8 v16, v16, 0x1

    #@570
    goto :goto_13

    #@571
    .line 377
    .end local v14    # "header0":C
    .end local v15    # "headerLength":I
    :cond_32
    if-eqz v11, :cond_31

    #@573
    .line 379
    if-eqz v6, :cond_33

    #@575
    .line 381
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@577
    move-object/from16 v44, v0

    #@579
    move-object/from16 v0, v44

    #@57b
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@57d
    goto :goto_12

    #@57e
    .line 383
    :cond_33
    new-instance v44, Landroid/icu/util/ICUException;

    #@580
    const-string/jumbo v45, "Missing unsafe-backward-set"

    #@583
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@586
    throw v44

    #@587
    .line 405
    .restart local v14    # "header0":C
    .restart local v15    # "headerLength":I
    :cond_34
    div-int/lit8 v44, v24, 0x2

    #@589
    sub-int v40, v44, v15

    #@58b
    .line 406
    .local v40, "tableLength":I
    move/from16 v0, v40

    #@58d
    new-array v0, v0, [C

    #@58f
    move-object/from16 v44, v0

    #@591
    move-object/from16 v0, v44

    #@593
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@595
    .line 407
    const/16 v16, 0x0

    #@597
    :goto_14
    move/from16 v0, v16

    #@599
    move/from16 v1, v40

    #@59b
    if-ge v0, v1, :cond_35

    #@59d
    .line 408
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@59f
    move-object/from16 v44, v0

    #@5a1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@5a4
    move-result v45

    #@5a5
    aput-char v45, v44, v16

    #@5a7
    .line 407
    add-int/lit8 v16, v16, 0x1

    #@5a9
    goto :goto_14

    #@5aa
    .line 410
    :cond_35
    and-int/lit8 v24, v24, 0x1

    #@5ac
    .line 411
    shr-int/lit8 v44, v14, 0x8

    #@5ae
    const/16 v45, 0x2

    #@5b0
    move/from16 v0, v44

    #@5b2
    move/from16 v1, v45

    #@5b4
    if-eq v0, v1, :cond_37

    #@5b6
    .line 412
    new-instance v44, Landroid/icu/util/ICUException;

    #@5b8
    const-string/jumbo v45, "Fast-Latin table version differs from version in data header"

    #@5bb
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@5be
    throw v44

    #@5bf
    .line 414
    .end local v14    # "header0":C
    .end local v15    # "headerLength":I
    .end local v40    # "tableLength":I
    :cond_36
    if-eqz v6, :cond_37

    #@5c1
    .line 415
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@5c3
    move-object/from16 v44, v0

    #@5c5
    move-object/from16 v0, v44

    #@5c7
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@5c9
    .line 416
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@5cb
    move-object/from16 v44, v0

    #@5cd
    move-object/from16 v0, v44

    #@5cf
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@5d1
    .line 420
    :cond_37
    move-object/from16 v0, p1

    #@5d3
    move/from16 v1, v24

    #@5d5
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@5d8
    .line 422
    const/16 v20, 0x10

    #@5da
    .line 423
    aget v25, v18, v20

    #@5dc
    .line 424
    const/16 v44, 0x11

    #@5de
    aget v44, v18, v44

    #@5e0
    sub-int v24, v44, v25

    #@5e2
    .line 425
    const/16 v44, 0x2

    #@5e4
    move/from16 v0, v24

    #@5e6
    move/from16 v1, v44

    #@5e8
    if-lt v0, v1, :cond_3d

    #@5ea
    .line 426
    if-nez v11, :cond_38

    #@5ec
    .line 427
    new-instance v44, Landroid/icu/util/ICUException;

    #@5ee
    const-string/jumbo v45, "Script order data but no mappings"

    #@5f1
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@5f4
    throw v44

    #@5f5
    .line 429
    :cond_38
    div-int/lit8 v35, v24, 0x2

    #@5f7
    .line 430
    .local v35, "scriptsLength":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    #@5fa
    move-result-object v17

    #@5fb
    .line 431
    .local v17, "inChars":Ljava/nio/CharBuffer;
    invoke-virtual/range {v17 .. v17}, Ljava/nio/CharBuffer;->get()C

    #@5fe
    move-result v44

    #@5ff
    move/from16 v0, v44

    #@601
    iput v0, v11, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@603
    .line 433
    iget v0, v11, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@605
    move/from16 v44, v0

    #@607
    add-int/lit8 v44, v44, 0x1

    #@609
    add-int/lit8 v44, v44, 0x10

    #@60b
    sub-int v34, v35, v44

    #@60d
    .line 434
    .local v34, "scriptStartsLength":I
    const/16 v44, 0x2

    #@60f
    move/from16 v0, v34

    #@611
    move/from16 v1, v44

    #@613
    if-gt v0, v1, :cond_39

    #@615
    .line 435
    new-instance v44, Landroid/icu/util/ICUException;

    #@617
    const-string/jumbo v45, "Script order data too short"

    #@61a
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@61d
    throw v44

    #@61e
    .line 437
    :cond_39
    iget v0, v11, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@620
    move/from16 v44, v0

    #@622
    add-int/lit8 v44, v44, 0x10

    #@624
    move/from16 v0, v44

    #@626
    new-array v0, v0, [C

    #@628
    move-object/from16 v44, v0

    #@62a
    move-object/from16 v0, v44

    #@62c
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@62e
    move-object/from16 v0, v17

    #@630
    move-object/from16 v1, v44

    #@632
    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    #@635
    .line 438
    move/from16 v0, v34

    #@637
    new-array v0, v0, [C

    #@639
    move-object/from16 v44, v0

    #@63b
    move-object/from16 v0, v44

    #@63d
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@63f
    move-object/from16 v0, v17

    #@641
    move-object/from16 v1, v44

    #@643
    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    #@646
    .line 439
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@648
    move-object/from16 v44, v0

    #@64a
    const/16 v45, 0x0

    #@64c
    aget-char v44, v44, v45

    #@64e
    if-nez v44, :cond_3a

    #@650
    .line 440
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@652
    move-object/from16 v44, v0

    #@654
    const/16 v45, 0x1

    #@656
    aget-char v44, v44, v45

    #@658
    const/16 v45, 0x300

    #@65a
    move/from16 v0, v44

    #@65c
    move/from16 v1, v45

    #@65e
    if-eq v0, v1, :cond_3b

    #@660
    .line 443
    :cond_3a
    new-instance v44, Landroid/icu/util/ICUException;

    #@662
    const-string/jumbo v45, "Script order data not valid"

    #@665
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@668
    throw v44

    #@669
    .line 441
    :cond_3b
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@66b
    move-object/from16 v44, v0

    #@66d
    add-int/lit8 v45, v34, -0x1

    #@66f
    aget-char v44, v44, v45

    #@671
    .line 442
    const v45, 0xff00

    #@674
    .line 441
    move/from16 v0, v44

    #@676
    move/from16 v1, v45

    #@678
    if-ne v0, v1, :cond_3a

    #@67a
    .line 452
    .end local v17    # "inChars":Ljava/nio/CharBuffer;
    .end local v34    # "scriptStartsLength":I
    .end local v35    # "scriptsLength":I
    :cond_3c
    :goto_15
    move-object/from16 v0, p1

    #@67c
    move/from16 v1, v24

    #@67e
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@681
    .line 454
    const/16 v20, 0x11

    #@683
    .line 455
    aget v25, v18, v20

    #@685
    .line 456
    const/16 v44, 0x12

    #@687
    aget v44, v18, v44

    #@689
    sub-int v24, v44, v25

    #@68b
    .line 457
    const/16 v44, 0x100

    #@68d
    move/from16 v0, v24

    #@68f
    move/from16 v1, v44

    #@691
    if-lt v0, v1, :cond_43

    #@693
    .line 458
    if-nez v11, :cond_3e

    #@695
    .line 459
    new-instance v44, Landroid/icu/util/ICUException;

    #@697
    const-string/jumbo v45, "Data for compressible primary lead bytes but no mappings"

    #@69a
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@69d
    throw v44

    #@69e
    .line 445
    :cond_3d
    if-eqz v11, :cond_3c

    #@6a0
    .line 447
    if-eqz v6, :cond_3c

    #@6a2
    .line 448
    iget v0, v6, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@6a4
    move/from16 v44, v0

    #@6a6
    move/from16 v0, v44

    #@6a8
    iput v0, v11, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@6aa
    .line 449
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@6ac
    move-object/from16 v44, v0

    #@6ae
    move-object/from16 v0, v44

    #@6b0
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@6b2
    .line 450
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@6b4
    move-object/from16 v44, v0

    #@6b6
    move-object/from16 v0, v44

    #@6b8
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@6ba
    goto :goto_15

    #@6bb
    .line 461
    :cond_3e
    const/16 v44, 0x100

    #@6bd
    move/from16 v0, v44

    #@6bf
    new-array v0, v0, [Z

    #@6c1
    move-object/from16 v44, v0

    #@6c3
    move-object/from16 v0, v44

    #@6c5
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    #@6c7
    .line 462
    const/16 v16, 0x0

    #@6c9
    :goto_16
    const/16 v44, 0x100

    #@6cb
    move/from16 v0, v16

    #@6cd
    move/from16 v1, v44

    #@6cf
    if-ge v0, v1, :cond_40

    #@6d1
    .line 463
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    #@6d3
    move-object/from16 v45, v0

    #@6d5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    #@6d8
    move-result v44

    #@6d9
    if-eqz v44, :cond_3f

    #@6db
    const/16 v44, 0x1

    #@6dd
    :goto_17
    aput-boolean v44, v45, v16

    #@6df
    .line 462
    add-int/lit8 v16, v16, 0x1

    #@6e1
    goto :goto_16

    #@6e2
    .line 463
    :cond_3f
    const/16 v44, 0x0

    #@6e4
    goto :goto_17

    #@6e5
    .line 465
    :cond_40
    move/from16 v0, v24

    #@6e7
    add-int/lit16 v0, v0, -0x100

    #@6e9
    move/from16 v24, v0

    #@6eb
    .line 473
    :cond_41
    :goto_18
    move-object/from16 v0, p1

    #@6ed
    move/from16 v1, v24

    #@6ef
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@6f2
    .line 475
    const/16 v20, 0x12

    #@6f4
    .line 476
    aget v25, v18, v20

    #@6f6
    .line 477
    const/16 v44, 0x13

    #@6f8
    aget v44, v18, v44

    #@6fa
    sub-int v24, v44, v25

    #@6fc
    .line 478
    move-object/from16 v0, p1

    #@6fe
    move/from16 v1, v24

    #@700
    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@703
    .line 480
    move-object/from16 v0, p2

    #@705
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@707
    move-object/from16 v44, v0

    #@709
    invoke-virtual/range {v44 .. v44}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@70c
    move-result-object v42

    #@70d
    check-cast v42, Landroid/icu/impl/coll/CollationSettings;

    #@70f
    .line 481
    .local v42, "ts":Landroid/icu/impl/coll/CollationSettings;
    const/16 v44, 0x1

    #@711
    aget v44, v18, v44

    #@713
    const v45, 0xffff

    #@716
    and-int v26, v44, v45

    #@718
    .line 482
    .local v26, "options":I
    const/16 v44, 0x180

    #@71a
    move/from16 v0, v44

    #@71c
    new-array v13, v0, [C

    #@71e
    .line 484
    .local v13, "fastLatinPrimaries":[C
    move-object/from16 v0, p2

    #@720
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@722
    move-object/from16 v44, v0

    #@724
    .line 483
    move-object/from16 v0, v44

    #@726
    move-object/from16 v1, v42

    #@728
    invoke-static {v0, v1, v13}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    #@72b
    move-result v12

    #@72c
    .line 485
    .local v12, "fastLatinOptions":I
    move-object/from16 v0, v42

    #@72e
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@730
    move/from16 v44, v0

    #@732
    move/from16 v0, v26

    #@734
    move/from16 v1, v44

    #@736
    if-ne v0, v1, :cond_45

    #@738
    move-object/from16 v0, v42

    #@73a
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@73c
    move-wide/from16 v44, v0

    #@73e
    const-wide/16 v46, 0x0

    #@740
    cmp-long v44, v44, v46

    #@742
    if-eqz v44, :cond_45

    #@744
    .line 486
    move-object/from16 v0, v42

    #@746
    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@748
    move-object/from16 v44, v0

    #@74a
    move-object/from16 v0, v28

    #@74c
    move-object/from16 v1, v44

    #@74e
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@751
    move-result v44

    #@752
    .line 485
    if-eqz v44, :cond_45

    #@754
    .line 487
    move-object/from16 v0, v42

    #@756
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    #@758
    move/from16 v44, v0

    #@75a
    move/from16 v0, v44

    #@75c
    if-ne v12, v0, :cond_45

    #@75e
    .line 488
    if-ltz v12, :cond_42

    #@760
    .line 489
    move-object/from16 v0, v42

    #@762
    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    #@764
    move-object/from16 v44, v0

    #@766
    move-object/from16 v0, v44

    #@768
    invoke-static {v13, v0}, Ljava/util/Arrays;->equals([C[C)Z

    #@76b
    move-result v44

    #@76c
    .line 485
    if-eqz v44, :cond_45

    #@76e
    .line 490
    :cond_42
    return-void

    #@76f
    .line 466
    .end local v12    # "fastLatinOptions":I
    .end local v13    # "fastLatinPrimaries":[C
    .end local v26    # "options":I
    .end local v42    # "ts":Landroid/icu/impl/coll/CollationSettings;
    :cond_43
    if-eqz v11, :cond_41

    #@771
    .line 468
    if-eqz v6, :cond_44

    #@773
    .line 469
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    #@775
    move-object/from16 v44, v0

    #@777
    move-object/from16 v0, v44

    #@779
    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    #@77b
    goto/16 :goto_18

    #@77d
    .line 471
    :cond_44
    new-instance v44, Landroid/icu/util/ICUException;

    #@77f
    const-string/jumbo v45, "Missing data for compressible primary lead bytes"

    #@782
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@785
    throw v44

    #@786
    .line 493
    .restart local v12    # "fastLatinOptions":I
    .restart local v13    # "fastLatinPrimaries":[C
    .restart local v26    # "options":I
    .restart local v42    # "ts":Landroid/icu/impl/coll/CollationSettings;
    :cond_45
    move-object/from16 v0, p2

    #@788
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@78a
    move-object/from16 v44, v0

    #@78c
    invoke-virtual/range {v44 .. v44}, Landroid/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Landroid/icu/impl/coll/SharedObject;

    #@78f
    move-result-object v38

    #@790
    check-cast v38, Landroid/icu/impl/coll/CollationSettings;

    #@792
    .line 494
    .local v38, "settings":Landroid/icu/impl/coll/CollationSettings;
    move/from16 v0, v26

    #@794
    move-object/from16 v1, v38

    #@796
    iput v0, v1, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@798
    .line 496
    move-object/from16 v0, p2

    #@79a
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@79c
    move-object/from16 v44, v0

    #@79e
    .line 497
    invoke-virtual/range {v38 .. v38}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    #@7a1
    move-result v45

    #@7a2
    move/from16 v0, v45

    #@7a4
    add-int/lit16 v0, v0, 0x1000

    #@7a6
    move/from16 v45, v0

    #@7a8
    .line 496
    invoke-virtual/range {v44 .. v45}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    #@7ab
    move-result-wide v44

    #@7ac
    move-wide/from16 v0, v44

    #@7ae
    move-object/from16 v2, v38

    #@7b0
    iput-wide v0, v2, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@7b2
    .line 498
    move-object/from16 v0, v38

    #@7b4
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@7b6
    move-wide/from16 v44, v0

    #@7b8
    const-wide/16 v46, 0x0

    #@7ba
    cmp-long v44, v44, v46

    #@7bc
    if-nez v44, :cond_46

    #@7be
    .line 499
    new-instance v44, Landroid/icu/util/ICUException;

    #@7c0
    const-string/jumbo v45, "The maxVariable could not be mapped to a variableTop"

    #@7c3
    invoke-direct/range {v44 .. v45}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@7c6
    throw v44

    #@7c7
    .line 502
    :cond_46
    if-eqz v29, :cond_47

    #@7c9
    .line 503
    move-object/from16 v0, v38

    #@7cb
    move-object/from16 v1, v28

    #@7cd
    move/from16 v2, v29

    #@7cf
    move-object/from16 v3, v31

    #@7d1
    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/icu/impl/coll/CollationSettings;->aliasReordering(Landroid/icu/impl/coll/CollationData;[II[B)V

    #@7d4
    .line 507
    :cond_47
    move-object/from16 v0, p2

    #@7d6
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@7d8
    move-object/from16 v44, v0

    #@7da
    .line 508
    move-object/from16 v0, v38

    #@7dc
    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    #@7de
    move-object/from16 v45, v0

    #@7e0
    .line 506
    move-object/from16 v0, v44

    #@7e2
    move-object/from16 v1, v38

    #@7e4
    move-object/from16 v2, v45

    #@7e6
    invoke-static {v0, v1, v2}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    #@7e9
    move-result v44

    #@7ea
    move/from16 v0, v44

    #@7ec
    move-object/from16 v1, v38

    #@7ee
    iput v0, v1, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    #@7f0
    .line 98
    return-void
.end method
