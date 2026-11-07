.class public abstract Landroid/icu/util/CodePointTrie;
.super Landroid/icu/util/CodePointMap;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/CodePointTrie$Data;,
        Landroid/icu/util/CodePointTrie$Type;,
        Landroid/icu/util/CodePointTrie$ValueWidth;,
        Landroid/icu/util/CodePointTrie$Fast16;,
        Landroid/icu/util/CodePointTrie$Small16;,
        Landroid/icu/util/CodePointTrie$Fast32;,
        Landroid/icu/util/CodePointTrie$Small32;,
        Landroid/icu/util/CodePointTrie$Fast8;,
        Landroid/icu/util/CodePointTrie$Small8;,
        Landroid/icu/util/CodePointTrie$Small;,
        Landroid/icu/util/CodePointTrie$Fast;,
        Landroid/icu/util/CodePointTrie$Data8;,
        Landroid/icu/util/CodePointTrie$Data32;,
        Landroid/icu/util/CodePointTrie$Data16;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist ASCII_LIMIT:I = 0x80

.field private static final blacklist BMP_INDEX_LENGTH:I = 0x400

.field static final blacklist CP_PER_INDEX_2_ENTRY:I = 0x200

.field private static final blacklist ERROR_VALUE_NEG_DATA_OFFSET:I = 0x1

.field static final blacklist FAST_DATA_BLOCK_LENGTH:I = 0x40

.field private static final blacklist FAST_DATA_MASK:I = 0x3f

.field static final blacklist FAST_SHIFT:I = 0x6

.field private static final blacklist HIGH_VALUE_NEG_DATA_OFFSET:I = 0x2

.field static final blacklist INDEX_2_BLOCK_LENGTH:I = 0x20

.field static final blacklist INDEX_2_MASK:I = 0x1f

.field static final blacklist INDEX_3_BLOCK_LENGTH:I = 0x20

.field private static final blacklist INDEX_3_MASK:I = 0x1f

.field private static final blacklist MAX_UNICODE:I = 0x10ffff

.field static final blacklist NO_DATA_NULL_OFFSET:I = 0xfffff

.field static final blacklist NO_INDEX3_NULL_OFFSET:I = 0x7fff

.field private static final blacklist OMITTED_BMP_INDEX_1_LENGTH:I = 0x4

.field private static final blacklist OPTIONS_DATA_LENGTH_MASK:I = 0xf000

.field private static final blacklist OPTIONS_DATA_NULL_OFFSET_MASK:I = 0xf00

.field private static final blacklist OPTIONS_RESERVED_MASK:I = 0x38

.field private static final blacklist OPTIONS_VALUE_BITS_MASK:I = 0x7

.field private static final blacklist SHIFT_1:I = 0xe

.field static final blacklist SHIFT_1_2:I = 0x5

.field private static final blacklist SHIFT_2:I = 0x9

.field static final blacklist SHIFT_2_3:I = 0x5

.field static final blacklist SHIFT_3:I = 0x4

.field static final blacklist SMALL_DATA_BLOCK_LENGTH:I = 0x10

.field static final blacklist SMALL_DATA_MASK:I = 0xf

.field private static final blacklist SMALL_INDEX_LENGTH:I = 0x40

.field static final blacklist SMALL_LIMIT:I = 0x1000

.field private static final blacklist SMALL_MAX:I = 0xfff


# instance fields
.field private final blacklist ascii:[I

.field protected final blacklist data:Landroid/icu/util/CodePointTrie$Data;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final blacklist dataLength:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final blacklist dataNullOffset:I

.field protected final blacklist highStart:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final blacklist index:[C

.field private final blacklist index3NullOffset:I

.field private final blacklist nullValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 28
    return-void
.end method

.method private constructor blacklist <init>([CLandroid/icu/util/CodePointTrie$Data;III)V
    .registers 10
    .param p1, "index"    # [C
    .param p2, "data"    # Landroid/icu/util/CodePointTrie$Data;
    .param p3, "highStart"    # I
    .param p4, "index3NullOffset"    # I
    .param p5, "dataNullOffset"    # I

    .line 83
    invoke-direct {p0}, Landroid/icu/util/CodePointMap;-><init>()V

    .line 84
    const/16 v0, 0x80

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/util/CodePointTrie;->ascii:[I

    .line 85
    iput-object p1, p0, Landroid/icu/util/CodePointTrie;->index:[C

    .line 86
    iput-object p2, p0, Landroid/icu/util/CodePointTrie;->data:Landroid/icu/util/CodePointTrie$Data;

    .line 87
    invoke-virtual {p2}, Landroid/icu/util/CodePointTrie$Data;->getDataLength()I

    move-result v1

    iput v1, p0, Landroid/icu/util/CodePointTrie;->dataLength:I

    .line 88
    iput p3, p0, Landroid/icu/util/CodePointTrie;->highStart:I

    .line 89
    iput p4, p0, Landroid/icu/util/CodePointTrie;->index3NullOffset:I

    .line 90
    iput p5, p0, Landroid/icu/util/CodePointTrie;->dataNullOffset:I

    .line 92
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_1a
    if-ge v1, v0, :cond_27

    .line 93
    iget-object v2, p0, Landroid/icu/util/CodePointTrie;->ascii:[I

    invoke-virtual {p2, v1}, Landroid/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v3

    aput v3, v2, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 96
    .end local v1    # "c":I
    :cond_27
    move v0, p5

    .line 97
    .local v0, "nullValueOffset":I
    iget v1, p0, Landroid/icu/util/CodePointTrie;->dataLength:I

    if-lt v0, v1, :cond_30

    .line 98
    iget v1, p0, Landroid/icu/util/CodePointTrie;->dataLength:I

    add-int/lit8 v0, v1, -0x2

    .line 100
    :cond_30
    invoke-virtual {p2, v0}, Landroid/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v1

    iput v1, p0, Landroid/icu/util/CodePointTrie;->nullValue:I

    .line 101
    return-void
.end method

.method synthetic constructor blacklist <init>([CLandroid/icu/util/CodePointTrie$Data;IIILandroid/icu/util/CodePointTrie-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/icu/util/CodePointTrie;-><init>([CLandroid/icu/util/CodePointTrie$Data;III)V

    return-void
.end method

.method public static blacklist fromBinary(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie;
    .registers 24
    .param p0, "type"    # Landroid/icu/util/CodePointTrie$Type;
    .param p1, "valueWidth"    # Landroid/icu/util/CodePointTrie$ValueWidth;
    .param p2, "bytes"    # Ljava/nio/ByteBuffer;

    .line 125
    move-object/from16 v1, p2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 128
    .local v2, "outerByteOrder":Ljava/nio/ByteOrder;
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_18c

    .line 134
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 137
    .local v0, "signature":I
    sparse-switch v0, :sswitch_data_19e

    .line 148
    new-instance v3, Landroid/icu/util/ICUUncheckedIOException;

    goto/16 :goto_186

    .line 140
    :sswitch_19
    goto :goto_2f

    .line 143
    :sswitch_1a
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v4, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    .line 144
    .local v4, "isBigEndian":Z
    :goto_21
    if-eqz v4, :cond_26

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_28

    :cond_26
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_28
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 145
    const v0, 0x54726933

    .line 146
    nop

    .line 160
    .end local v4    # "isBigEndian":Z
    :goto_2f
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v4

    .line 163
    .local v4, "options":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    .line 166
    .local v5, "indexLength":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v6

    .line 169
    .local v6, "dataLength":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v7

    move v12, v7

    .line 172
    .local v12, "index3NullOffset":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v7

    .line 178
    .local v7, "dataNullOffset":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v8

    move v14, v8

    .line 181
    .local v14, "shiftedHighStart":I
    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v15, v8, 0x3

    .line 183
    .local v15, "typeInt":I
    packed-switch v15, :pswitch_data_1a8

    .line 187
    move/from16 v17, v0

    .end local v0    # "signature":I
    .local v17, "signature":I
    new-instance v0, Landroid/icu/util/ICUUncheckedIOException;

    goto/16 :goto_180

    .line 185
    .end local v17    # "signature":I
    .restart local v0    # "signature":I
    :pswitch_56
    sget-object v8, Landroid/icu/util/CodePointTrie$Type;->SMALL:Landroid/icu/util/CodePointTrie$Type;

    .local v8, "actualType":Landroid/icu/util/CodePointTrie$Type;
    goto :goto_5b

    .line 184
    .end local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    :pswitch_59
    sget-object v8, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    .line 190
    .restart local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    :goto_5b
    and-int/lit8 v16, v4, 0x7

    .line 192
    .local v16, "valueWidthInt":I
    packed-switch v16, :pswitch_data_1b0

    .line 197
    move/from16 v17, v0

    move-object v0, v8

    .end local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .local v0, "actualType":Landroid/icu/util/CodePointTrie$Type;
    .restart local v17    # "signature":I
    new-instance v3, Landroid/icu/util/ICUUncheckedIOException;

    goto/16 :goto_17a

    .line 195
    .end local v17    # "signature":I
    .local v0, "signature":I
    .restart local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    :pswitch_67
    sget-object v9, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_8:Landroid/icu/util/CodePointTrie$ValueWidth;

    .local v9, "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    goto :goto_6f

    .line 194
    .end local v9    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :pswitch_6a
    sget-object v9, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_32:Landroid/icu/util/CodePointTrie$ValueWidth;

    .restart local v9    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    goto :goto_6f

    .line 193
    .end local v9    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :pswitch_6d
    sget-object v9, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_16:Landroid/icu/util/CodePointTrie$ValueWidth;
    :try_end_6f
    .catchall {:try_start_6 .. :try_end_6f} :catchall_194

    .line 200
    .restart local v9    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :goto_6f
    and-int/lit8 v10, v4, 0x38

    if-nez v10, :cond_16d

    .line 204
    if-nez p0, :cond_77

    .line 205
    move-object v10, v8

    .end local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    .local v10, "type":Landroid/icu/util/CodePointTrie$Type;
    goto :goto_79

    .line 204
    .end local v10    # "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    :cond_77
    move-object/from16 v10, p0

    .line 207
    .end local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local v10    # "type":Landroid/icu/util/CodePointTrie$Type;
    :goto_79
    if-nez p1, :cond_7d

    .line 208
    move-object v11, v9

    .end local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v11, "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    goto :goto_7f

    .line 207
    .end local v11    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :cond_7d
    move-object/from16 v11, p1

    .line 210
    .end local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v11    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :goto_7f
    if-ne v10, v8, :cond_15b

    if-ne v11, v9, :cond_15b

    .line 215
    const v13, 0xf000

    and-int/2addr v13, v4

    shl-int/lit8 v13, v13, 0x4

    or-int/2addr v6, v13

    .line 216
    and-int/lit16 v13, v4, 0xf00

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v7

    .line 218
    .end local v7    # "dataNullOffset":I
    .local v13, "dataNullOffset":I
    shl-int/lit8 v7, v14, 0x9

    .line 221
    .local v7, "highStart":I
    mul-int/lit8 v17, v5, 0x2

    .line 222
    .local v17, "actualLength":I
    :try_start_93
    sget-object v3, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_16:Landroid/icu/util/CodePointTrie$ValueWidth;

    if-ne v11, v3, :cond_9e

    .line 223
    mul-int/lit8 v3, v6, 0x2

    add-int v17, v17, v3

    move/from16 v3, v17

    goto :goto_ad

    .line 224
    :cond_9e
    sget-object v3, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_32:Landroid/icu/util/CodePointTrie$ValueWidth;

    if-ne v11, v3, :cond_a9

    .line 225
    mul-int/lit8 v3, v6, 0x4

    add-int v17, v17, v3

    move/from16 v3, v17

    goto :goto_ad

    .line 227
    :cond_a9
    add-int v17, v17, v6

    move/from16 v3, v17

    .line 229
    .end local v17    # "actualLength":I
    .local v3, "actualLength":I
    :goto_ad
    move/from16 v17, v0

    .end local v0    # "signature":I
    .local v17, "signature":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, v3, :cond_145

    .line 233
    const/4 v0, 0x0

    invoke-static {v1, v5, v0}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v18

    .line 234
    .local v18, "index":[C
    invoke-virtual {v11}, Landroid/icu/util/CodePointTrie$ValueWidth;->ordinal()I

    move-result v19
    :try_end_be
    .catchall {:try_start_93 .. :try_end_be} :catchall_156

    packed-switch v19, :pswitch_data_1ba

    .line 254
    move-object v0, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v9, v18

    move v11, v7

    move-object v7, v10

    .end local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v10    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local v18    # "index":[C
    .local v0, "actualType":Landroid/icu/util/CodePointTrie$Type;
    .local v7, "type":Landroid/icu/util/CodePointTrie$Type;
    .local v9, "index":[C
    .local v11, "highStart":I
    .local v19, "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v20, "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :try_start_ca
    new-instance v8, Ljava/lang/AssertionError;
    :try_end_cc
    .catchall {:try_start_ca .. :try_end_cc} :catchall_154

    goto/16 :goto_13f

    .line 248
    .end local v0    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v7, "highStart":I
    .restart local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .local v9, "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v10    # "type":Landroid/icu/util/CodePointTrie$Type;
    .local v11, "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v18    # "index":[C
    :pswitch_ce
    :try_start_ce
    invoke-static {v1, v6, v0}, Landroid/icu/impl/ICUBinary;->getBytes(Ljava/nio/ByteBuffer;II)[B

    move-result-object v0

    .line 249
    .local v0, "data8":[B
    move-object/from16 p0, v0

    .end local v0    # "data8":[B
    .local p0, "data8":[B
    sget-object v0, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    if-ne v10, v0, :cond_e9

    .line 250
    move-object v0, v8

    .end local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .local v0, "actualType":Landroid/icu/util/CodePointTrie$Type;
    new-instance v8, Landroid/icu/util/CodePointTrie$Fast8;
    :try_end_db
    .catchall {:try_start_ce .. :try_end_db} :catchall_156

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v9, v18

    move v11, v7

    move-object v7, v10

    move-object/from16 v10, p0

    .end local v18    # "index":[C
    .end local p0    # "data8":[B
    .local v7, "type":Landroid/icu/util/CodePointTrie$Type;
    .local v9, "index":[C
    .local v10, "data8":[B
    .local v11, "highStart":I
    .restart local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :try_start_e5
    invoke-direct/range {v8 .. v13}, Landroid/icu/util/CodePointTrie$Fast8;-><init>([C[BIII)V

    goto :goto_f9

    .line 251
    .end local v0    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v7, "highStart":I
    .restart local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .local v9, "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v10, "type":Landroid/icu/util/CodePointTrie$Type;
    .local v11, "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v18    # "index":[C
    .restart local p0    # "data8":[B
    :cond_e9
    move-object v0, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v9, v18

    move v11, v7

    move-object v7, v10

    move-object/from16 v10, p0

    .end local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v18    # "index":[C
    .end local p0    # "data8":[B
    .restart local v0    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .local v7, "type":Landroid/icu/util/CodePointTrie$Type;
    .local v9, "index":[C
    .local v10, "data8":[B
    .local v11, "highStart":I
    .restart local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    new-instance v8, Landroid/icu/util/CodePointTrie$Small8;

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/CodePointTrie$Small8;-><init>([C[BIII)V
    :try_end_f9
    .catchall {:try_start_e5 .. :try_end_f9} :catchall_154

    .line 257
    :goto_f9
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 249
    return-object v8

    .line 242
    .end local v0    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v7, "highStart":I
    .restart local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .local v9, "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v10, "type":Landroid/icu/util/CodePointTrie$Type;
    .local v11, "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v18    # "index":[C
    :pswitch_fd
    move-object v0, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v9, v18

    move v11, v7

    move-object v7, v10

    .end local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v10    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local v18    # "index":[C
    .restart local v0    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .local v7, "type":Landroid/icu/util/CodePointTrie$Type;
    .local v9, "index":[C
    .local v11, "highStart":I
    .restart local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    const/4 v8, 0x0

    :try_start_107
    invoke-static {v1, v6, v8}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v10

    .line 243
    .local v10, "data32":[I
    sget-object v8, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    if-ne v7, v8, :cond_115

    .line 244
    new-instance v8, Landroid/icu/util/CodePointTrie$Fast32;

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/CodePointTrie$Fast32;-><init>([C[IIII)V

    goto :goto_11a

    .line 245
    :cond_115
    new-instance v8, Landroid/icu/util/CodePointTrie$Small32;

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/CodePointTrie$Small32;-><init>([C[IIII)V
    :try_end_11a
    .catchall {:try_start_107 .. :try_end_11a} :catchall_154

    .line 257
    :goto_11a
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 243
    return-object v8

    .line 236
    .end local v0    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v7, "highStart":I
    .restart local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .local v9, "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v10, "type":Landroid/icu/util/CodePointTrie$Type;
    .local v11, "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v18    # "index":[C
    :pswitch_11e
    move-object v0, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v9, v18

    move v11, v7

    move-object v7, v10

    .end local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v10    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local v18    # "index":[C
    .restart local v0    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .local v7, "type":Landroid/icu/util/CodePointTrie$Type;
    .local v9, "index":[C
    .local v11, "highStart":I
    .restart local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    const/4 v8, 0x0

    :try_start_128
    invoke-static {v1, v6, v8}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v10

    .line 237
    .local v10, "data16":[C
    sget-object v8, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    if-ne v7, v8, :cond_136

    .line 238
    new-instance v8, Landroid/icu/util/CodePointTrie$Fast16;

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/CodePointTrie$Fast16;-><init>([C[CIII)V

    goto :goto_13b

    .line 239
    :cond_136
    new-instance v8, Landroid/icu/util/CodePointTrie$Small16;

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/CodePointTrie$Small16;-><init>([C[CIII)V
    :try_end_13b
    .catchall {:try_start_128 .. :try_end_13b} :catchall_154

    .line 257
    :goto_13b
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 237
    return-object v8

    .line 254
    .end local v10    # "data16":[C
    :goto_13f
    :try_start_13f
    const-string v10, "should be unreachable"

    invoke-direct {v8, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .end local v7    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local p2    # "bytes":Ljava/nio/ByteBuffer;
    throw v8

    .line 230
    .end local v0    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .local v7, "highStart":I
    .restart local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .local v9, "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v10, "type":Landroid/icu/util/CodePointTrie$Type;
    .local v11, "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local p2    # "bytes":Ljava/nio/ByteBuffer;
    :cond_145
    move-object v0, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move v11, v7

    move-object v7, v10

    .end local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v9    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local v10    # "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local v0    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .local v7, "type":Landroid/icu/util/CodePointTrie$Type;
    .local v11, "highStart":I
    .restart local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    new-instance v8, Landroid/icu/util/ICUUncheckedIOException;

    const-string v9, "Buffer too short for the CodePointTrie data"

    invoke-direct {v8, v9}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .end local v7    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local p2    # "bytes":Ljava/nio/ByteBuffer;
    throw v8
    :try_end_154
    .catchall {:try_start_13f .. :try_end_154} :catchall_154

    .line 257
    .end local v0    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v3    # "actualLength":I
    .end local v4    # "options":I
    .end local v5    # "indexLength":I
    .end local v6    # "dataLength":I
    .end local v11    # "highStart":I
    .end local v12    # "index3NullOffset":I
    .end local v13    # "dataNullOffset":I
    .end local v14    # "shiftedHighStart":I
    .end local v15    # "typeInt":I
    .end local v16    # "valueWidthInt":I
    .end local v17    # "signature":I
    .end local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .restart local v7    # "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local p2    # "bytes":Ljava/nio/ByteBuffer;
    :catchall_154
    move-exception v0

    goto :goto_199

    .end local v7    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v10    # "type":Landroid/icu/util/CodePointTrie$Type;
    .local v11, "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :catchall_156
    move-exception v0

    move-object v7, v10

    move-object/from16 v20, v11

    .end local v10    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local v11    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v7    # "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    goto :goto_199

    .line 210
    .end local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v0, "signature":I
    .restart local v4    # "options":I
    .restart local v5    # "indexLength":I
    .restart local v6    # "dataLength":I
    .local v7, "dataNullOffset":I
    .restart local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .restart local v9    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v10    # "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local v11    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v12    # "index3NullOffset":I
    .restart local v14    # "shiftedHighStart":I
    .restart local v15    # "typeInt":I
    .restart local v16    # "valueWidthInt":I
    :cond_15b
    move/from16 v17, v0

    move-object v0, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    .line 211
    .end local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v9    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local v11    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v0, "actualType":Landroid/icu/util/CodePointTrie$Type;
    .restart local v17    # "signature":I
    .restart local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :try_start_162
    new-instance v3, Landroid/icu/util/ICUUncheckedIOException;

    const-string v8, "CodePointTrie data header has a different type or value width than required"

    invoke-direct {v3, v8}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .end local v10    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local p2    # "bytes":Ljava/nio/ByteBuffer;
    throw v3
    :try_end_16a
    .catchall {:try_start_162 .. :try_end_16a} :catchall_16a

    .line 257
    .end local v0    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v4    # "options":I
    .end local v5    # "indexLength":I
    .end local v6    # "dataLength":I
    .end local v7    # "dataNullOffset":I
    .end local v12    # "index3NullOffset":I
    .end local v14    # "shiftedHighStart":I
    .end local v15    # "typeInt":I
    .end local v16    # "valueWidthInt":I
    .end local v17    # "signature":I
    .end local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .restart local v10    # "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local p2    # "bytes":Ljava/nio/ByteBuffer;
    :catchall_16a
    move-exception v0

    move-object v7, v10

    goto :goto_199

    .line 201
    .end local v10    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v0, "signature":I
    .restart local v4    # "options":I
    .restart local v5    # "indexLength":I
    .restart local v6    # "dataLength":I
    .restart local v7    # "dataNullOffset":I
    .restart local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .restart local v9    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v12    # "index3NullOffset":I
    .restart local v14    # "shiftedHighStart":I
    .restart local v15    # "typeInt":I
    .restart local v16    # "valueWidthInt":I
    .local p0, "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :cond_16d
    move/from16 v17, v0

    move-object v0, v8

    move-object/from16 v19, v9

    .end local v8    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v9    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v0, "actualType":Landroid/icu/util/CodePointTrie$Type;
    .restart local v17    # "signature":I
    .restart local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :try_start_172
    new-instance v3, Landroid/icu/util/ICUUncheckedIOException;

    const-string v8, "CodePointTrie data header has unsupported options"

    invoke-direct {v3, v8}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .end local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local p2    # "bytes":Ljava/nio/ByteBuffer;
    throw v3

    .line 197
    .end local v19    # "actualValueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .restart local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local p2    # "bytes":Ljava/nio/ByteBuffer;
    :goto_17a
    const-string v8, "CodePointTrie data header has an unsupported value width"

    invoke-direct {v3, v8}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .end local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local p2    # "bytes":Ljava/nio/ByteBuffer;
    throw v3

    .line 187
    .end local v0    # "actualType":Landroid/icu/util/CodePointTrie$Type;
    .end local v16    # "valueWidthInt":I
    .restart local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .restart local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local p2    # "bytes":Ljava/nio/ByteBuffer;
    :goto_180
    const-string v3, "CodePointTrie data header has an unsupported type"

    invoke-direct {v0, v3}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .end local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local p2    # "bytes":Ljava/nio/ByteBuffer;
    throw v0

    .line 148
    .end local v4    # "options":I
    .end local v5    # "indexLength":I
    .end local v6    # "dataLength":I
    .end local v7    # "dataNullOffset":I
    .end local v12    # "index3NullOffset":I
    .end local v14    # "shiftedHighStart":I
    .end local v15    # "typeInt":I
    .end local v17    # "signature":I
    .local v0, "signature":I
    .restart local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .restart local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local p2    # "bytes":Ljava/nio/ByteBuffer;
    :goto_186
    const-string v4, "Buffer does not contain a serialized CodePointTrie"

    invoke-direct {v3, v4}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .end local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local p2    # "bytes":Ljava/nio/ByteBuffer;
    throw v3

    .line 129
    .end local v0    # "signature":I
    .restart local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .restart local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local p2    # "bytes":Ljava/nio/ByteBuffer;
    :cond_18c
    new-instance v0, Landroid/icu/util/ICUUncheckedIOException;

    const-string v3, "Buffer too short for a CodePointTrie header"

    invoke-direct {v0, v3}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .end local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .end local p2    # "bytes":Ljava/nio/ByteBuffer;
    throw v0
    :try_end_194
    .catchall {:try_start_172 .. :try_end_194} :catchall_194

    .line 257
    .restart local v2    # "outerByteOrder":Ljava/nio/ByteOrder;
    .restart local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .restart local p2    # "bytes":Ljava/nio/ByteBuffer;
    :catchall_194
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v20, p1

    .end local p0    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local p1    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    .local v7, "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local v20    # "valueWidth":Landroid/icu/util/CodePointTrie$ValueWidth;
    :goto_199
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 258
    throw v0

    nop

    :sswitch_data_19e
    .sparse-switch
        0x33697254 -> :sswitch_1a
        0x54726933 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_59
        :pswitch_56
    .end packed-switch

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
    .end packed-switch

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_11e
        :pswitch_fd
        :pswitch_ce
    .end packed-switch
.end method

.method private final blacklist internalSmallIndex(Landroid/icu/util/CodePointTrie$Type;I)I
    .registers 9
    .param p1, "type"    # Landroid/icu/util/CodePointTrie$Type;
    .param p2, "c"    # I

    .line 694
    shr-int/lit8 v0, p2, 0xe

    .line 695
    .local v0, "i1":I
    sget-object v1, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    if-ne p1, v1, :cond_a

    .line 696
    nop

    .line 697
    add-int/lit16 v0, v0, 0x3fc

    goto :goto_d

    .line 699
    :cond_a
    nop

    .line 700
    add-int/lit8 v0, v0, 0x40

    .line 702
    :goto_d
    iget-object v1, p0, Landroid/icu/util/CodePointTrie;->index:[C

    iget-object v2, p0, Landroid/icu/util/CodePointTrie;->index:[C

    aget-char v2, v2, v0

    shr-int/lit8 v3, p2, 0x9

    and-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    aget-char v1, v1, v2

    .line 703
    .local v1, "i3Block":I
    shr-int/lit8 v2, p2, 0x4

    and-int/lit8 v2, v2, 0x1f

    .line 705
    .local v2, "i3":I
    const v3, 0x8000

    and-int/2addr v3, v1

    if-nez v3, :cond_2b

    .line 707
    iget-object v3, p0, Landroid/icu/util/CodePointTrie;->index:[C

    add-int v4, v1, v2

    aget-char v3, v3, v4

    .local v3, "dataBlock":I
    goto :goto_4b

    .line 710
    .end local v3    # "dataBlock":I
    :cond_2b
    and-int/lit16 v3, v1, 0x7fff

    and-int/lit8 v4, v2, -0x8

    add-int/2addr v3, v4

    shr-int/lit8 v4, v2, 0x3

    add-int/2addr v3, v4

    .line 711
    .end local v1    # "i3Block":I
    .local v3, "i3Block":I
    and-int/lit8 v2, v2, 0x7

    .line 712
    iget-object v1, p0, Landroid/icu/util/CodePointTrie;->index:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i3Block":I
    .local v4, "i3Block":I
    aget-char v1, v1, v3

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x2

    shl-int/2addr v1, v3

    const/high16 v3, 0x30000

    and-int/2addr v1, v3

    .line 713
    .local v1, "dataBlock":I
    iget-object v3, p0, Landroid/icu/util/CodePointTrie;->index:[C

    add-int v5, v4, v2

    aget-char v3, v3, v5

    or-int/2addr v3, v1

    move v1, v4

    .line 715
    .end local v4    # "i3Block":I
    .local v1, "i3Block":I
    .local v3, "dataBlock":I
    :goto_4b
    and-int/lit8 v4, p2, 0xf

    add-int/2addr v4, v3

    return v4
.end method

.method private static final blacklist maybeFilterValue(IIILandroid/icu/util/CodePointMap$ValueFilter;)I
    .registers 4
    .param p0, "value"    # I
    .param p1, "trieNullValue"    # I
    .param p2, "nullValue"    # I
    .param p3, "filter"    # Landroid/icu/util/CodePointMap$ValueFilter;

    .line 298
    if-ne p0, p1, :cond_4

    .line 299
    move p0, p2

    goto :goto_a

    .line 300
    :cond_4
    if-eqz p3, :cond_a

    .line 301
    invoke-interface {p3, p0}, Landroid/icu/util/CodePointMap$ValueFilter;->apply(I)I

    move-result p0

    .line 303
    :cond_a
    :goto_a
    return p0
.end method


# virtual methods
.method public final blacklist asciiGet(I)I
    .registers 3
    .param p1, "c"    # I

    .line 289
    iget-object v0, p0, Landroid/icu/util/CodePointTrie;->ascii:[I

    aget v0, v0, p1

    return v0
.end method

.method protected abstract blacklist cpIndex(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected final blacklist fastIndex(I)I
    .registers 4
    .param p1, "c"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    iget-object v0, p0, Landroid/icu/util/CodePointTrie;->index:[C

    shr-int/lit8 v1, p1, 0x6

    aget-char v0, v0, v1

    and-int/lit8 v1, p1, 0x3f

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist get(I)I
    .registers 4
    .param p1, "c"    # I

    .line 279
    iget-object v0, p0, Landroid/icu/util/CodePointTrie;->data:Landroid/icu/util/CodePointTrie$Data;

    invoke-virtual {p0, p1}, Landroid/icu/util/CodePointTrie;->cpIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v0

    return v0
.end method

.method public final blacklist getRange(ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z
    .registers 28
    .param p1, "start"    # I
    .param p2, "filter"    # Landroid/icu/util/CodePointMap$ValueFilter;
    .param p3, "range"    # Landroid/icu/util/CodePointMap$Range;

    .line 311
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-ltz v1, :cond_1c7

    const v4, 0x10ffff

    if-ge v4, v1, :cond_11

    goto/16 :goto_1c7

    .line 314
    :cond_11
    iget v5, v0, Landroid/icu/util/CodePointTrie;->highStart:I

    const/4 v6, 0x1

    if-lt v1, v5, :cond_2a

    .line 315
    iget v5, v0, Landroid/icu/util/CodePointTrie;->dataLength:I

    add-int/lit8 v5, v5, -0x2

    .line 316
    .local v5, "di":I
    iget-object v7, v0, Landroid/icu/util/CodePointTrie;->data:Landroid/icu/util/CodePointTrie$Data;

    invoke-virtual {v7, v5}, Landroid/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v7

    .line 317
    .local v7, "value":I
    if-eqz v2, :cond_26

    invoke-interface {v2, v7}, Landroid/icu/util/CodePointMap$ValueFilter;->apply(I)I

    move-result v7

    .line 318
    :cond_26
    invoke-virtual {v3, v1, v4, v7}, Landroid/icu/util/CodePointMap$Range;->set(III)V

    .line 319
    return v6

    .line 322
    .end local v5    # "di":I
    .end local v7    # "value":I
    :cond_2a
    iget v4, v0, Landroid/icu/util/CodePointTrie;->nullValue:I

    .line 323
    .local v4, "nullValue":I
    if-eqz v2, :cond_32

    invoke-interface {v2, v4}, Landroid/icu/util/CodePointMap$ValueFilter;->apply(I)I

    move-result v4

    .line 324
    :cond_32
    invoke-virtual {v0}, Landroid/icu/util/CodePointTrie;->getType()Landroid/icu/util/CodePointTrie$Type;

    move-result-object v5

    .line 326
    .local v5, "type":Landroid/icu/util/CodePointTrie$Type;
    const/4 v7, -0x1

    .line 327
    .local v7, "prevI3Block":I
    const/4 v8, -0x1

    .line 328
    .local v8, "prevBlock":I
    move/from16 v9, p1

    .line 330
    .local v9, "c":I
    const/4 v10, 0x0

    .local v10, "trieValue":I
    const/4 v11, 0x0

    .line 331
    .local v11, "value":I
    const/4 v12, 0x0

    .line 337
    .local v12, "haveValue":Z
    :goto_3d
    const v13, 0xffff

    if-gt v9, v13, :cond_5f

    sget-object v13, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    if-eq v5, v13, :cond_4a

    const/16 v13, 0xfff

    if-gt v9, v13, :cond_5f

    .line 338
    :cond_4a
    const/4 v13, 0x0

    .line 339
    .local v13, "i3Block":I
    shr-int/lit8 v14, v9, 0x6

    .line 340
    .local v14, "i3":I
    sget-object v15, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    if-ne v5, v15, :cond_54

    const/16 v15, 0x400

    goto :goto_56

    :cond_54
    const/16 v15, 0x40

    .line 341
    .local v15, "i3BlockLength":I
    :goto_56
    const/16 v16, 0x40

    move/from16 v23, v16

    move/from16 v16, v6

    move/from16 v6, v23

    .local v16, "dataBlockLength":I
    goto :goto_b8

    .line 344
    .end local v13    # "i3Block":I
    .end local v14    # "i3":I
    .end local v15    # "i3BlockLength":I
    .end local v16    # "dataBlockLength":I
    :cond_5f
    shr-int/lit8 v13, v9, 0xe

    .line 345
    .local v13, "i1":I
    sget-object v14, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    if-ne v5, v14, :cond_69

    .line 346
    nop

    .line 347
    add-int/lit16 v13, v13, 0x3fc

    goto :goto_6c

    .line 349
    :cond_69
    nop

    .line 350
    add-int/lit8 v13, v13, 0x40

    .line 352
    :goto_6c
    iget-object v14, v0, Landroid/icu/util/CodePointTrie;->index:[C

    iget-object v15, v0, Landroid/icu/util/CodePointTrie;->index:[C

    aget-char v15, v15, v13

    shr-int/lit8 v16, v9, 0x9

    and-int/lit8 v16, v16, 0x1f

    add-int v15, v15, v16

    aget-char v14, v14, v15

    .line 353
    .local v14, "i3Block":I
    if-ne v14, v7, :cond_8b

    sub-int v15, v9, v1

    move/from16 v16, v6

    const/16 v6, 0x200

    if-lt v15, v6, :cond_8d

    .line 355
    nop

    .line 356
    add-int/lit16 v9, v9, 0x200

    .line 357
    move-object/from16 v17, v5

    goto/16 :goto_198

    .line 353
    :cond_8b
    move/from16 v16, v6

    .line 359
    :cond_8d
    move v7, v14

    .line 360
    iget v6, v0, Landroid/icu/util/CodePointTrie;->index3NullOffset:I

    if-ne v14, v6, :cond_ac

    .line 362
    if-eqz v12, :cond_9c

    .line 363
    if-eq v4, v11, :cond_a0

    .line 364
    add-int/lit8 v6, v9, -0x1

    invoke-virtual {v3, v1, v6, v11}, Landroid/icu/util/CodePointMap$Range;->set(III)V

    .line 365
    return v16

    .line 368
    :cond_9c
    iget v10, v0, Landroid/icu/util/CodePointTrie;->nullValue:I

    .line 369
    move v11, v4

    .line 370
    const/4 v12, 0x1

    .line 372
    :cond_a0
    iget v6, v0, Landroid/icu/util/CodePointTrie;->dataNullOffset:I

    .line 373
    .end local v8    # "prevBlock":I
    .local v6, "prevBlock":I
    add-int/lit16 v8, v9, 0x200

    and-int/lit16 v8, v8, -0x200

    .line 374
    .end local v9    # "c":I
    .local v8, "c":I
    move-object/from16 v17, v5

    move v9, v8

    move v8, v6

    goto/16 :goto_198

    .line 376
    .end local v6    # "prevBlock":I
    .local v8, "prevBlock":I
    .restart local v9    # "c":I
    :cond_ac
    shr-int/lit8 v6, v9, 0x4

    and-int/lit8 v6, v6, 0x1f

    .line 377
    .local v6, "i3":I
    const/16 v15, 0x20

    .line 378
    .restart local v15    # "i3BlockLength":I
    const/16 v17, 0x10

    move v13, v14

    move v14, v6

    move/from16 v6, v17

    .line 383
    .local v6, "dataBlockLength":I
    .local v13, "i3Block":I
    .local v14, "i3":I
    :goto_b8
    const v17, 0x8000

    and-int v17, v13, v17

    if-nez v17, :cond_c8

    .line 384
    move-object/from16 v17, v5

    .end local v5    # "type":Landroid/icu/util/CodePointTrie$Type;
    .local v17, "type":Landroid/icu/util/CodePointTrie$Type;
    iget-object v5, v0, Landroid/icu/util/CodePointTrie;->index:[C

    add-int v18, v13, v14

    aget-char v5, v5, v18

    .local v5, "block":I
    goto :goto_f2

    .line 387
    .end local v17    # "type":Landroid/icu/util/CodePointTrie$Type;
    .local v5, "type":Landroid/icu/util/CodePointTrie$Type;
    :cond_c8
    move-object/from16 v17, v5

    .end local v5    # "type":Landroid/icu/util/CodePointTrie$Type;
    .restart local v17    # "type":Landroid/icu/util/CodePointTrie$Type;
    and-int/lit16 v5, v13, 0x7fff

    and-int/lit8 v18, v14, -0x8

    add-int v5, v5, v18

    shr-int/lit8 v18, v14, 0x3

    add-int v5, v5, v18

    .line 388
    .local v5, "group":I
    and-int/lit8 v18, v14, 0x7

    .line 389
    .local v18, "gi":I
    move/from16 v19, v5

    .end local v5    # "group":I
    .local v19, "group":I
    iget-object v5, v0, Landroid/icu/util/CodePointTrie;->index:[C

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "group":I
    .local v20, "group":I
    aget-char v5, v5, v19

    mul-int/lit8 v19, v18, 0x2

    add-int/lit8 v19, v19, 0x2

    shl-int v5, v5, v19

    const/high16 v19, 0x30000

    and-int v5, v5, v19

    .line 390
    .local v5, "block":I
    move/from16 v19, v5

    .end local v5    # "block":I
    .local v19, "block":I
    iget-object v5, v0, Landroid/icu/util/CodePointTrie;->index:[C

    add-int v21, v20, v18

    aget-char v5, v5, v21

    or-int v5, v19, v5

    .line 392
    .end local v18    # "gi":I
    .end local v19    # "block":I
    .end local v20    # "group":I
    .restart local v5    # "block":I
    :goto_f2
    if-ne v5, v8, :cond_100

    move/from16 v18, v7

    .end local v7    # "prevI3Block":I
    .local v18, "prevI3Block":I
    sub-int v7, v9, v1

    if-lt v7, v6, :cond_102

    .line 394
    nop

    .line 395
    add-int/2addr v9, v6

    move/from16 v19, v6

    goto/16 :goto_192

    .line 392
    .end local v18    # "prevI3Block":I
    .restart local v7    # "prevI3Block":I
    :cond_100
    move/from16 v18, v7

    .line 397
    .end local v7    # "prevI3Block":I
    .restart local v18    # "prevI3Block":I
    :cond_102
    add-int/lit8 v7, v6, -0x1

    .line 398
    .local v7, "dataMask":I
    move v8, v5

    .line 399
    move/from16 v19, v6

    .end local v6    # "dataBlockLength":I
    .local v19, "dataBlockLength":I
    iget v6, v0, Landroid/icu/util/CodePointTrie;->dataNullOffset:I

    if-ne v5, v6, :cond_122

    .line 401
    if-eqz v12, :cond_115

    .line 402
    if-eq v4, v11, :cond_119

    .line 403
    add-int/lit8 v6, v9, -0x1

    invoke-virtual {v3, v1, v6, v11}, Landroid/icu/util/CodePointMap$Range;->set(III)V

    .line 404
    return v16

    .line 407
    :cond_115
    iget v10, v0, Landroid/icu/util/CodePointTrie;->nullValue:I

    .line 408
    move v11, v4

    .line 409
    const/4 v12, 0x1

    .line 411
    :cond_119
    add-int v6, v9, v19

    move/from16 v20, v5

    .end local v5    # "block":I
    .local v20, "block":I
    not-int v5, v7

    and-int/2addr v5, v6

    move v9, v5

    .end local v9    # "c":I
    .local v5, "c":I
    goto/16 :goto_192

    .line 413
    .end local v20    # "block":I
    .local v5, "block":I
    .restart local v9    # "c":I
    :cond_122
    move/from16 v20, v5

    .end local v5    # "block":I
    .restart local v20    # "block":I
    and-int v5, v9, v7

    add-int v5, v20, v5

    .line 414
    .local v5, "di":I
    iget-object v6, v0, Landroid/icu/util/CodePointTrie;->data:Landroid/icu/util/CodePointTrie$Data;

    invoke-virtual {v6, v5}, Landroid/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v6

    .line 415
    .local v6, "trieValue2":I
    if-eqz v12, :cond_14e

    .line 416
    if-eq v6, v10, :cond_14b

    .line 417
    if-eqz v2, :cond_143

    move/from16 v21, v5

    .end local v5    # "di":I
    .local v21, "di":I
    iget v5, v0, Landroid/icu/util/CodePointTrie;->nullValue:I

    .line 418
    invoke-static {v6, v5, v4, v2}, Landroid/icu/util/CodePointTrie;->maybeFilterValue(IIILandroid/icu/util/CodePointMap$ValueFilter;)I

    move-result v5

    if-eq v5, v11, :cond_13f

    goto :goto_145

    .line 423
    :cond_13f
    move v10, v6

    move/from16 v5, v21

    goto :goto_15a

    .line 417
    .end local v21    # "di":I
    .restart local v5    # "di":I
    :cond_143
    move/from16 v21, v5

    .line 420
    .end local v5    # "di":I
    .restart local v21    # "di":I
    :goto_145
    add-int/lit8 v5, v9, -0x1

    invoke-virtual {v3, v1, v5, v11}, Landroid/icu/util/CodePointMap$Range;->set(III)V

    .line 421
    return v16

    .line 416
    .end local v21    # "di":I
    .restart local v5    # "di":I
    :cond_14b
    move/from16 v21, v5

    .end local v5    # "di":I
    .restart local v21    # "di":I
    goto :goto_15a

    .line 426
    .end local v21    # "di":I
    .restart local v5    # "di":I
    :cond_14e
    move/from16 v21, v5

    .end local v5    # "di":I
    .restart local v21    # "di":I
    move v10, v6

    .line 427
    iget v5, v0, Landroid/icu/util/CodePointTrie;->nullValue:I

    invoke-static {v6, v5, v4, v2}, Landroid/icu/util/CodePointTrie;->maybeFilterValue(IIILandroid/icu/util/CodePointMap$ValueFilter;)I

    move-result v11

    .line 428
    const/4 v12, 0x1

    move/from16 v5, v21

    .line 430
    .end local v21    # "di":I
    .restart local v5    # "di":I
    :goto_15a
    add-int/lit8 v9, v9, 0x1

    and-int v21, v9, v7

    if-eqz v21, :cond_18e

    .line 431
    move/from16 v21, v5

    .end local v5    # "di":I
    .restart local v21    # "di":I
    iget-object v5, v0, Landroid/icu/util/CodePointTrie;->data:Landroid/icu/util/CodePointTrie$Data;

    move/from16 v22, v6

    .end local v6    # "trieValue2":I
    .local v22, "trieValue2":I
    add-int/lit8 v6, v21, 0x1

    .end local v21    # "di":I
    .local v6, "di":I
    invoke-virtual {v5, v6}, Landroid/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v5

    .line 432
    .end local v22    # "trieValue2":I
    .local v5, "trieValue2":I
    if-eq v5, v10, :cond_188

    .line 433
    if-eqz v2, :cond_180

    move/from16 v21, v6

    .end local v6    # "di":I
    .restart local v21    # "di":I
    iget v6, v0, Landroid/icu/util/CodePointTrie;->nullValue:I

    .line 434
    invoke-static {v5, v6, v4, v2}, Landroid/icu/util/CodePointTrie;->maybeFilterValue(IIILandroid/icu/util/CodePointMap$ValueFilter;)I

    move-result v6

    if-eq v6, v11, :cond_17b

    goto :goto_182

    .line 439
    :cond_17b
    move v10, v5

    move v6, v5

    move/from16 v5, v21

    goto :goto_15a

    .line 433
    .end local v21    # "di":I
    .restart local v6    # "di":I
    :cond_180
    move/from16 v21, v6

    .line 436
    .end local v6    # "di":I
    .restart local v21    # "di":I
    :goto_182
    add-int/lit8 v6, v9, -0x1

    invoke-virtual {v3, v1, v6, v11}, Landroid/icu/util/CodePointMap$Range;->set(III)V

    .line 437
    return v16

    .line 432
    .end local v21    # "di":I
    .restart local v6    # "di":I
    :cond_188
    move/from16 v21, v6

    .end local v6    # "di":I
    .restart local v21    # "di":I
    move v6, v5

    move/from16 v5, v21

    goto :goto_15a

    .line 430
    .end local v21    # "di":I
    .local v5, "di":I
    .local v6, "trieValue2":I
    :cond_18e
    move/from16 v21, v5

    move/from16 v22, v6

    .line 444
    .end local v5    # "di":I
    .end local v6    # "trieValue2":I
    .end local v7    # "dataMask":I
    .end local v20    # "block":I
    :goto_192
    add-int/lit8 v14, v14, 0x1

    if-lt v14, v15, :cond_1bf

    move/from16 v7, v18

    .line 445
    .end local v13    # "i3Block":I
    .end local v14    # "i3":I
    .end local v15    # "i3BlockLength":I
    .end local v18    # "prevI3Block":I
    .end local v19    # "dataBlockLength":I
    .local v7, "prevI3Block":I
    :goto_198
    iget v5, v0, Landroid/icu/util/CodePointTrie;->highStart:I

    if-lt v9, v5, :cond_1b9

    .line 446
    nop

    .line 447
    iget v5, v0, Landroid/icu/util/CodePointTrie;->dataLength:I

    add-int/lit8 v5, v5, -0x2

    .line 448
    .restart local v5    # "di":I
    iget-object v6, v0, Landroid/icu/util/CodePointTrie;->data:Landroid/icu/util/CodePointTrie$Data;

    invoke-virtual {v6, v5}, Landroid/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v6

    .line 449
    .local v6, "highValue":I
    iget v13, v0, Landroid/icu/util/CodePointTrie;->nullValue:I

    invoke-static {v6, v13, v4, v2}, Landroid/icu/util/CodePointTrie;->maybeFilterValue(IIILandroid/icu/util/CodePointMap$ValueFilter;)I

    move-result v13

    if-eq v13, v11, :cond_1b2

    .line 450
    add-int/lit8 v9, v9, -0x1

    goto :goto_1b5

    .line 452
    :cond_1b2
    const v9, 0x10ffff

    .line 454
    :goto_1b5
    invoke-virtual {v3, v1, v9, v11}, Landroid/icu/util/CodePointMap$Range;->set(III)V

    .line 455
    return v16

    .line 445
    .end local v5    # "di":I
    .end local v6    # "highValue":I
    :cond_1b9
    move/from16 v6, v16

    move-object/from16 v5, v17

    goto/16 :goto_3d

    .line 444
    .end local v7    # "prevI3Block":I
    .restart local v13    # "i3Block":I
    .restart local v14    # "i3":I
    .restart local v15    # "i3BlockLength":I
    .restart local v18    # "prevI3Block":I
    .restart local v19    # "dataBlockLength":I
    :cond_1bf
    move-object/from16 v5, v17

    move/from16 v7, v18

    move/from16 v6, v19

    goto/16 :goto_b8

    .line 312
    .end local v4    # "nullValue":I
    .end local v8    # "prevBlock":I
    .end local v9    # "c":I
    .end local v10    # "trieValue":I
    .end local v11    # "value":I
    .end local v12    # "haveValue":Z
    .end local v13    # "i3Block":I
    .end local v14    # "i3":I
    .end local v15    # "i3BlockLength":I
    .end local v17    # "type":Landroid/icu/util/CodePointTrie$Type;
    .end local v18    # "prevI3Block":I
    .end local v19    # "dataBlockLength":I
    :cond_1c7
    :goto_1c7
    const/4 v4, 0x0

    return v4
.end method

.method public abstract blacklist getType()Landroid/icu/util/CodePointTrie$Type;
.end method

.method public final blacklist getValueWidth()Landroid/icu/util/CodePointTrie$ValueWidth;
    .registers 2

    .line 272
    iget-object v0, p0, Landroid/icu/util/CodePointTrie;->data:Landroid/icu/util/CodePointTrie$Data;

    invoke-virtual {v0}, Landroid/icu/util/CodePointTrie$Data;->getValueWidth()Landroid/icu/util/CodePointTrie$ValueWidth;

    move-result-object v0

    return-object v0
.end method

.method protected final blacklist smallIndex(Landroid/icu/util/CodePointTrie$Type;I)I
    .registers 4
    .param p1, "type"    # Landroid/icu/util/CodePointTrie$Type;
    .param p2, "c"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 687
    iget v0, p0, Landroid/icu/util/CodePointTrie;->highStart:I

    if-lt p2, v0, :cond_9

    .line 688
    iget v0, p0, Landroid/icu/util/CodePointTrie;->dataLength:I

    add-int/lit8 v0, v0, -0x2

    return v0

    .line 690
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/icu/util/CodePointTrie;->internalSmallIndex(Landroid/icu/util/CodePointTrie$Type;I)I

    move-result v0

    return v0
.end method

.method public final blacklist toBinary(Ljava/io/OutputStream;)I
    .registers 8
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 467
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 470
    .local v0, "dos":Ljava/io/DataOutputStream;
    const v1, 0x54726933

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 471
    iget v1, p0, Landroid/icu/util/CodePointTrie;->dataLength:I

    const/high16 v2, 0xf0000

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x4

    iget v3, p0, Landroid/icu/util/CodePointTrie;->dataNullOffset:I

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 474
    invoke-virtual {p0}, Landroid/icu/util/CodePointTrie;->getType()Landroid/icu/util/CodePointTrie$Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/CodePointTrie$Type;->ordinal()I

    move-result v2

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    .line 475
    invoke-virtual {p0}, Landroid/icu/util/CodePointTrie;->getValueWidth()Landroid/icu/util/CodePointTrie$ValueWidth;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/CodePointTrie$ValueWidth;->ordinal()I

    move-result v2

    or-int/2addr v1, v2

    .line 471
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 476
    iget-object v1, p0, Landroid/icu/util/CodePointTrie;->index:[C

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 477
    iget v1, p0, Landroid/icu/util/CodePointTrie;->dataLength:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 478
    iget v1, p0, Landroid/icu/util/CodePointTrie;->index3NullOffset:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 479
    iget v1, p0, Landroid/icu/util/CodePointTrie;->dataNullOffset:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 480
    iget v1, p0, Landroid/icu/util/CodePointTrie;->highStart:I

    shr-int/lit8 v1, v1, 0x9

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 481
    const/16 v1, 0x10

    .line 483
    .local v1, "length":I
    iget-object v2, p0, Landroid/icu/util/CodePointTrie;->index:[C

    array-length v3, v2

    const/4 v4, 0x0

    :goto_51
    if-ge v4, v3, :cond_5b

    aget-char v5, v2, v4

    .local v5, "i":C
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeChar(I)V

    .end local v5    # "i":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 484
    :cond_5b
    iget-object v2, p0, Landroid/icu/util/CodePointTrie;->index:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 485
    iget-object v2, p0, Landroid/icu/util/CodePointTrie;->data:Landroid/icu/util/CodePointTrie$Data;

    invoke-virtual {v2, v0}, Landroid/icu/util/CodePointTrie$Data;->write(Ljava/io/DataOutputStream;)I

    move-result v2
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_67} :catch_69

    add-int/2addr v1, v2

    .line 486
    return v1

    .line 487
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v1    # "length":I
    :catch_69
    move-exception v0

    .line 488
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
