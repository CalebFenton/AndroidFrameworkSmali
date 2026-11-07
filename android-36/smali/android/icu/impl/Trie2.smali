.class public abstract Landroid/icu/impl/Trie2;
.super Ljava/lang/Object;
.source "Trie2.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Trie2$UTrie2Header;,
        Landroid/icu/impl/Trie2$ValueWidth;,
        Landroid/icu/impl/Trie2$Range;,
        Landroid/icu/impl/Trie2$ValueMapper;,
        Landroid/icu/impl/Trie2$Trie2Iterator;,
        Landroid/icu/impl/Trie2$CharSequenceIterator;,
        Landroid/icu/impl/Trie2$CharSequenceValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/impl/Trie2$Range;",
        ">;"
    }
.end annotation


# static fields
.field static final greylist-max-o UNEWTRIE2_INDEX_1_LENGTH:I = 0x220

.field static final greylist-max-o UNEWTRIE2_INDEX_GAP_LENGTH:I = 0x240

.field static final greylist-max-o UNEWTRIE2_INDEX_GAP_OFFSET:I = 0x820

.field static final greylist-max-o UNEWTRIE2_MAX_DATA_LENGTH:I = 0x110480

.field static final greylist-max-o UNEWTRIE2_MAX_INDEX_2_LENGTH:I = 0x8aa0

.field static final greylist-max-o UTRIE2_BAD_UTF8_DATA_OFFSET:I = 0x80

.field static final greylist-max-o UTRIE2_CP_PER_INDEX_1_ENTRY:I = 0x800

.field static final greylist-max-o UTRIE2_DATA_BLOCK_LENGTH:I = 0x20

.field static final greylist-max-o UTRIE2_DATA_GRANULARITY:I = 0x4

.field static final greylist-max-o UTRIE2_DATA_MASK:I = 0x1f

.field static final greylist-max-o UTRIE2_DATA_START_OFFSET:I = 0xc0

.field static final greylist-max-o UTRIE2_INDEX_1_OFFSET:I = 0x840

.field static final greylist-max-o UTRIE2_INDEX_2_BLOCK_LENGTH:I = 0x40

.field static final greylist-max-o UTRIE2_INDEX_2_BMP_LENGTH:I = 0x820

.field static final greylist-max-o UTRIE2_INDEX_2_MASK:I = 0x3f

.field static final greylist-max-o UTRIE2_INDEX_2_OFFSET:I = 0x0

.field static final greylist-max-o UTRIE2_INDEX_SHIFT:I = 0x2

.field static final greylist-max-o UTRIE2_LSCP_INDEX_2_LENGTH:I = 0x20

.field static final greylist-max-o UTRIE2_LSCP_INDEX_2_OFFSET:I = 0x800

.field static final greylist-max-o UTRIE2_MAX_INDEX_1_LENGTH:I = 0x200

.field static final greylist-max-o UTRIE2_OMITTED_BMP_INDEX_1_LENGTH:I = 0x20

.field static final greylist-max-o UTRIE2_OPTIONS_VALUE_BITS_MASK:I = 0xf

.field static final greylist-max-o UTRIE2_SHIFT_1:I = 0xb

.field static final greylist-max-o UTRIE2_SHIFT_1_2:I = 0x6

.field static final greylist-max-o UTRIE2_SHIFT_2:I = 0x5

.field static final greylist-max-o UTRIE2_UTF8_2B_INDEX_2_LENGTH:I = 0x20

.field static final greylist-max-o UTRIE2_UTF8_2B_INDEX_2_OFFSET:I = 0x820

.field private static greylist-max-o defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;


# instance fields
.field greylist-max-o data16:I

.field greylist-max-o data32:[I

.field greylist-max-o dataLength:I

.field greylist-max-o dataNullOffset:I

.field greylist-max-o errorValue:I

.field greylist-max-o fHash:I

.field greylist-max-o header:Landroid/icu/impl/Trie2$UTrie2Header;

.field greylist-max-o highStart:I

.field greylist-max-o highValueIndex:I

.field greylist-max-o index:[C

.field greylist-max-o index2NullOffset:I

.field greylist-max-o indexLength:I

.field greylist-max-o initialValue:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smhashByte(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smhashInt(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashInt(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smhashUChar32(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashUChar32(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminitHash()I
    .registers 1

    invoke-static {}, Landroid/icu/impl/Trie2;->initHash()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 386
    new-instance v0, Landroid/icu/impl/Trie2$1;

    invoke-direct {v0}, Landroid/icu/impl/Trie2$1;-><init>()V

    sput-object v0, Landroid/icu/impl/Trie2;->defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;
    .registers 10
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 99
    .local v0, "outerByteOrder":Ljava/nio/ByteOrder;
    :try_start_4
    new-instance v1, Landroid/icu/impl/Trie2$UTrie2Header;

    invoke-direct {v1}, Landroid/icu/impl/Trie2$UTrie2Header;-><init>()V

    .line 102
    .local v1, "header":Landroid/icu/impl/Trie2$UTrie2Header;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    .line 103
    iget v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_10a

    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_ff

    .line 106
    :sswitch_1a
    goto :goto_32

    .line 109
    :sswitch_1b
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v2, :cond_21

    move v2, v3

    goto :goto_22

    :cond_21
    move v2, v4

    .line 110
    .local v2, "isBigEndian":Z
    :goto_22
    if-eqz v2, :cond_27

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_29

    :cond_27
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_29
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 111
    const v5, 0x54726932

    iput v5, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    .line 112
    nop

    .line 117
    .end local v2    # "isBigEndian":Z
    :goto_32
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    .line 120
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    .line 122
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    iput v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    .line 126
    iget v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I
    :try_end_58
    .catchall {:try_start_4 .. :try_end_58} :catchall_105

    and-int/lit8 v2, v2, 0xf

    const-string v5, "UTrie2 serialized format error."

    if-gt v2, v3, :cond_f9

    .line 131
    :try_start_5e
    iget v2, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_6c

    .line 132
    sget-object v2, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    .line 133
    .local v2, "width":Landroid/icu/impl/Trie2$ValueWidth;
    new-instance v3, Landroid/icu/impl/Trie2_16;

    invoke-direct {v3}, Landroid/icu/impl/Trie2_16;-><init>()V

    .local v3, "This":Landroid/icu/impl/Trie2;
    goto :goto_73

    .line 135
    .end local v2    # "width":Landroid/icu/impl/Trie2$ValueWidth;
    .end local v3    # "This":Landroid/icu/impl/Trie2;
    :cond_6c
    sget-object v2, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    .line 136
    .restart local v2    # "width":Landroid/icu/impl/Trie2$ValueWidth;
    new-instance v3, Landroid/icu/impl/Trie2_32;

    invoke-direct {v3}, Landroid/icu/impl/Trie2_32;-><init>()V

    .line 138
    .restart local v3    # "This":Landroid/icu/impl/Trie2;
    :goto_73
    iput-object v1, v3, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    .line 141
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    iput v6, v3, Landroid/icu/impl/Trie2;->indexLength:I

    .line 142
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    shl-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/icu/impl/Trie2;->dataLength:I

    .line 143
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    iput v6, v3, Landroid/icu/impl/Trie2;->index2NullOffset:I

    .line 144
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    iput v6, v3, Landroid/icu/impl/Trie2;->dataNullOffset:I

    .line 145
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    shl-int/lit8 v6, v6, 0xb

    iput v6, v3, Landroid/icu/impl/Trie2;->highStart:I

    .line 146
    iget v6, v3, Landroid/icu/impl/Trie2;->dataLength:I

    add-int/lit8 v6, v6, -0x4

    iput v6, v3, Landroid/icu/impl/Trie2;->highValueIndex:I

    .line 147
    sget-object v6, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne v2, v6, :cond_9e

    .line 148
    iget v6, v3, Landroid/icu/impl/Trie2;->highValueIndex:I

    iget v7, v3, Landroid/icu/impl/Trie2;->indexLength:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/icu/impl/Trie2;->highValueIndex:I

    .line 154
    :cond_9e
    iget v6, v3, Landroid/icu/impl/Trie2;->indexLength:I

    .line 155
    .local v6, "indexArraySize":I
    sget-object v7, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne v2, v7, :cond_a7

    .line 156
    iget v7, v3, Landroid/icu/impl/Trie2;->dataLength:I

    add-int/2addr v6, v7

    .line 160
    :cond_a7
    invoke-static {p0, v6, v4}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v7

    iput-object v7, v3, Landroid/icu/impl/Trie2;->index:[C

    .line 165
    sget-object v7, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne v2, v7, :cond_b6

    .line 166
    iget v7, v3, Landroid/icu/impl/Trie2;->indexLength:I

    iput v7, v3, Landroid/icu/impl/Trie2;->data16:I

    goto :goto_be

    .line 168
    :cond_b6
    iget v7, v3, Landroid/icu/impl/Trie2;->dataLength:I

    invoke-static {p0, v7, v4}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v7

    iput-object v7, v3, Landroid/icu/impl/Trie2;->data32:[I

    .line 171
    :goto_be
    invoke-virtual {v2}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v7

    const/16 v8, 0x80

    packed-switch v7, :pswitch_data_114

    .line 183
    new-instance v4, Ljava/lang/IllegalArgumentException;

    goto :goto_f5

    .line 178
    :pswitch_ca
    iput v4, v3, Landroid/icu/impl/Trie2;->data16:I

    .line 179
    iget-object v4, v3, Landroid/icu/impl/Trie2;->data32:[I

    iget v5, v3, Landroid/icu/impl/Trie2;->dataNullOffset:I

    aget v4, v4, v5

    iput v4, v3, Landroid/icu/impl/Trie2;->initialValue:I

    .line 180
    iget-object v4, v3, Landroid/icu/impl/Trie2;->data32:[I

    aget v4, v4, v8

    iput v4, v3, Landroid/icu/impl/Trie2;->errorValue:I

    .line 181
    goto :goto_f0

    .line 173
    :pswitch_db
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/icu/impl/Trie2;->data32:[I

    .line 174
    iget-object v4, v3, Landroid/icu/impl/Trie2;->index:[C

    iget v5, v3, Landroid/icu/impl/Trie2;->dataNullOffset:I

    aget-char v4, v4, v5

    iput v4, v3, Landroid/icu/impl/Trie2;->initialValue:I

    .line 175
    iget-object v4, v3, Landroid/icu/impl/Trie2;->index:[C

    iget v5, v3, Landroid/icu/impl/Trie2;->data16:I

    add-int/2addr v5, v8

    aget-char v4, v4, v5

    iput v4, v3, Landroid/icu/impl/Trie2;->errorValue:I
    :try_end_ef
    .catchall {:try_start_5e .. :try_end_ef} :catchall_105

    .line 176
    nop

    .line 186
    :goto_f0
    nop

    .line 188
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 186
    return-object v3

    .line 183
    :goto_f5
    :try_start_f5
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outerByteOrder":Ljava/nio/ByteOrder;
    .end local p0    # "bytes":Ljava/nio/ByteBuffer;
    throw v4

    .line 127
    .end local v2    # "width":Landroid/icu/impl/Trie2$ValueWidth;
    .end local v3    # "This":Landroid/icu/impl/Trie2;
    .end local v6    # "indexArraySize":I
    .restart local v0    # "outerByteOrder":Ljava/nio/ByteOrder;
    .restart local p0    # "bytes":Ljava/nio/ByteBuffer;
    :cond_f9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outerByteOrder":Ljava/nio/ByteOrder;
    .end local p0    # "bytes":Ljava/nio/ByteBuffer;
    throw v2

    .line 114
    .restart local v0    # "outerByteOrder":Ljava/nio/ByteOrder;
    .restart local p0    # "bytes":Ljava/nio/ByteBuffer;
    :goto_ff
    const-string v3, "Buffer does not contain a serialized UTrie2"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outerByteOrder":Ljava/nio/ByteOrder;
    .end local p0    # "bytes":Ljava/nio/ByteBuffer;
    throw v2
    :try_end_105
    .catchall {:try_start_f5 .. :try_end_105} :catchall_105

    .line 188
    .end local v1    # "header":Landroid/icu/impl/Trie2$UTrie2Header;
    .restart local v0    # "outerByteOrder":Ljava/nio/ByteOrder;
    .restart local p0    # "bytes":Ljava/nio/ByteBuffer;
    :catchall_105
    move-exception v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 189
    throw v1

    :sswitch_data_10a
    .sparse-switch
        0x32697254 -> :sswitch_1b
        0x54726932 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_db
        :pswitch_ca
    .end packed-switch
.end method

.method public static blacklist getVersion(Ljava/io/InputStream;Z)I
    .registers 14
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "littleEndianOk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 209
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 210
    new-array v0, v0, [B

    .line 211
    .local v0, "sig":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 212
    .local v1, "read":I
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 214
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v1, v2, :cond_18

    .line 215
    return v3

    .line 218
    :cond_18
    aget-byte v2, v0, v3

    const/16 v4, 0x65

    const/4 v5, 0x3

    const/16 v6, 0x69

    const/16 v7, 0x72

    const/16 v8, 0x54

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v2, v8, :cond_34

    aget-byte v2, v0, v10

    if-ne v2, v7, :cond_34

    aget-byte v2, v0, v9

    if-ne v2, v6, :cond_34

    aget-byte v2, v0, v5

    if-ne v2, v4, :cond_34

    .line 219
    return v10

    .line 221
    :cond_34
    aget-byte v2, v0, v3

    const/16 v11, 0x32

    if-ne v2, v8, :cond_47

    aget-byte v2, v0, v10

    if-ne v2, v7, :cond_47

    aget-byte v2, v0, v9

    if-ne v2, v6, :cond_47

    aget-byte v2, v0, v5

    if-ne v2, v11, :cond_47

    .line 222
    return v9

    .line 224
    :cond_47
    if-eqz p1, :cond_6b

    .line 225
    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_5a

    aget-byte v2, v0, v10

    if-ne v2, v6, :cond_5a

    aget-byte v2, v0, v9

    if-ne v2, v7, :cond_5a

    aget-byte v2, v0, v5

    if-ne v2, v8, :cond_5a

    .line 226
    return v10

    .line 228
    :cond_5a
    aget-byte v2, v0, v3

    if-ne v2, v11, :cond_6b

    aget-byte v2, v0, v10

    if-ne v2, v6, :cond_6b

    aget-byte v2, v0, v9

    if-ne v2, v7, :cond_6b

    aget-byte v2, v0, v5

    if-ne v2, v8, :cond_6b

    .line 229
    return v9

    .line 232
    :cond_6b
    return v3

    .line 207
    .end local v0    # "sig":[B
    .end local v1    # "read":I
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream must support mark()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o hashByte(II)I
    .registers 3
    .param p0, "h"    # I
    .param p1, "b"    # I

    .line 1039
    const v0, 0x1000193

    mul-int/2addr p0, v0

    .line 1040
    xor-int/2addr p0, p1

    .line 1041
    return p0
.end method

.method private static greylist-max-o hashInt(II)I
    .registers 3
    .param p0, "h"    # I
    .param p1, "i"    # I

    .line 1052
    and-int/lit16 v0, p1, 0xff

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    .line 1053
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    .line 1054
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    .line 1055
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    .line 1056
    return p0
.end method

.method private static greylist-max-o hashUChar32(II)I
    .registers 3
    .param p0, "h"    # I
    .param p1, "c"    # I

    .line 1045
    and-int/lit16 v0, p1, 0xff

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    .line 1046
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    .line 1047
    shr-int/lit8 v0, p1, 0x10

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    .line 1048
    return p0
.end method

.method private static greylist-max-o initHash()I
    .registers 1

    .line 1035
    const v0, -0x7ee3623b

    return v0
.end method


# virtual methods
.method public blacklist charSequenceIterator(Ljava/lang/CharSequence;I)Landroid/icu/impl/Trie2$CharSequenceIterator;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I

    .line 521
    new-instance v0, Landroid/icu/impl/Trie2$CharSequenceIterator;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/Trie2$CharSequenceIterator;-><init>(Landroid/icu/impl/Trie2;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 290
    instance-of v0, p1, Landroid/icu/impl/Trie2;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 291
    return v1

    .line 293
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/Trie2;

    .line 296
    .local v0, "OtherTrie":Landroid/icu/impl/Trie2;
    invoke-virtual {v0}, Landroid/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 297
    .local v2, "otherIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    invoke-virtual {p0}, Landroid/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/Trie2$Range;

    .line 298
    .local v4, "rangeFromThis":Landroid/icu/impl/Trie2$Range;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_24

    .line 299
    return v1

    .line 301
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/Trie2$Range;

    .line 302
    .local v5, "rangeFromOther":Landroid/icu/impl/Trie2$Range;
    invoke-virtual {v4, v5}, Landroid/icu/impl/Trie2$Range;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 303
    return v1

    .line 305
    .end local v4    # "rangeFromThis":Landroid/icu/impl/Trie2$Range;
    :cond_31
    goto :goto_11

    .line 306
    .end local v5    # "rangeFromOther":Landroid/icu/impl/Trie2$Range;
    :cond_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 307
    return v1

    .line 310
    :cond_39
    iget v3, p0, Landroid/icu/impl/Trie2;->errorValue:I

    iget v4, v0, Landroid/icu/impl/Trie2;->errorValue:I

    if-ne v3, v4, :cond_48

    iget v3, p0, Landroid/icu/impl/Trie2;->initialValue:I

    iget v4, v0, Landroid/icu/impl/Trie2;->initialValue:I

    if-eq v3, v4, :cond_46

    goto :goto_48

    .line 315
    :cond_46
    const/4 v1, 0x1

    return v1

    .line 312
    :cond_48
    :goto_48
    return v1
.end method

.method public abstract blacklist get(I)I
.end method

.method public abstract blacklist getFromU16SingleLead(C)I
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 321
    iget v0, p0, Landroid/icu/impl/Trie2;->fHash:I

    if-nez v0, :cond_26

    .line 322
    invoke-static {}, Landroid/icu/impl/Trie2;->initHash()I

    move-result v0

    .line 323
    .local v0, "hash":I
    invoke-virtual {p0}, Landroid/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/Trie2$Range;

    .line 324
    .local v2, "r":Landroid/icu/impl/Trie2$Range;
    invoke-virtual {v2}, Landroid/icu/impl/Trie2$Range;->hashCode()I

    move-result v3

    invoke-static {v0, v3}, Landroid/icu/impl/Trie2;->hashInt(II)I

    move-result v0

    .line 325
    .end local v2    # "r":Landroid/icu/impl/Trie2$Range;
    goto :goto_c

    .line 326
    :cond_21
    if-nez v0, :cond_24

    .line 327
    const/4 v0, 0x1

    .line 329
    :cond_24
    iput v0, p0, Landroid/icu/impl/Trie2;->fHash:I

    .line 331
    .end local v0    # "hash":I
    :cond_26
    iget v0, p0, Landroid/icu/impl/Trie2;->fHash:I

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    .line 383
    sget-object v0, Landroid/icu/impl/Trie2;->defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie2;->iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;
    .registers 3
    .param p1, "mapper"    # Landroid/icu/impl/Trie2$ValueMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/Trie2$ValueMapper;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    .line 404
    new-instance v0, Landroid/icu/impl/Trie2$Trie2Iterator;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/Trie2$Trie2Iterator;-><init>(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueMapper;)V

    return-object v0
.end method

.method public blacklist iteratorForLeadSurrogate(C)Ljava/util/Iterator;
    .registers 4
    .param p1, "lead"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    .line 439
    new-instance v0, Landroid/icu/impl/Trie2$Trie2Iterator;

    sget-object v1, Landroid/icu/impl/Trie2;->defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-direct {v0, p0, p1, v1}, Landroid/icu/impl/Trie2$Trie2Iterator;-><init>(Landroid/icu/impl/Trie2;CLandroid/icu/impl/Trie2$ValueMapper;)V

    return-object v0
.end method

.method public blacklist iteratorForLeadSurrogate(CLandroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;
    .registers 4
    .param p1, "lead"    # C
    .param p2, "mapper"    # Landroid/icu/impl/Trie2$ValueMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Landroid/icu/impl/Trie2$ValueMapper;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Landroid/icu/impl/Trie2$Trie2Iterator;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/Trie2$Trie2Iterator;-><init>(Landroid/icu/impl/Trie2;CLandroid/icu/impl/Trie2$ValueMapper;)V

    return-object v0
.end method

.method greylist-max-o rangeEnd(III)I
    .registers 7
    .param p1, "start"    # I
    .param p2, "limitp"    # I
    .param p3, "val"    # I

    .line 1017
    iget v0, p0, Landroid/icu/impl/Trie2;->highStart:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1019
    .local v0, "limit":I
    add-int/lit8 v1, p1, 0x1

    .local v1, "c":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 1020
    invoke-virtual {p0, v1}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v2

    if-eq v2, p3, :cond_11

    .line 1021
    goto :goto_14

    .line 1019
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1024
    :cond_14
    :goto_14
    iget v2, p0, Landroid/icu/impl/Trie2;->highStart:I

    if-lt v1, v2, :cond_19

    .line 1025
    move v1, p2

    .line 1027
    :cond_19
    add-int/lit8 v2, v1, -0x1

    return v2
.end method

.method protected blacklist serializeHeader(Ljava/io/DataOutputStream;)I
    .registers 5
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    const/4 v0, 0x0

    .line 477
    .local v0, "bytesWritten":I
    iget-object v1, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v1, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 478
    iget-object v1, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v1, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 479
    iget-object v1, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v1, v1, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 480
    iget-object v1, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v1, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 481
    iget-object v1, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v1, v1, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 482
    iget-object v1, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v1, v1, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 483
    iget-object v1, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v1, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 484
    add-int/lit8 v0, v0, 0x10

    .line 488
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_35
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    if-ge v1, v2, :cond_45

    .line 489
    iget-object v2, p0, Landroid/icu/impl/Trie2;->index:[C

    aget-char v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 491
    :cond_45
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    add-int/2addr v0, v2

    .line 492
    return v0
.end method
