.class public abstract Landroid/icu/impl/Trie2;
.super Ljava/lang/Object;
.source "Trie2.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Trie2$1;,
        Landroid/icu/impl/Trie2$CharSequenceIterator;,
        Landroid/icu/impl/Trie2$CharSequenceValues;,
        Landroid/icu/impl/Trie2$Range;,
        Landroid/icu/impl/Trie2$Trie2Iterator;,
        Landroid/icu/impl/Trie2$UTrie2Header;,
        Landroid/icu/impl/Trie2$ValueMapper;,
        Landroid/icu/impl/Trie2$ValueWidth;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/impl/Trie2$Range;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-impl-Trie2$ValueWidthSwitchesValues:[I = null

.field static final UNEWTRIE2_INDEX_1_LENGTH:I = 0x220

.field static final UNEWTRIE2_INDEX_GAP_LENGTH:I = 0x240

.field static final UNEWTRIE2_INDEX_GAP_OFFSET:I = 0x820

.field static final UNEWTRIE2_MAX_DATA_LENGTH:I = 0x110480

.field static final UNEWTRIE2_MAX_INDEX_2_LENGTH:I = 0x8aa0

.field static final UTRIE2_BAD_UTF8_DATA_OFFSET:I = 0x80

.field static final UTRIE2_CP_PER_INDEX_1_ENTRY:I = 0x800

.field static final UTRIE2_DATA_BLOCK_LENGTH:I = 0x20

.field static final UTRIE2_DATA_GRANULARITY:I = 0x4

.field static final UTRIE2_DATA_MASK:I = 0x1f

.field static final UTRIE2_DATA_START_OFFSET:I = 0xc0

.field static final UTRIE2_INDEX_1_OFFSET:I = 0x840

.field static final UTRIE2_INDEX_2_BLOCK_LENGTH:I = 0x40

.field static final UTRIE2_INDEX_2_BMP_LENGTH:I = 0x820

.field static final UTRIE2_INDEX_2_MASK:I = 0x3f

.field static final UTRIE2_INDEX_2_OFFSET:I = 0x0

.field static final UTRIE2_INDEX_SHIFT:I = 0x2

.field static final UTRIE2_LSCP_INDEX_2_LENGTH:I = 0x20

.field static final UTRIE2_LSCP_INDEX_2_OFFSET:I = 0x800

.field static final UTRIE2_MAX_INDEX_1_LENGTH:I = 0x200

.field static final UTRIE2_OMITTED_BMP_INDEX_1_LENGTH:I = 0x20

.field static final UTRIE2_OPTIONS_VALUE_BITS_MASK:I = 0xf

.field static final UTRIE2_SHIFT_1:I = 0xb

.field static final UTRIE2_SHIFT_1_2:I = 0x6

.field static final UTRIE2_SHIFT_2:I = 0x5

.field static final UTRIE2_UTF8_2B_INDEX_2_LENGTH:I = 0x20

.field static final UTRIE2_UTF8_2B_INDEX_2_OFFSET:I = 0x820

.field private static defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;


# instance fields
.field data16:I

.field data32:[I

.field dataLength:I

.field dataNullOffset:I

.field errorValue:I

.field fHash:I

.field header:Landroid/icu/impl/Trie2$UTrie2Header;

.field highStart:I

.field highValueIndex:I

.field index:[C

.field index2NullOffset:I

.field indexLength:I

.field initialValue:I


# direct methods
.method private static synthetic -getandroid-icu-impl-Trie2$ValueWidthSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/impl/Trie2;->-android-icu-impl-Trie2$ValueWidthSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/Trie2;->-android-icu-impl-Trie2$ValueWidthSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/impl/Trie2$ValueWidth;->values()[Landroid/icu/impl/Trie2$ValueWidth;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@10
    invoke-virtual {v1}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    #@19
    invoke-virtual {v1}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Landroid/icu/impl/Trie2;->-android-icu-impl-Trie2$ValueWidthSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method static synthetic -wrap0(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "i"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashInt(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "c"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashUChar32(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3()I
    .locals 1

    #@0
    invoke-static {}, Landroid/icu/impl/Trie2;->initHash()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 378
    new-instance v0, Landroid/icu/impl/Trie2$1;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/Trie2$1;-><init>()V

    #@5
    sput-object v0, Landroid/icu/impl/Trie2;->defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;
    .locals 8
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@5
    move-result-object v4

    #@6
    .line 97
    .local v4, "outerByteOrder":Ljava/nio/ByteOrder;
    :try_start_0
    new-instance v1, Landroid/icu/impl/Trie2$UTrie2Header;

    #@8
    invoke-direct {v1}, Landroid/icu/impl/Trie2$UTrie2Header;-><init>()V

    #@b
    .line 100
    .local v1, "header":Landroid/icu/impl/Trie2$UTrie2Header;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@e
    move-result v6

    #@f
    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    #@11
    .line 101
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    #@13
    sparse-switch v6, :sswitch_data_0

    #@16
    .line 112
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v7, "Buffer does not contain a serialized UTrie2"

    #@1b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 185
    .end local v1    # "header":Landroid/icu/impl/Trie2$UTrie2Header;
    :catchall_0
    move-exception v6

    #@20
    .line 186
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@23
    .line 185
    throw v6

    #@24
    .line 107
    .restart local v1    # "header":Landroid/icu/impl/Trie2$UTrie2Header;
    :sswitch_0
    :try_start_1
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@26
    if-ne v4, v6, :cond_0

    #@28
    move v3, v7

    #@29
    .line 108
    .local v3, "isBigEndian":Z
    :cond_0
    if-eqz v3, :cond_1

    #@2b
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2d
    :goto_0
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@30
    .line 109
    const v6, 0x54726932

    #@33
    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    #@35
    .line 115
    .end local v3    # "isBigEndian":Z
    :sswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@38
    move-result v6

    #@39
    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    #@3b
    .line 116
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@3e
    move-result v6

    #@3f
    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    #@41
    .line 117
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@44
    move-result v6

    #@45
    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    #@47
    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@4a
    move-result v6

    #@4b
    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    #@4d
    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@50
    move-result v6

    #@51
    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    #@53
    .line 120
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@56
    move-result v6

    #@57
    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    #@59
    .line 124
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    #@5b
    and-int/lit8 v6, v6, 0xf

    #@5d
    if-le v6, v7, :cond_2

    #@5f
    .line 125
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@61
    const-string/jumbo v7, "UTrie2 serialized format error."

    #@64
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw v6

    #@68
    .line 108
    .restart local v3    # "isBigEndian":Z
    :cond_1
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@6a
    goto :goto_0

    #@6b
    .line 129
    .end local v3    # "isBigEndian":Z
    :cond_2
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    #@6d
    and-int/lit8 v6, v6, 0xf

    #@6f
    if-nez v6, :cond_5

    #@71
    .line 130
    sget-object v5, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@73
    .line 131
    .local v5, "width":Landroid/icu/impl/Trie2$ValueWidth;
    new-instance v0, Landroid/icu/impl/Trie2_16;

    #@75
    invoke-direct {v0}, Landroid/icu/impl/Trie2_16;-><init>()V

    #@78
    .line 136
    .local v0, "This":Landroid/icu/impl/Trie2;
    :goto_1
    iput-object v1, v0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@7a
    .line 139
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    #@7c
    iput v6, v0, Landroid/icu/impl/Trie2;->indexLength:I

    #@7e
    .line 140
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    #@80
    shl-int/lit8 v6, v6, 0x2

    #@82
    iput v6, v0, Landroid/icu/impl/Trie2;->dataLength:I

    #@84
    .line 141
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    #@86
    iput v6, v0, Landroid/icu/impl/Trie2;->index2NullOffset:I

    #@88
    .line 142
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    #@8a
    iput v6, v0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    #@8c
    .line 143
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    #@8e
    shl-int/lit8 v6, v6, 0xb

    #@90
    iput v6, v0, Landroid/icu/impl/Trie2;->highStart:I

    #@92
    .line 144
    iget v6, v0, Landroid/icu/impl/Trie2;->dataLength:I

    #@94
    add-int/lit8 v6, v6, -0x4

    #@96
    iput v6, v0, Landroid/icu/impl/Trie2;->highValueIndex:I

    #@98
    .line 145
    sget-object v6, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@9a
    if-ne v5, v6, :cond_3

    #@9c
    .line 146
    iget v6, v0, Landroid/icu/impl/Trie2;->highValueIndex:I

    #@9e
    iget v7, v0, Landroid/icu/impl/Trie2;->indexLength:I

    #@a0
    add-int/2addr v6, v7

    #@a1
    iput v6, v0, Landroid/icu/impl/Trie2;->highValueIndex:I

    #@a3
    .line 152
    :cond_3
    iget v2, v0, Landroid/icu/impl/Trie2;->indexLength:I

    #@a5
    .line 153
    .local v2, "indexArraySize":I
    sget-object v6, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@a7
    if-ne v5, v6, :cond_4

    #@a9
    .line 154
    iget v6, v0, Landroid/icu/impl/Trie2;->dataLength:I

    #@ab
    add-int/2addr v2, v6

    #@ac
    .line 158
    :cond_4
    const/4 v6, 0x0

    #@ad
    invoke-static {p0, v2, v6}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    #@b0
    move-result-object v6

    #@b1
    iput-object v6, v0, Landroid/icu/impl/Trie2;->index:[C

    #@b3
    .line 163
    sget-object v6, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@b5
    if-ne v5, v6, :cond_6

    #@b7
    .line 164
    iget v6, v0, Landroid/icu/impl/Trie2;->indexLength:I

    #@b9
    iput v6, v0, Landroid/icu/impl/Trie2;->data16:I

    #@bb
    .line 169
    :goto_2
    invoke-static {}, Landroid/icu/impl/Trie2;->-getandroid-icu-impl-Trie2$ValueWidthSwitchesValues()[I

    #@be
    move-result-object v6

    #@bf
    invoke-virtual {v5}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    #@c2
    move-result v7

    #@c3
    aget v6, v6, v7

    #@c5
    packed-switch v6, :pswitch_data_0

    #@c8
    .line 181
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@ca
    const-string/jumbo v7, "UTrie2 serialized format error."

    #@cd
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d0
    throw v6

    #@d1
    .line 133
    .end local v0    # "This":Landroid/icu/impl/Trie2;
    .end local v2    # "indexArraySize":I
    .end local v5    # "width":Landroid/icu/impl/Trie2$ValueWidth;
    :cond_5
    sget-object v5, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    #@d3
    .line 134
    .restart local v5    # "width":Landroid/icu/impl/Trie2$ValueWidth;
    new-instance v0, Landroid/icu/impl/Trie2_32;

    #@d5
    invoke-direct {v0}, Landroid/icu/impl/Trie2_32;-><init>()V

    #@d8
    .restart local v0    # "This":Landroid/icu/impl/Trie2;
    goto :goto_1

    #@d9
    .line 166
    .restart local v2    # "indexArraySize":I
    :cond_6
    iget v6, v0, Landroid/icu/impl/Trie2;->dataLength:I

    #@db
    const/4 v7, 0x0

    #@dc
    invoke-static {p0, v6, v7}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    #@df
    move-result-object v6

    #@e0
    iput-object v6, v0, Landroid/icu/impl/Trie2;->data32:[I

    #@e2
    goto :goto_2

    #@e3
    .line 171
    :pswitch_0
    const/4 v6, 0x0

    #@e4
    iput-object v6, v0, Landroid/icu/impl/Trie2;->data32:[I

    #@e6
    .line 172
    iget-object v6, v0, Landroid/icu/impl/Trie2;->index:[C

    #@e8
    iget v7, v0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    #@ea
    aget-char v6, v6, v7

    #@ec
    iput v6, v0, Landroid/icu/impl/Trie2;->initialValue:I

    #@ee
    .line 173
    iget-object v6, v0, Landroid/icu/impl/Trie2;->index:[C

    #@f0
    iget v7, v0, Landroid/icu/impl/Trie2;->data16:I

    #@f2
    add-int/lit16 v7, v7, 0x80

    #@f4
    aget-char v6, v6, v7

    #@f6
    iput v6, v0, Landroid/icu/impl/Trie2;->errorValue:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f8
    .line 186
    :goto_3
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@fb
    .line 184
    return-object v0

    #@fc
    .line 176
    :pswitch_1
    const/4 v6, 0x0

    #@fd
    :try_start_2
    iput v6, v0, Landroid/icu/impl/Trie2;->data16:I

    #@ff
    .line 177
    iget-object v6, v0, Landroid/icu/impl/Trie2;->data32:[I

    #@101
    iget v7, v0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    #@103
    aget v6, v6, v7

    #@105
    iput v6, v0, Landroid/icu/impl/Trie2;->initialValue:I

    #@107
    .line 178
    iget-object v6, v0, Landroid/icu/impl/Trie2;->data32:[I

    #@109
    const/16 v7, 0x80

    #@10b
    aget v6, v6, v7

    #@10d
    iput v6, v0, Landroid/icu/impl/Trie2;->errorValue:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@10f
    goto :goto_3

    #@110
    .line 101
    :sswitch_data_0
    .sparse-switch
        0x32697254 -> :sswitch_0
        0x54726932 -> :sswitch_1
    .end sparse-switch

    #@11a
    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getVersion(Ljava/io/InputStream;Z)I
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "littleEndianOk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x54

    #@2
    const/4 v7, 0x3

    #@3
    const/4 v6, 0x2

    #@4
    const/4 v5, 0x1

    #@5
    const/4 v4, 0x0

    #@6
    .line 204
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 205
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v3, "Input stream must support mark()."

    #@11
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 207
    :cond_0
    const/4 v2, 0x4

    #@16
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    #@19
    .line 208
    const/4 v2, 0x4

    #@1a
    new-array v1, v2, [B

    #@1c
    .line 209
    .local v1, "sig":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    #@1f
    move-result v0

    #@20
    .line 210
    .local v0, "read":I
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@23
    .line 212
    array-length v2, v1

    #@24
    if-eq v0, v2, :cond_1

    #@26
    .line 213
    return v4

    #@27
    .line 216
    :cond_1
    aget-byte v2, v1, v4

    #@29
    if-ne v2, v8, :cond_2

    #@2b
    aget-byte v2, v1, v5

    #@2d
    const/16 v3, 0x72

    #@2f
    if-ne v2, v3, :cond_2

    #@31
    aget-byte v2, v1, v6

    #@33
    const/16 v3, 0x69

    #@35
    if-ne v2, v3, :cond_2

    #@37
    aget-byte v2, v1, v7

    #@39
    const/16 v3, 0x65

    #@3b
    if-ne v2, v3, :cond_2

    #@3d
    .line 217
    return v5

    #@3e
    .line 219
    :cond_2
    aget-byte v2, v1, v4

    #@40
    if-ne v2, v8, :cond_3

    #@42
    aget-byte v2, v1, v5

    #@44
    const/16 v3, 0x72

    #@46
    if-ne v2, v3, :cond_3

    #@48
    aget-byte v2, v1, v6

    #@4a
    const/16 v3, 0x69

    #@4c
    if-ne v2, v3, :cond_3

    #@4e
    aget-byte v2, v1, v7

    #@50
    const/16 v3, 0x32

    #@52
    if-ne v2, v3, :cond_3

    #@54
    .line 220
    return v6

    #@55
    .line 222
    :cond_3
    if-eqz p1, :cond_5

    #@57
    .line 223
    aget-byte v2, v1, v4

    #@59
    const/16 v3, 0x65

    #@5b
    if-ne v2, v3, :cond_4

    #@5d
    aget-byte v2, v1, v5

    #@5f
    const/16 v3, 0x69

    #@61
    if-ne v2, v3, :cond_4

    #@63
    aget-byte v2, v1, v6

    #@65
    const/16 v3, 0x72

    #@67
    if-ne v2, v3, :cond_4

    #@69
    aget-byte v2, v1, v7

    #@6b
    if-ne v2, v8, :cond_4

    #@6d
    .line 224
    return v5

    #@6e
    .line 226
    :cond_4
    aget-byte v2, v1, v4

    #@70
    const/16 v3, 0x32

    #@72
    if-ne v2, v3, :cond_5

    #@74
    aget-byte v2, v1, v5

    #@76
    const/16 v3, 0x69

    #@78
    if-ne v2, v3, :cond_5

    #@7a
    aget-byte v2, v1, v6

    #@7c
    const/16 v3, 0x72

    #@7e
    if-ne v2, v3, :cond_5

    #@80
    aget-byte v2, v1, v7

    #@82
    if-ne v2, v8, :cond_5

    #@84
    .line 227
    return v6

    #@85
    .line 230
    :cond_5
    return v4
.end method

.method private static hashByte(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    .line 1021
    const v0, 0x1000193

    #@3
    mul-int/2addr p0, v0

    #@4
    .line 1022
    xor-int/2addr p0, p1

    #@5
    .line 1023
    return p0
.end method

.method private static hashInt(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "i"    # I

    #@0
    .prologue
    .line 1034
    and-int/lit16 v0, p1, 0xff

    #@2
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@5
    move-result p0

    #@6
    .line 1035
    shr-int/lit8 v0, p1, 0x8

    #@8
    and-int/lit16 v0, v0, 0xff

    #@a
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@d
    move-result p0

    #@e
    .line 1036
    shr-int/lit8 v0, p1, 0x10

    #@10
    and-int/lit16 v0, v0, 0xff

    #@12
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@15
    move-result p0

    #@16
    .line 1037
    shr-int/lit8 v0, p1, 0x18

    #@18
    and-int/lit16 v0, v0, 0xff

    #@1a
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@1d
    move-result p0

    #@1e
    .line 1038
    return p0
.end method

.method private static hashUChar32(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1027
    and-int/lit16 v0, p1, 0xff

    #@2
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@5
    move-result p0

    #@6
    .line 1028
    shr-int/lit8 v0, p1, 0x8

    #@8
    and-int/lit16 v0, v0, 0xff

    #@a
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@d
    move-result p0

    #@e
    .line 1029
    shr-int/lit8 v0, p1, 0x10

    #@10
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@13
    move-result p0

    #@14
    .line 1030
    return p0
.end method

.method private static initHash()I
    .locals 1

    #@0
    .prologue
    .line 1017
    const v0, -0x7ee3623b

    #@3
    return v0
.end method


# virtual methods
.method public charSequenceIterator(Ljava/lang/CharSequence;I)Landroid/icu/impl/Trie2$CharSequenceIterator;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 510
    new-instance v0, Landroid/icu/impl/Trie2$CharSequenceIterator;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/Trie2$CharSequenceIterator;-><init>(Landroid/icu/impl/Trie2;Ljava/lang/CharSequence;I)V

    #@5
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 287
    instance-of v5, p1, Landroid/icu/impl/Trie2;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 288
    return v7

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 290
    check-cast v0, Landroid/icu/impl/Trie2;

    #@9
    .line 293
    .local v0, "OtherTrie":Landroid/icu/impl/Trie2;
    invoke-virtual {v0}, Landroid/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .line 294
    .local v1, "otherIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v4

    #@11
    .local v4, "rangeFromThis$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_3

    #@17
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroid/icu/impl/Trie2$Range;

    #@1d
    .line 295
    .local v3, "rangeFromThis":Landroid/icu/impl/Trie2$Range;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v5

    #@21
    if-nez v5, :cond_2

    #@23
    .line 296
    return v7

    #@24
    .line 298
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/icu/impl/Trie2$Range;

    #@2a
    .line 299
    .local v2, "rangeFromOther":Landroid/icu/impl/Trie2$Range;
    invoke-virtual {v3, v2}, Landroid/icu/impl/Trie2$Range;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v5

    #@2e
    if-nez v5, :cond_1

    #@30
    .line 300
    return v7

    #@31
    .line 303
    .end local v2    # "rangeFromOther":Landroid/icu/impl/Trie2$Range;
    .end local v3    # "rangeFromThis":Landroid/icu/impl/Trie2$Range;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_4

    #@37
    .line 304
    return v7

    #@38
    .line 307
    :cond_4
    iget v5, p0, Landroid/icu/impl/Trie2;->errorValue:I

    #@3a
    iget v6, v0, Landroid/icu/impl/Trie2;->errorValue:I

    #@3c
    if-ne v5, v6, :cond_5

    #@3e
    .line 308
    iget v5, p0, Landroid/icu/impl/Trie2;->initialValue:I

    #@40
    iget v6, v0, Landroid/icu/impl/Trie2;->initialValue:I

    #@42
    if-eq v5, v6, :cond_6

    #@44
    .line 309
    :cond_5
    return v7

    #@45
    .line 312
    :cond_6
    const/4 v5, 0x1

    #@46
    return v5
.end method

.method public abstract get(I)I
.end method

.method public abstract getFromU16SingleLead(C)I
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 317
    iget v3, p0, Landroid/icu/impl/Trie2;->fHash:I

    #@2
    if-nez v3, :cond_2

    #@4
    .line 318
    invoke-static {}, Landroid/icu/impl/Trie2;->initHash()I

    #@7
    move-result v0

    #@8
    .line 319
    .local v0, "hash":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .local v2, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/icu/impl/Trie2$Range;

    #@18
    .line 320
    .local v1, "r":Landroid/icu/impl/Trie2$Range;
    invoke-virtual {v1}, Landroid/icu/impl/Trie2$Range;->hashCode()I

    #@1b
    move-result v3

    #@1c
    invoke-static {v0, v3}, Landroid/icu/impl/Trie2;->hashInt(II)I

    #@1f
    move-result v0

    #@20
    goto :goto_0

    #@21
    .line 322
    .end local v1    # "r":Landroid/icu/impl/Trie2$Range;
    :cond_0
    if-nez v0, :cond_1

    #@23
    .line 323
    const/4 v0, 0x1

    #@24
    .line 325
    :cond_1
    iput v0, p0, Landroid/icu/impl/Trie2;->fHash:I

    #@26
    .line 327
    .end local v0    # "hash":I
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    iget v3, p0, Landroid/icu/impl/Trie2;->fHash:I

    #@28
    return v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 375
    sget-object v0, Landroid/icu/impl/Trie2;->defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@2
    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie2;->iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;
    .locals 1
    .param p1, "mapper"    # Landroid/icu/impl/Trie2$ValueMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/Trie2$ValueMapper;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 395
    new-instance v0, Landroid/icu/impl/Trie2$Trie2Iterator;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/icu/impl/Trie2$Trie2Iterator;-><init>(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueMapper;)V

    #@5
    return-object v0
.end method

.method public iteratorForLeadSurrogate(C)Ljava/util/Iterator;
    .locals 2
    .param p1, "lead"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 430
    new-instance v0, Landroid/icu/impl/Trie2$Trie2Iterator;

    #@2
    sget-object v1, Landroid/icu/impl/Trie2;->defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@4
    invoke-direct {v0, p0, p1, v1}, Landroid/icu/impl/Trie2$Trie2Iterator;-><init>(Landroid/icu/impl/Trie2;CLandroid/icu/impl/Trie2$ValueMapper;)V

    #@7
    return-object v0
.end method

.method public iteratorForLeadSurrogate(CLandroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;
    .locals 1
    .param p1, "lead"    # C
    .param p2, "mapper"    # Landroid/icu/impl/Trie2$ValueMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Landroid/icu/impl/Trie2$ValueMapper;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 413
    new-instance v0, Landroid/icu/impl/Trie2$Trie2Iterator;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/Trie2$Trie2Iterator;-><init>(Landroid/icu/impl/Trie2;CLandroid/icu/impl/Trie2$ValueMapper;)V

    #@5
    return-object v0
.end method

.method rangeEnd(III)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "limitp"    # I
    .param p3, "val"    # I

    #@0
    .prologue
    .line 999
    iget v2, p0, Landroid/icu/impl/Trie2;->highStart:I

    #@2
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v1

    #@6
    .line 1001
    .local v1, "limit":I
    add-int/lit8 v0, p1, 0x1

    #@8
    .local v0, "c":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 1002
    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie2;->get(I)I

    #@d
    move-result v2

    #@e
    if-eq v2, p3, :cond_2

    #@10
    .line 1006
    :cond_0
    iget v2, p0, Landroid/icu/impl/Trie2;->highStart:I

    #@12
    if-lt v0, v2, :cond_1

    #@14
    .line 1007
    move v0, p2

    #@15
    .line 1009
    :cond_1
    add-int/lit8 v2, v0, -0x1

    #@17
    return v2

    #@18
    .line 1001
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0
.end method

.method protected serializeHeader(Ljava/io/DataOutputStream;)I
    .locals 3
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 467
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@2
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    #@4
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@7
    .line 468
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@9
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    #@b
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@e
    .line 469
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@10
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    #@12
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@15
    .line 470
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@17
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    #@19
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@1c
    .line 471
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@1e
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    #@20
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@23
    .line 472
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@25
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    #@27
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@2a
    .line 473
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@2c
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    #@2e
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@31
    .line 474
    const/16 v0, 0x10

    #@33
    .line 478
    .local v0, "bytesWritten":I
    const/4 v1, 0x0

    #@34
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@36
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    #@38
    if-ge v1, v2, :cond_0

    #@3a
    .line 479
    iget-object v2, p0, Landroid/icu/impl/Trie2;->index:[C

    #@3c
    aget-char v2, v2, v1

    #@3e
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@41
    .line 478
    add-int/lit8 v1, v1, 0x1

    #@43
    goto :goto_0

    #@44
    .line 481
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@46
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    #@48
    add-int/lit8 v0, v2, 0x10

    #@4a
    .line 482
    return v0
.end method
