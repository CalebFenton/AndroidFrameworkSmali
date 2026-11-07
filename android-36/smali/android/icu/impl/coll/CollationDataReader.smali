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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DATA_FORMAT:I = 0x55436f6c

.field private static final blacklist IS_ACCEPTABLE:Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

.field static final blacklist IX_CE32S_OFFSET:I = 0xb

.field static final blacklist IX_CES_OFFSET:I = 0x9

.field static final blacklist IX_COMPRESSIBLE_BYTES_OFFSET:I = 0x11

.field static final blacklist IX_CONTEXTS_OFFSET:I = 0xd

.field static final blacklist IX_FAST_LATIN_TABLE_OFFSET:I = 0xf

.field static final blacklist IX_INDEXES_LENGTH:I = 0x0

.field static final blacklist IX_JAMO_CE32S_START:I = 0x4

.field static final blacklist IX_OPTIONS:I = 0x1

.field static final blacklist IX_REORDER_CODES_OFFSET:I = 0x5

.field static final blacklist IX_REORDER_TABLE_OFFSET:I = 0x6

.field static final blacklist IX_RESERVED10_OFFSET:I = 0xa

.field static final blacklist IX_RESERVED18_OFFSET:I = 0x12

.field static final blacklist IX_RESERVED2:I = 0x2

.field static final blacklist IX_RESERVED3:I = 0x3

.field static final blacklist IX_RESERVED8_OFFSET:I = 0x8

.field static final blacklist IX_ROOT_ELEMENTS_OFFSET:I = 0xc

.field static final blacklist IX_SCRIPTS_OFFSET:I = 0x10

.field static final blacklist IX_TOTAL_SIZE:I = 0x13

.field static final blacklist IX_TRIE_OFFSET:I = 0x7

.field static final blacklist IX_UNSAFE_BWD_OFFSET:I = 0xe


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 32
    nop

    .line 500
    new-instance v0, Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;-><init>(Landroid/icu/impl/coll/CollationDataReader-IA;)V

    sput-object v0, Landroid/icu/impl/coll/CollationDataReader;->IS_ACCEPTABLE:Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Landroid/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Landroid/icu/impl/coll/CollationTailoring;)V
    .registers 32
    .param p0, "base"    # Landroid/icu/impl/coll/CollationTailoring;
    .param p1, "inBytes"    # Ljava/nio/ByteBuffer;
    .param p2, "tailoring"    # Landroid/icu/impl/coll/CollationTailoring;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x55436f6c

    sget-object v4, Landroid/icu/impl/coll/CollationDataReader;->IS_ACCEPTABLE:Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

    invoke-static {v1, v3, v4}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    move-result v3

    iput v3, v2, Landroid/icu/impl/coll/CollationTailoring;->version:I

    .line 103
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationTailoring;->getUCAVersion()I

    move-result v3

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationTailoring;->getUCAVersion()I

    move-result v4

    if-ne v3, v4, :cond_1e

    goto :goto_26

    .line 104
    :cond_1e
    new-instance v3, Landroid/icu/util/ICUException;

    const-string v4, "Tailoring UCA version differs from base data UCA version"

    invoke-direct {v3, v4}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_26
    :goto_26
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 108
    .local v3, "inLength":I
    const-string v4, "not enough bytes"

    const/16 v5, 0x8

    if-lt v3, v5, :cond_512

    .line 111
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 112
    .local v6, "indexesLength":I
    const/4 v7, 0x2

    if-lt v6, v7, :cond_506

    mul-int/lit8 v8, v6, 0x4

    if-lt v3, v8, :cond_506

    .line 115
    const/16 v8, 0x14

    new-array v8, v8, [I

    .line 116
    .local v8, "inIndexes":[I
    const/4 v9, 0x0

    aput v6, v8, v9

    .line 117
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_43
    if-ge v10, v6, :cond_51

    array-length v11, v8

    if-ge v10, v11, :cond_51

    .line 118
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    aput v11, v8, v10

    .line 117
    add-int/lit8 v10, v10, 0x1

    goto :goto_43

    .line 120
    .end local v10    # "i":I
    :cond_51
    move v10, v6

    .restart local v10    # "i":I
    :goto_52
    array-length v11, v8

    if-ge v10, v11, :cond_5b

    .line 121
    const/4 v11, -0x1

    aput v11, v8, v10

    .line 120
    add-int/lit8 v10, v10, 0x1

    goto :goto_52

    .line 123
    .end local v10    # "i":I
    :cond_5b
    array-length v10, v8

    const/4 v11, 0x4

    if-le v6, v10, :cond_66

    .line 124
    array-length v10, v8

    sub-int v10, v6, v10

    mul-int/2addr v10, v11

    invoke-static {v1, v10}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 137
    :cond_66
    const/16 v10, 0x13

    if-le v6, v10, :cond_6d

    .line 138
    aget v10, v8, v10

    .local v10, "length":I
    goto :goto_76

    .line 139
    .end local v10    # "length":I
    :cond_6d
    const/4 v10, 0x5

    if-le v6, v10, :cond_75

    .line 140
    add-int/lit8 v10, v6, -0x1

    aget v10, v8, v10

    .restart local v10    # "length":I
    goto :goto_76

    .line 142
    .end local v10    # "length":I
    :cond_75
    const/4 v10, 0x0

    .line 144
    .restart local v10    # "length":I
    :goto_76
    if-lt v3, v10, :cond_500

    .line 148
    if-nez v0, :cond_7c

    const/4 v12, 0x0

    goto :goto_7e

    :cond_7c
    iget-object v12, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    .line 151
    .local v12, "baseData":Landroid/icu/impl/coll/CollationData;
    :goto_7e
    const/4 v13, 0x5

    .line 152
    .local v13, "index":I
    aget v14, v8, v13

    .line 153
    .local v14, "offset":I
    add-int/lit8 v15, v13, 0x1

    aget v15, v8, v15

    sub-int/2addr v15, v14

    .line 154
    .end local v10    # "length":I
    .local v15, "length":I
    if-lt v15, v11, :cond_b4

    .line 155
    if-eqz v12, :cond_ac

    .line 160
    const/16 v16, 0x1

    div-int/lit8 v10, v15, 0x4

    .line 161
    .local v10, "reorderCodesLength":I
    and-int/lit8 v4, v15, 0x3

    invoke-static {v1, v10, v4}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v4

    .line 167
    .local v4, "reorderCodes":[I
    const/16 v18, 0x0

    move/from16 v7, v18

    .line 168
    .local v7, "reorderRangesLength":I
    :goto_98
    if-ge v7, v10, :cond_a9

    sub-int v18, v10, v7

    add-int/lit8 v18, v18, -0x1

    aget v18, v4, v18

    const/high16 v20, -0x10000

    and-int v18, v18, v20

    if-eqz v18, :cond_a9

    .line 170
    add-int/lit8 v7, v7, 0x1

    goto :goto_98

    .line 172
    :cond_a9
    nop

    .line 173
    sub-int/2addr v10, v7

    .line 174
    .end local v7    # "reorderRangesLength":I
    goto :goto_bc

    .line 158
    .end local v4    # "reorderCodes":[I
    .end local v10    # "reorderCodesLength":I
    :cond_ac
    new-instance v4, Landroid/icu/util/ICUException;

    const-string v5, "Collation base data must not reorder scripts"

    invoke-direct {v4, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 175
    :cond_b4
    const/16 v16, 0x1

    new-array v4, v9, [I

    .line 176
    .restart local v4    # "reorderCodes":[I
    const/4 v10, 0x0

    .line 177
    .restart local v10    # "reorderCodesLength":I
    invoke-static {v1, v15}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 183
    :goto_bc
    const/4 v7, 0x0

    .line 184
    .local v7, "reorderTable":[B
    const/4 v13, 0x6

    .line 185
    aget v14, v8, v13

    .line 186
    add-int/lit8 v18, v13, 0x1

    aget v18, v8, v18

    sub-int v15, v18, v14

    .line 187
    const/16 v9, 0x100

    if-lt v15, v9, :cond_dc

    .line 188
    if-eqz v10, :cond_d4

    .line 191
    new-array v7, v9, [B

    .line 192
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 193
    add-int/lit16 v15, v15, -0x100

    goto :goto_dc

    .line 189
    :cond_d4
    new-instance v5, Landroid/icu/util/ICUException;

    const-string v9, "Reordering table without reordering codes"

    invoke-direct {v5, v9}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 198
    :cond_dc
    :goto_dc
    invoke-static {v1, v15}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 200
    const-wide v20, 0xff000000L

    if-eqz v12, :cond_fe

    move/from16 v22, v10

    .end local v10    # "reorderCodesLength":I
    .local v22, "reorderCodesLength":I
    iget-wide v9, v12, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    aget v11, v8, v16

    move/from16 v24, v6

    .end local v6    # "indexesLength":I
    .local v24, "indexesLength":I
    int-to-long v5, v11

    and-long v5, v5, v20

    cmp-long v5, v9, v5

    if-nez v5, :cond_f6

    goto :goto_102

    .line 201
    :cond_f6
    new-instance v5, Landroid/icu/util/ICUException;

    const-string v6, "Tailoring numeric primary weight differs from base data"

    invoke-direct {v5, v6}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 200
    .end local v22    # "reorderCodesLength":I
    .end local v24    # "indexesLength":I
    .restart local v6    # "indexesLength":I
    .restart local v10    # "reorderCodesLength":I
    :cond_fe
    move/from16 v24, v6

    move/from16 v22, v10

    .line 203
    .end local v6    # "indexesLength":I
    .end local v10    # "reorderCodesLength":I
    .restart local v22    # "reorderCodesLength":I
    .restart local v24    # "indexesLength":I
    :goto_102
    const/4 v5, 0x0

    .line 205
    .local v5, "data":Landroid/icu/impl/coll/CollationData;
    const/4 v6, 0x7

    .line 206
    .end local v13    # "index":I
    .local v6, "index":I
    aget v9, v8, v6

    .line 207
    .end local v14    # "offset":I
    .local v9, "offset":I
    add-int/lit8 v10, v6, 0x1

    aget v10, v8, v10

    sub-int/2addr v10, v9

    .line 208
    .end local v15    # "length":I
    .local v10, "length":I
    const/16 v11, 0x8

    if-lt v10, v11, :cond_137

    .line 209
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationTailoring;->ensureOwnedData()V

    .line 210
    iget-object v5, v2, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    .line 211
    iput-object v12, v5, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 212
    aget v11, v8, v16

    int-to-long v13, v11

    and-long v13, v13, v20

    iput-wide v13, v5, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    .line 213
    invoke-static {v1}, Landroid/icu/impl/Trie2_32;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_32;

    move-result-object v11

    iput-object v11, v2, Landroid/icu/impl/coll/CollationTailoring;->trie:Landroid/icu/impl/Trie2_32;

    iput-object v11, v5, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    .line 214
    iget-object v11, v5, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v11}, Landroid/icu/impl/Trie2_32;->getSerializedLength()I

    move-result v11

    .line 215
    .local v11, "trieLength":I
    if-gt v11, v10, :cond_12f

    .line 218
    sub-int/2addr v10, v11

    .line 219
    .end local v11    # "trieLength":I
    goto :goto_13b

    .line 216
    .restart local v11    # "trieLength":I
    :cond_12f
    new-instance v13, Landroid/icu/util/ICUException;

    const-string v14, "Not enough bytes for the mappings trie"

    invoke-direct {v13, v14}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 219
    .end local v11    # "trieLength":I
    :cond_137
    if-eqz v12, :cond_4f6

    .line 221
    iput-object v12, v2, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    .line 225
    :goto_13b
    invoke-static {v1, v10}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 227
    const/16 v6, 0x8

    .line 228
    aget v9, v8, v6

    .line 229
    add-int/lit8 v11, v6, 0x1

    aget v11, v8, v11

    sub-int/2addr v11, v9

    .line 230
    .end local v10    # "length":I
    .local v11, "length":I
    invoke-static {v1, v11}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 232
    const/16 v6, 0x9

    .line 233
    aget v9, v8, v6

    .line 234
    add-int/lit8 v10, v6, 0x1

    aget v10, v8, v10

    sub-int/2addr v10, v9

    .line 235
    .end local v11    # "length":I
    .restart local v10    # "length":I
    const/16 v11, 0x8

    if-lt v10, v11, :cond_16c

    .line 236
    if-eqz v5, :cond_164

    .line 239
    div-int/lit8 v11, v10, 0x8

    and-int/lit8 v13, v10, 0x7

    invoke-static {v1, v11, v13}, Landroid/icu/impl/ICUBinary;->getLongs(Ljava/nio/ByteBuffer;II)[J

    move-result-object v11

    iput-object v11, v5, Landroid/icu/impl/coll/CollationData;->ces:[J

    goto :goto_16f

    .line 237
    :cond_164
    new-instance v11, Landroid/icu/util/ICUException;

    const-string v13, "Tailored ces without tailored trie"

    invoke-direct {v11, v13}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 241
    :cond_16c
    invoke-static {v1, v10}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 244
    :goto_16f
    const/16 v6, 0xa

    .line 245
    aget v9, v8, v6

    .line 246
    add-int/lit8 v11, v6, 0x1

    aget v11, v8, v11

    sub-int/2addr v11, v9

    .line 247
    .end local v10    # "length":I
    .restart local v11    # "length":I
    invoke-static {v1, v11}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 249
    const/16 v6, 0xb

    .line 250
    aget v9, v8, v6

    .line 251
    add-int/lit8 v10, v6, 0x1

    aget v10, v8, v10

    sub-int/2addr v10, v9

    .line 252
    .end local v11    # "length":I
    .restart local v10    # "length":I
    const/4 v11, 0x4

    if-lt v10, v11, :cond_19c

    .line 253
    if-eqz v5, :cond_194

    .line 256
    div-int/lit8 v11, v10, 0x4

    and-int/lit8 v13, v10, 0x3

    invoke-static {v1, v11, v13}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v11

    iput-object v11, v5, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    goto :goto_19f

    .line 254
    :cond_194
    new-instance v11, Landroid/icu/util/ICUException;

    const-string v13, "Tailored ce32s without tailored trie"

    invoke-direct {v11, v13}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 258
    :cond_19c
    invoke-static {v1, v10}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 261
    :goto_19f
    const/16 v23, 0x4

    aget v11, v8, v23

    .line 262
    .local v11, "jamoCE32sStart":I
    if-ltz v11, :cond_1c2

    .line 263
    if-eqz v5, :cond_1ba

    iget-object v13, v5, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    if-eqz v13, :cond_1ba

    .line 266
    const/16 v13, 0x43

    new-array v14, v13, [I

    iput-object v14, v5, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    .line 267
    iget-object v14, v5, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    iget-object v15, v5, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    const/4 v0, 0x0

    invoke-static {v14, v11, v15, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1cb

    .line 264
    :cond_1ba
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v13, "JamoCE32sStart index into non-existent ce32s[]"

    invoke-direct {v0, v13}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1c2
    if-nez v5, :cond_1c5

    goto :goto_1cb

    .line 270
    :cond_1c5
    if-eqz v12, :cond_4ec

    .line 271
    iget-object v0, v12, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    iput-object v0, v5, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    .line 276
    :goto_1cb
    const/16 v0, 0xc

    .line 277
    .end local v6    # "index":I
    .local v0, "index":I
    aget v6, v8, v0

    .line 278
    .end local v9    # "offset":I
    .local v6, "offset":I
    add-int/lit8 v9, v0, 0x1

    aget v9, v8, v9

    sub-int/2addr v9, v6

    .line 279
    .end local v10    # "length":I
    .local v9, "length":I
    const/4 v10, 0x4

    if-lt v9, v10, :cond_251

    .line 280
    div-int/lit8 v13, v9, 0x4

    .line 281
    .local v13, "rootElementsLength":I
    if-eqz v5, :cond_245

    .line 284
    if-le v13, v10, :cond_239

    .line 287
    new-array v10, v13, [J

    iput-object v10, v5, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    .line 288
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1e2
    if-ge v10, v13, :cond_1ff

    .line 289
    iget-object v14, v5, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    move-object/from16 v20, v8

    move/from16 v21, v9

    .end local v8    # "inIndexes":[I
    .end local v9    # "length":I
    .local v20, "inIndexes":[I
    .local v21, "length":I
    int-to-long v8, v15

    const-wide v25, 0xffffffffL

    and-long v8, v8, v25

    aput-wide v8, v14, v10

    .line 288
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v20

    move/from16 v9, v21

    goto :goto_1e2

    .end local v20    # "inIndexes":[I
    .end local v21    # "length":I
    .restart local v8    # "inIndexes":[I
    .restart local v9    # "length":I
    :cond_1ff
    move-object/from16 v20, v8

    move/from16 v21, v9

    .line 291
    .end local v8    # "inIndexes":[I
    .end local v9    # "length":I
    .end local v10    # "i":I
    .restart local v20    # "inIndexes":[I
    .restart local v21    # "length":I
    iget-object v8, v5, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    .line 292
    .local v8, "commonSecTer":J
    const-wide/32 v14, 0x5000500

    cmp-long v10, v8, v14

    if-nez v10, :cond_22f

    .line 295
    iget-object v10, v5, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    const/16 v23, 0x4

    aget-wide v14, v10, v23

    .line 296
    .local v14, "secTerBoundaries":J
    const/16 v10, 0x18

    ushr-long v25, v14, v10

    const-wide/16 v27, 0x45

    cmp-long v10, v25, v27

    if-ltz v10, :cond_225

    .line 301
    and-int/lit8 v10, v21, 0x3

    move/from16 v23, v0

    move v9, v10

    .end local v21    # "length":I
    .local v10, "length":I
    goto :goto_257

    .line 299
    .end local v10    # "length":I
    .restart local v21    # "length":I
    :cond_225
    new-instance v10, Landroid/icu/util/ICUException;

    move/from16 v23, v0

    .end local v0    # "index":I
    .local v23, "index":I
    const-string v0, "[fixed last secondary common byte] is too low"

    invoke-direct {v10, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 293
    .end local v14    # "secTerBoundaries":J
    .end local v23    # "index":I
    .restart local v0    # "index":I
    :cond_22f
    move/from16 v23, v0

    .end local v0    # "index":I
    .restart local v23    # "index":I
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v10, "Common sec/ter weights in base data differ from the hardcoded value"

    invoke-direct {v0, v10}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    .end local v20    # "inIndexes":[I
    .end local v21    # "length":I
    .end local v23    # "index":I
    .restart local v0    # "index":I
    .local v8, "inIndexes":[I
    .restart local v9    # "length":I
    :cond_239
    move/from16 v23, v0

    move-object/from16 v20, v8

    .end local v0    # "index":I
    .end local v8    # "inIndexes":[I
    .restart local v20    # "inIndexes":[I
    .restart local v23    # "index":I
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v8, "Root elements array too short"

    invoke-direct {v0, v8}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    .end local v20    # "inIndexes":[I
    .end local v23    # "index":I
    .restart local v0    # "index":I
    .restart local v8    # "inIndexes":[I
    :cond_245
    move/from16 v23, v0

    move-object/from16 v20, v8

    .end local v0    # "index":I
    .end local v8    # "inIndexes":[I
    .restart local v20    # "inIndexes":[I
    .restart local v23    # "index":I
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v8, "Root elements but no mappings"

    invoke-direct {v0, v8}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    .end local v13    # "rootElementsLength":I
    .end local v20    # "inIndexes":[I
    .end local v23    # "index":I
    .restart local v0    # "index":I
    .restart local v8    # "inIndexes":[I
    :cond_251
    move/from16 v23, v0

    move-object/from16 v20, v8

    move/from16 v21, v9

    .line 303
    .end local v0    # "index":I
    .end local v8    # "inIndexes":[I
    .restart local v20    # "inIndexes":[I
    .restart local v23    # "index":I
    :goto_257
    invoke-static {v1, v9}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 305
    const/16 v0, 0xd

    .line 306
    .end local v23    # "index":I
    .restart local v0    # "index":I
    aget v6, v20, v0

    .line 307
    add-int/lit8 v8, v0, 0x1

    aget v8, v20, v8

    sub-int/2addr v8, v6

    .line 308
    .end local v9    # "length":I
    .local v8, "length":I
    const/4 v9, 0x2

    if-lt v8, v9, :cond_27b

    .line 309
    if-eqz v5, :cond_273

    .line 312
    div-int/lit8 v9, v8, 0x2

    and-int/lit8 v10, v8, 0x1

    invoke-static {v1, v9, v10}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    goto :goto_27e

    .line 310
    :cond_273
    new-instance v9, Landroid/icu/util/ICUException;

    const-string v10, "Tailored contexts without tailored trie"

    invoke-direct {v9, v10}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 314
    :cond_27b
    invoke-static {v1, v8}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 317
    :goto_27e
    const/16 v0, 0xe

    .line 318
    aget v6, v20, v0

    .line 319
    add-int/lit8 v9, v0, 0x1

    aget v9, v20, v9

    sub-int/2addr v9, v6

    .line 320
    .end local v8    # "length":I
    .restart local v9    # "length":I
    const/4 v8, 0x2

    if-lt v9, v8, :cond_31e

    .line 321
    if-eqz v5, :cond_312

    .line 324
    const v8, 0xdc00

    if-nez v12, :cond_2a3

    .line 336
    new-instance v10, Landroid/icu/text/UnicodeSet;

    const v13, 0xdfff

    invoke-direct {v10, v8, v13}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    iput-object v10, v2, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    .line 337
    iget-object v10, v5, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iget-object v13, v2, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v10, v13}, Landroid/icu/impl/Normalizer2Impl;->addLcccChars(Landroid/icu/text/UnicodeSet;)V

    goto :goto_2ab

    .line 340
    :cond_2a3
    iget-object v10, v12, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v10}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    move-result-object v10

    iput-object v10, v2, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    .line 343
    :goto_2ab
    new-instance v10, Landroid/icu/impl/USerializedSet;

    invoke-direct {v10}, Landroid/icu/impl/USerializedSet;-><init>()V

    .line 344
    .local v10, "sset":Landroid/icu/impl/USerializedSet;
    div-int/lit8 v13, v9, 0x2

    and-int/lit8 v14, v9, 0x1

    invoke-static {v1, v13, v14}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v13

    .line 345
    .local v13, "unsafeData":[C
    const/4 v9, 0x0

    .line 346
    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/icu/impl/USerializedSet;->getSet([CI)Z

    .line 347
    invoke-virtual {v10}, Landroid/icu/impl/USerializedSet;->countRanges()I

    move-result v14

    .line 348
    .local v14, "count":I
    const/4 v15, 0x2

    new-array v8, v15, [I

    .line 349
    .local v8, "range":[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2c5
    if-ge v15, v14, :cond_2e4

    .line 350
    invoke-virtual {v10, v15, v8}, Landroid/icu/impl/USerializedSet;->getRange(I[I)Z

    .line 351
    move/from16 v23, v0

    .end local v0    # "index":I
    .restart local v23    # "index":I
    iget-object v0, v2, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    move/from16 v25, v3

    const/16 v18, 0x0

    .end local v3    # "inLength":I
    .local v25, "inLength":I
    aget v3, v8, v18

    move/from16 v26, v6

    .end local v6    # "offset":I
    .local v26, "offset":I
    aget v6, v8, v16

    invoke-virtual {v0, v3, v6}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 349
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v23

    move/from16 v3, v25

    move/from16 v6, v26

    goto :goto_2c5

    .end local v23    # "index":I
    .end local v25    # "inLength":I
    .end local v26    # "offset":I
    .restart local v0    # "index":I
    .restart local v3    # "inLength":I
    .restart local v6    # "offset":I
    :cond_2e4
    move/from16 v23, v0

    move/from16 v25, v3

    move/from16 v26, v6

    .line 355
    .end local v0    # "index":I
    .end local v3    # "inLength":I
    .end local v6    # "offset":I
    .end local v15    # "i":I
    .restart local v23    # "index":I
    .restart local v25    # "inLength":I
    .restart local v26    # "offset":I
    const/high16 v0, 0x10000

    .line 356
    .local v0, "c":I
    const v3, 0xd800

    .local v3, "lead":I
    :goto_2ef
    const v6, 0xdc00

    if-ge v3, v6, :cond_308

    .line 357
    iget-object v15, v2, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    add-int/lit16 v6, v0, 0x3ff

    invoke-virtual {v15, v0, v6}, Landroid/icu/text/UnicodeSet;->containsNone(II)Z

    move-result v6

    if-nez v6, :cond_303

    .line 358
    iget-object v6, v2, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 356
    :cond_303
    add-int/lit8 v3, v3, 0x1

    add-int/lit16 v0, v0, 0x400

    goto :goto_2ef

    .line 361
    .end local v3    # "lead":I
    :cond_308
    iget-object v3, v2, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 362
    iget-object v3, v2, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    iput-object v3, v5, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    .line 363
    .end local v0    # "c":I
    .end local v8    # "range":[I
    .end local v10    # "sset":Landroid/icu/impl/USerializedSet;
    .end local v13    # "unsafeData":[C
    .end local v14    # "count":I
    :goto_311
    goto :goto_32d

    .line 322
    .end local v23    # "index":I
    .end local v25    # "inLength":I
    .end local v26    # "offset":I
    .local v0, "index":I
    .local v3, "inLength":I
    .restart local v6    # "offset":I
    :cond_312
    move/from16 v23, v0

    move/from16 v25, v3

    .end local v0    # "index":I
    .end local v3    # "inLength":I
    .restart local v23    # "index":I
    .restart local v25    # "inLength":I
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v3, "Unsafe-backward-set but no mappings"

    invoke-direct {v0, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    .end local v23    # "index":I
    .end local v25    # "inLength":I
    .restart local v0    # "index":I
    .restart local v3    # "inLength":I
    :cond_31e
    move/from16 v23, v0

    move/from16 v25, v3

    move/from16 v26, v6

    .end local v0    # "index":I
    .end local v3    # "inLength":I
    .end local v6    # "offset":I
    .restart local v23    # "index":I
    .restart local v25    # "inLength":I
    .restart local v26    # "offset":I
    if-nez v5, :cond_327

    goto :goto_311

    .line 365
    :cond_327
    if-eqz v12, :cond_4e4

    .line 367
    iget-object v0, v12, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    iput-object v0, v5, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    .line 371
    :goto_32d
    invoke-static {v1, v9}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 376
    const/16 v0, 0xf

    .line 377
    .end local v23    # "index":I
    .restart local v0    # "index":I
    aget v3, v20, v0

    .line 378
    .end local v26    # "offset":I
    .local v3, "offset":I
    add-int/lit8 v6, v0, 0x1

    aget v6, v20, v6

    sub-int/2addr v6, v3

    .line 379
    .end local v9    # "length":I
    .local v6, "length":I
    if-eqz v5, :cond_38d

    .line 380
    const/4 v8, 0x0

    iput-object v8, v5, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 381
    iput-object v8, v5, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 382
    aget v8, v20, v16

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    const/4 v15, 0x2

    if-ne v8, v15, :cond_38d

    .line 383
    if-lt v6, v15, :cond_383

    .line 384
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v8

    .line 385
    .local v8, "header0":C
    and-int/lit16 v9, v8, 0xff

    .line 386
    .local v9, "headerLength":I
    new-array v10, v9, [C

    iput-object v10, v5, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 387
    iget-object v10, v5, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    const/16 v18, 0x0

    aput-char v8, v10, v18

    .line 388
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_35c
    if-ge v10, v9, :cond_369

    .line 389
    iget-object v13, v5, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v14

    aput-char v14, v13, v10

    .line 388
    add-int/lit8 v10, v10, 0x1

    goto :goto_35c

    .line 391
    .end local v10    # "i":I
    :cond_369
    div-int/lit8 v10, v6, 0x2

    sub-int/2addr v10, v9

    .line 392
    .local v10, "tableLength":I
    and-int/lit8 v13, v6, 0x1

    invoke-static {v1, v10, v13}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v13

    iput-object v13, v5, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 393
    const/4 v6, 0x0

    .line 394
    shr-int/lit8 v13, v8, 0x8

    const/4 v15, 0x2

    if-ne v13, v15, :cond_37b

    .line 397
    .end local v8    # "header0":C
    .end local v9    # "headerLength":I
    .end local v10    # "tableLength":I
    :cond_37a
    goto :goto_38d

    .line 395
    .restart local v8    # "header0":C
    .restart local v9    # "headerLength":I
    .restart local v10    # "tableLength":I
    :cond_37b
    new-instance v13, Landroid/icu/util/ICUException;

    const-string v14, "Fast-Latin table version differs from version in data header"

    invoke-direct {v13, v14}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 397
    .end local v8    # "header0":C
    .end local v9    # "headerLength":I
    .end local v10    # "tableLength":I
    :cond_383
    if-eqz v12, :cond_37a

    .line 398
    iget-object v8, v12, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    iput-object v8, v5, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 399
    iget-object v8, v12, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    iput-object v8, v5, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 403
    :cond_38d
    :goto_38d
    invoke-static {v1, v6}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 405
    const/16 v0, 0x10

    .line 406
    aget v3, v20, v0

    .line 407
    add-int/lit8 v8, v0, 0x1

    aget v8, v20, v8

    sub-int/2addr v8, v3

    .line 408
    .end local v6    # "length":I
    .local v8, "length":I
    const/4 v15, 0x2

    if-lt v8, v15, :cond_3fb

    .line 409
    if-eqz v5, :cond_3f3

    .line 412
    div-int/lit8 v6, v8, 0x2

    .line 413
    .local v6, "scriptsLength":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v9

    .line 414
    .local v9, "inChars":Ljava/nio/CharBuffer;
    invoke-virtual {v9}, Ljava/nio/CharBuffer;->get()C

    move-result v10

    iput v10, v5, Landroid/icu/impl/coll/CollationData;->numScripts:I

    .line 416
    iget v10, v5, Landroid/icu/impl/coll/CollationData;->numScripts:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x10

    sub-int v10, v6, v10

    .line 417
    .local v10, "scriptStartsLength":I
    const/4 v15, 0x2

    if-le v10, v15, :cond_3eb

    .line 420
    iget v13, v5, Landroid/icu/impl/coll/CollationData;->numScripts:I

    add-int/lit8 v13, v13, 0x10

    new-array v13, v13, [C

    iput-object v13, v5, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    invoke-virtual {v9, v13}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 421
    new-array v13, v10, [C

    iput-object v13, v5, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    invoke-virtual {v9, v13}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 422
    iget-object v13, v5, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    const/16 v18, 0x0

    aget-char v13, v13, v18

    if-nez v13, :cond_3e3

    iget-object v13, v5, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v13, v13, v16

    const/16 v14, 0x300

    if-ne v13, v14, :cond_3e3

    iget-object v13, v5, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 v14, v10, -0x1

    aget-char v13, v13, v14

    const v14, 0xff00

    if-ne v13, v14, :cond_3e3

    .end local v6    # "scriptsLength":I
    .end local v9    # "inChars":Ljava/nio/CharBuffer;
    .end local v10    # "scriptStartsLength":I
    goto :goto_3ff

    .line 426
    .restart local v6    # "scriptsLength":I
    .restart local v9    # "inChars":Ljava/nio/CharBuffer;
    .restart local v10    # "scriptStartsLength":I
    :cond_3e3
    new-instance v13, Landroid/icu/util/ICUException;

    const-string v14, "Script order data not valid"

    invoke-direct {v13, v14}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 418
    :cond_3eb
    new-instance v13, Landroid/icu/util/ICUException;

    const-string v14, "Script order data too short"

    invoke-direct {v13, v14}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 410
    .end local v6    # "scriptsLength":I
    .end local v9    # "inChars":Ljava/nio/CharBuffer;
    .end local v10    # "scriptStartsLength":I
    :cond_3f3
    new-instance v6, Landroid/icu/util/ICUException;

    const-string v9, "Script order data but no mappings"

    invoke-direct {v6, v9}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 428
    :cond_3fb
    const/16 v18, 0x0

    if-nez v5, :cond_400

    :goto_3ff
    goto :goto_40e

    .line 430
    :cond_400
    if-eqz v12, :cond_40e

    .line 431
    iget v6, v12, Landroid/icu/impl/coll/CollationData;->numScripts:I

    iput v6, v5, Landroid/icu/impl/coll/CollationData;->numScripts:I

    .line 432
    iget-object v6, v12, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iput-object v6, v5, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    .line 433
    iget-object v6, v12, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    iput-object v6, v5, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    .line 435
    :cond_40e
    :goto_40e
    invoke-static {v1, v8}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 437
    const/16 v0, 0x11

    .line 438
    aget v3, v20, v0

    .line 439
    add-int/lit8 v6, v0, 0x1

    aget v6, v20, v6

    sub-int/2addr v6, v3

    .line 440
    .end local v8    # "length":I
    .local v6, "length":I
    const/16 v8, 0x100

    if-lt v6, v8, :cond_444

    .line 441
    if-eqz v5, :cond_43c

    .line 444
    new-array v9, v8, [Z

    iput-object v9, v5, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    .line 445
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_425
    if-ge v9, v8, :cond_439

    .line 446
    iget-object v10, v5, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    if-eqz v13, :cond_432

    move/from16 v13, v16

    goto :goto_434

    :cond_432
    move/from16 v13, v18

    :goto_434
    aput-boolean v13, v10, v9

    .line 445
    add-int/lit8 v9, v9, 0x1

    goto :goto_425

    .line 448
    .end local v9    # "i":I
    :cond_439
    add-int/lit16 v6, v6, -0x100

    goto :goto_44d

    .line 442
    :cond_43c
    new-instance v8, Landroid/icu/util/ICUException;

    const-string v9, "Data for compressible primary lead bytes but no mappings"

    invoke-direct {v8, v9}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 449
    :cond_444
    if-nez v5, :cond_447

    goto :goto_44d

    .line 451
    :cond_447
    if-eqz v12, :cond_4da

    .line 452
    iget-object v8, v12, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iput-object v8, v5, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    .line 456
    :goto_44d
    invoke-static {v1, v6}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 458
    const/16 v0, 0x12

    .line 459
    aget v3, v20, v0

    .line 460
    add-int/lit8 v8, v0, 0x1

    aget v8, v20, v8

    sub-int/2addr v8, v3

    .line 461
    .end local v6    # "length":I
    .restart local v8    # "length":I
    invoke-static {v1, v8}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 463
    iget-object v6, v2, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v6}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v6

    check-cast v6, Landroid/icu/impl/coll/CollationSettings;

    .line 464
    .local v6, "ts":Landroid/icu/impl/coll/CollationSettings;
    aget v9, v20, v16

    const v10, 0xffff

    and-int/2addr v9, v10

    .line 465
    .local v9, "options":I
    const/16 v10, 0x180

    new-array v10, v10, [C

    .line 466
    .local v10, "fastLatinPrimaries":[C
    iget-object v13, v2, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    invoke-static {v13, v6, v10}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    move-result v13

    .line 468
    .local v13, "fastLatinOptions":I
    iget v14, v6, Landroid/icu/impl/coll/CollationSettings;->options:I

    const-wide/16 v15, 0x0

    if-ne v9, v14, :cond_498

    move v14, v0

    .end local v0    # "index":I
    .local v14, "index":I
    iget-wide v0, v6, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v0, v0, v15

    if-eqz v0, :cond_499

    iget-object v0, v6, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    .line 469
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_499

    iget v0, v6, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    if-ne v13, v0, :cond_499

    if-ltz v13, :cond_497

    iget-object v0, v6, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    .line 472
    invoke-static {v10, v0}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_499

    .line 473
    :cond_497
    return-void

    .line 468
    .end local v14    # "index":I
    .restart local v0    # "index":I
    :cond_498
    move v14, v0

    .line 476
    .end local v0    # "index":I
    .restart local v14    # "index":I
    :cond_499
    iget-object v0, v2, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    .line 477
    .local v0, "settings":Landroid/icu/impl/coll/CollationSettings;
    iput v9, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 479
    iget-object v1, v2, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    .line 480
    move-wide/from16 v17, v15

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v15

    add-int/lit16 v15, v15, 0x1000

    .line 479
    move-object/from16 v16, v5

    move-object/from16 v19, v6

    .end local v5    # "data":Landroid/icu/impl/coll/CollationData;
    .end local v6    # "ts":Landroid/icu/impl/coll/CollationSettings;
    .local v16, "data":Landroid/icu/impl/coll/CollationData;
    .local v19, "ts":Landroid/icu/impl/coll/CollationSettings;
    invoke-virtual {v1, v15}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v5

    iput-wide v5, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    .line 481
    iget-wide v5, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v1, v5, v17

    if-eqz v1, :cond_4d2

    .line 485
    if-eqz v22, :cond_4c5

    .line 486
    move/from16 v1, v22

    .end local v22    # "reorderCodesLength":I
    .local v1, "reorderCodesLength":I
    invoke-virtual {v0, v12, v4, v1, v7}, Landroid/icu/impl/coll/CollationSettings;->aliasReordering(Landroid/icu/impl/coll/CollationData;[II[B)V

    goto :goto_4c7

    .line 485
    .end local v1    # "reorderCodesLength":I
    .restart local v22    # "reorderCodesLength":I
    :cond_4c5
    move/from16 v1, v22

    .line 489
    .end local v22    # "reorderCodesLength":I
    .restart local v1    # "reorderCodesLength":I
    :goto_4c7
    iget-object v5, v2, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v6, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-static {v5, v0, v6}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    move-result v5

    iput v5, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    .line 492
    return-void

    .line 482
    .end local v1    # "reorderCodesLength":I
    .restart local v22    # "reorderCodesLength":I
    :cond_4d2
    new-instance v5, Landroid/icu/util/ICUException;

    const-string v6, "The maxVariable could not be mapped to a variableTop"

    invoke-direct {v5, v6}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 454
    .end local v8    # "length":I
    .end local v9    # "options":I
    .end local v10    # "fastLatinPrimaries":[C
    .end local v13    # "fastLatinOptions":I
    .end local v14    # "index":I
    .end local v16    # "data":Landroid/icu/impl/coll/CollationData;
    .end local v19    # "ts":Landroid/icu/impl/coll/CollationSettings;
    .local v0, "index":I
    .restart local v5    # "data":Landroid/icu/impl/coll/CollationData;
    .local v6, "length":I
    :cond_4da
    move-object/from16 v16, v5

    .end local v5    # "data":Landroid/icu/impl/coll/CollationData;
    .restart local v16    # "data":Landroid/icu/impl/coll/CollationData;
    new-instance v5, Landroid/icu/util/ICUException;

    const-string v8, "Missing data for compressible primary lead bytes"

    invoke-direct {v5, v8}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 369
    .end local v0    # "index":I
    .end local v3    # "offset":I
    .end local v6    # "length":I
    .end local v16    # "data":Landroid/icu/impl/coll/CollationData;
    .restart local v5    # "data":Landroid/icu/impl/coll/CollationData;
    .local v9, "length":I
    .restart local v23    # "index":I
    .restart local v26    # "offset":I
    :cond_4e4
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v3, "Missing unsafe-backward-set"

    invoke-direct {v0, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    .end local v20    # "inIndexes":[I
    .end local v23    # "index":I
    .end local v25    # "inLength":I
    .end local v26    # "offset":I
    .local v3, "inLength":I
    .local v6, "index":I
    .local v8, "inIndexes":[I
    .local v9, "offset":I
    .local v10, "length":I
    :cond_4ec
    move/from16 v25, v3

    .end local v3    # "inLength":I
    .restart local v25    # "inLength":I
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v3, "Missing Jamo CE32s for Hangul processing"

    invoke-direct {v0, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    .end local v11    # "jamoCE32sStart":I
    .end local v25    # "inLength":I
    .restart local v3    # "inLength":I
    :cond_4f6
    move/from16 v25, v3

    .end local v3    # "inLength":I
    .restart local v25    # "inLength":I
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v3, "Missing collation data mappings"

    invoke-direct {v0, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    .end local v4    # "reorderCodes":[I
    .end local v5    # "data":Landroid/icu/impl/coll/CollationData;
    .end local v7    # "reorderTable":[B
    .end local v9    # "offset":I
    .end local v12    # "baseData":Landroid/icu/impl/coll/CollationData;
    .end local v22    # "reorderCodesLength":I
    .end local v24    # "indexesLength":I
    .end local v25    # "inLength":I
    .restart local v3    # "inLength":I
    .local v6, "indexesLength":I
    :cond_500
    new-instance v0, Landroid/icu/util/ICUException;

    invoke-direct {v0, v4}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    .end local v8    # "inIndexes":[I
    .end local v10    # "length":I
    :cond_506
    move/from16 v25, v3

    move/from16 v24, v6

    .line 113
    .end local v3    # "inLength":I
    .end local v6    # "indexesLength":I
    .restart local v24    # "indexesLength":I
    .restart local v25    # "inLength":I
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v1, "not enough indexes"

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    .end local v24    # "indexesLength":I
    .end local v25    # "inLength":I
    .restart local v3    # "inLength":I
    :cond_512
    new-instance v0, Landroid/icu/util/ICUException;

    invoke-direct {v0, v4}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
