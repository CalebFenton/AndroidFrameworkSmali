.class public abstract Landroid/icu/impl/Trie2;
.super Ljava/lang/Object;
.source "Trie2.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Trie2$Range;,
        Landroid/icu/impl/Trie2$ValueMapper;,
        Landroid/icu/impl/Trie2$CharSequenceValues;,
        Landroid/icu/impl/Trie2$CharSequenceIterator;,
        Landroid/icu/impl/Trie2$ValueWidth;,
        Landroid/icu/impl/Trie2$UTrie2Header;,
        Landroid/icu/impl/Trie2$Trie2Iterator;,
        Landroid/icu/impl/Trie2$1;
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
.field private static synthetic -android_icu_impl_Trie2$ValueWidthSwitchesValues:[I = null

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
.method private static synthetic -getandroid_icu_impl_Trie2$ValueWidthSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/impl/Trie2;->-android_icu_impl_Trie2$ValueWidthSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/Trie2;->-android_icu_impl_Trie2$ValueWidthSwitchesValues:[I

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
    sput-object v0, Landroid/icu/impl/Trie2;->-android_icu_impl_Trie2$ValueWidthSwitchesValues:[I

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
    .line 386
    new-instance v0, Landroid/icu/impl/Trie2$1;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/Trie2$1;-><init>()V

    #@5
    sput-object v0, Landroid/icu/impl/Trie2;->defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;
    .locals 10
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@3
    move-result-object v5

    #@4
    .line 95
    .local v5, "outerByteOrder":Ljava/nio/ByteOrder;
    :try_start_0
    new-instance v1, Landroid/icu/impl/Trie2$UTrie2Header;

    #@6
    invoke-direct {v1}, Landroid/icu/impl/Trie2$UTrie2Header;-><init>()V

    #@9
    .line 98
    .local v1, "header":Landroid/icu/impl/Trie2$UTrie2Header;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@c
    move-result v7

    #@d
    iput v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    #@f
    .line 99
    iget v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    #@11
    sparse-switch v7, :sswitch_data_0

    #@14
    .line 110
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v8, "Buffer does not contain a serialized UTrie2"

    #@19
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 193
    .end local v1    # "header":Landroid/icu/impl/Trie2$UTrie2Header;
    :catchall_0
    move-exception v7

    #@1e
    .line 194
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@21
    .line 193
    throw v7

    #@22
    .line 105
    .restart local v1    # "header":Landroid/icu/impl/Trie2$UTrie2Header;
    :sswitch_0
    :try_start_1
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@24
    if-ne v5, v7, :cond_0

    #@26
    const/4 v4, 0x1

    #@27
    .line 106
    .local v4, "isBigEndian":Z
    :goto_0
    if-eqz v4, :cond_1

    #@29
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2b
    :goto_1
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@2e
    .line 107
    const v7, 0x54726932

    #@31
    iput v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    #@33
    .line 113
    .end local v4    # "isBigEndian":Z
    :sswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@36
    move-result v7

    #@37
    iput v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    #@39
    .line 114
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@3c
    move-result v7

    #@3d
    iput v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    #@3f
    .line 115
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@42
    move-result v7

    #@43
    iput v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    #@45
    .line 116
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@48
    move-result v7

    #@49
    iput v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    #@4b
    .line 117
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@4e
    move-result v7

    #@4f
    iput v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    #@51
    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@54
    move-result v7

    #@55
    iput v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    #@57
    .line 122
    iget v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    #@59
    and-int/lit8 v7, v7, 0xf

    #@5b
    const/4 v8, 0x1

    #@5c
    if-le v7, v8, :cond_2

    #@5e
    .line 123
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@60
    const-string/jumbo v8, "UTrie2 serialized format error."

    #@63
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@66
    throw v7

    #@67
    .line 105
    :cond_0
    const/4 v4, 0x0

    #@68
    .restart local v4    # "isBigEndian":Z
    goto :goto_0

    #@69
    .line 106
    :cond_1
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@6b
    goto :goto_1

    #@6c
    .line 127
    .end local v4    # "isBigEndian":Z
    :cond_2
    iget v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    #@6e
    and-int/lit8 v7, v7, 0xf

    #@70
    if-nez v7, :cond_5

    #@72
    .line 128
    sget-object v6, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@74
    .line 129
    .local v6, "width":Landroid/icu/impl/Trie2$ValueWidth;
    new-instance v0, Landroid/icu/impl/Trie2_16;

    #@76
    invoke-direct {v0}, Landroid/icu/impl/Trie2_16;-><init>()V

    #@79
    .line 134
    .local v0, "This":Landroid/icu/impl/Trie2;
    :goto_2
    iput-object v1, v0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@7b
    .line 137
    iget v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    #@7d
    iput v7, v0, Landroid/icu/impl/Trie2;->indexLength:I

    #@7f
    .line 138
    iget v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    #@81
    shl-int/lit8 v7, v7, 0x2

    #@83
    iput v7, v0, Landroid/icu/impl/Trie2;->dataLength:I

    #@85
    .line 139
    iget v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    #@87
    iput v7, v0, Landroid/icu/impl/Trie2;->index2NullOffset:I

    #@89
    .line 140
    iget v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    #@8b
    iput v7, v0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    #@8d
    .line 141
    iget v7, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    #@8f
    shl-int/lit8 v7, v7, 0xb

    #@91
    iput v7, v0, Landroid/icu/impl/Trie2;->highStart:I

    #@93
    .line 142
    iget v7, v0, Landroid/icu/impl/Trie2;->dataLength:I

    #@95
    add-int/lit8 v7, v7, -0x4

    #@97
    iput v7, v0, Landroid/icu/impl/Trie2;->highValueIndex:I

    #@99
    .line 143
    sget-object v7, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@9b
    if-ne v6, v7, :cond_3

    #@9d
    .line 144
    iget v7, v0, Landroid/icu/impl/Trie2;->highValueIndex:I

    #@9f
    iget v8, v0, Landroid/icu/impl/Trie2;->indexLength:I

    #@a1
    add-int/2addr v7, v8

    #@a2
    iput v7, v0, Landroid/icu/impl/Trie2;->highValueIndex:I

    #@a4
    .line 150
    :cond_3
    iget v3, v0, Landroid/icu/impl/Trie2;->indexLength:I

    #@a6
    .line 151
    .local v3, "indexArraySize":I
    sget-object v7, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@a8
    if-ne v6, v7, :cond_4

    #@aa
    .line 152
    iget v7, v0, Landroid/icu/impl/Trie2;->dataLength:I

    #@ac
    add-int/2addr v3, v7

    #@ad
    .line 154
    :cond_4
    new-array v7, v3, [C

    #@af
    iput-object v7, v0, Landroid/icu/impl/Trie2;->index:[C

    #@b1
    .line 158
    const/4 v2, 0x0

    #@b2
    .local v2, "i":I
    :goto_3
    iget v7, v0, Landroid/icu/impl/Trie2;->indexLength:I

    #@b4
    if-ge v2, v7, :cond_6

    #@b6
    .line 159
    iget-object v7, v0, Landroid/icu/impl/Trie2;->index:[C

    #@b8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@bb
    move-result v8

    #@bc
    aput-char v8, v7, v2

    #@be
    .line 158
    add-int/lit8 v2, v2, 0x1

    #@c0
    goto :goto_3

    #@c1
    .line 131
    .end local v0    # "This":Landroid/icu/impl/Trie2;
    .end local v2    # "i":I
    .end local v3    # "indexArraySize":I
    .end local v6    # "width":Landroid/icu/impl/Trie2$ValueWidth;
    :cond_5
    sget-object v6, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    #@c3
    .line 132
    .restart local v6    # "width":Landroid/icu/impl/Trie2$ValueWidth;
    new-instance v0, Landroid/icu/impl/Trie2_32;

    #@c5
    invoke-direct {v0}, Landroid/icu/impl/Trie2_32;-><init>()V

    #@c8
    .restart local v0    # "This":Landroid/icu/impl/Trie2;
    goto :goto_2

    #@c9
    .line 165
    .restart local v2    # "i":I
    .restart local v3    # "indexArraySize":I
    :cond_6
    sget-object v7, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    #@cb
    if-ne v6, v7, :cond_7

    #@cd
    .line 166
    iget v7, v0, Landroid/icu/impl/Trie2;->indexLength:I

    #@cf
    iput v7, v0, Landroid/icu/impl/Trie2;->data16:I

    #@d1
    .line 167
    const/4 v2, 0x0

    #@d2
    :goto_4
    iget v7, v0, Landroid/icu/impl/Trie2;->dataLength:I

    #@d4
    if-ge v2, v7, :cond_8

    #@d6
    .line 168
    iget-object v7, v0, Landroid/icu/impl/Trie2;->index:[C

    #@d8
    iget v8, v0, Landroid/icu/impl/Trie2;->data16:I

    #@da
    add-int/2addr v8, v2

    #@db
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@de
    move-result v9

    #@df
    aput-char v9, v7, v8

    #@e1
    .line 167
    add-int/lit8 v2, v2, 0x1

    #@e3
    goto :goto_4

    #@e4
    .line 171
    :cond_7
    iget v7, v0, Landroid/icu/impl/Trie2;->dataLength:I

    #@e6
    new-array v7, v7, [I

    #@e8
    iput-object v7, v0, Landroid/icu/impl/Trie2;->data32:[I

    #@ea
    .line 172
    const/4 v2, 0x0

    #@eb
    :goto_5
    iget v7, v0, Landroid/icu/impl/Trie2;->dataLength:I

    #@ed
    if-ge v2, v7, :cond_8

    #@ef
    .line 173
    iget-object v7, v0, Landroid/icu/impl/Trie2;->data32:[I

    #@f1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@f4
    move-result v8

    #@f5
    aput v8, v7, v2

    #@f7
    .line 172
    add-int/lit8 v2, v2, 0x1

    #@f9
    goto :goto_5

    #@fa
    .line 177
    :cond_8
    invoke-static {}, Landroid/icu/impl/Trie2;->-getandroid_icu_impl_Trie2$ValueWidthSwitchesValues()[I

    #@fd
    move-result-object v7

    #@fe
    invoke-virtual {v6}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    #@101
    move-result v8

    #@102
    aget v7, v7, v8

    #@104
    packed-switch v7, :pswitch_data_0

    #@107
    .line 189
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@109
    const-string/jumbo v8, "UTrie2 serialized format error."

    #@10c
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10f
    throw v7

    #@110
    .line 179
    :pswitch_0
    const/4 v7, 0x0

    #@111
    iput-object v7, v0, Landroid/icu/impl/Trie2;->data32:[I

    #@113
    .line 180
    iget-object v7, v0, Landroid/icu/impl/Trie2;->index:[C

    #@115
    iget v8, v0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    #@117
    aget-char v7, v7, v8

    #@119
    iput v7, v0, Landroid/icu/impl/Trie2;->initialValue:I

    #@11b
    .line 181
    iget-object v7, v0, Landroid/icu/impl/Trie2;->index:[C

    #@11d
    iget v8, v0, Landroid/icu/impl/Trie2;->data16:I

    #@11f
    add-int/lit16 v8, v8, 0x80

    #@121
    aget-char v7, v7, v8

    #@123
    iput v7, v0, Landroid/icu/impl/Trie2;->errorValue:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@125
    .line 194
    :goto_6
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@128
    .line 192
    return-object v0

    #@129
    .line 184
    :pswitch_1
    const/4 v7, 0x0

    #@12a
    :try_start_2
    iput v7, v0, Landroid/icu/impl/Trie2;->data16:I

    #@12c
    .line 185
    iget-object v7, v0, Landroid/icu/impl/Trie2;->data32:[I

    #@12e
    iget v8, v0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    #@130
    aget v7, v7, v8

    #@132
    iput v7, v0, Landroid/icu/impl/Trie2;->initialValue:I

    #@134
    .line 186
    iget-object v7, v0, Landroid/icu/impl/Trie2;->data32:[I

    #@136
    const/16 v8, 0x80

    #@138
    aget v7, v7, v8

    #@13a
    iput v7, v0, Landroid/icu/impl/Trie2;->errorValue:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@13c
    goto :goto_6

    #@13d
    .line 99
    nop

    #@13e
    :sswitch_data_0
    .sparse-switch
        0x32697254 -> :sswitch_0
        0x54726932 -> :sswitch_1
    .end sparse-switch

    #@148
    .line 177
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
    .line 212
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 213
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v3, "Input stream must support mark()."

    #@11
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 215
    :cond_0
    const/4 v2, 0x4

    #@16
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    #@19
    .line 216
    const/4 v2, 0x4

    #@1a
    new-array v1, v2, [B

    #@1c
    .line 217
    .local v1, "sig":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    #@1f
    move-result v0

    #@20
    .line 218
    .local v0, "read":I
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@23
    .line 220
    array-length v2, v1

    #@24
    if-eq v0, v2, :cond_1

    #@26
    .line 221
    return v4

    #@27
    .line 224
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
    .line 225
    return v5

    #@3e
    .line 227
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
    .line 228
    return v6

    #@55
    .line 230
    :cond_3
    if-eqz p1, :cond_5

    #@57
    .line 231
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
    .line 232
    return v5

    #@6e
    .line 234
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
    .line 235
    return v6

    #@85
    .line 238
    :cond_5
    return v4
.end method

.method private static hashByte(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    .line 1029
    const v0, 0x1000193

    #@3
    mul-int/2addr p0, v0

    #@4
    .line 1030
    xor-int/2addr p0, p1

    #@5
    .line 1031
    return p0
.end method

.method private static hashInt(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "i"    # I

    #@0
    .prologue
    .line 1042
    and-int/lit16 v0, p1, 0xff

    #@2
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@5
    move-result p0

    #@6
    .line 1043
    shr-int/lit8 v0, p1, 0x8

    #@8
    and-int/lit16 v0, v0, 0xff

    #@a
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@d
    move-result p0

    #@e
    .line 1044
    shr-int/lit8 v0, p1, 0x10

    #@10
    and-int/lit16 v0, v0, 0xff

    #@12
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@15
    move-result p0

    #@16
    .line 1045
    shr-int/lit8 v0, p1, 0x18

    #@18
    and-int/lit16 v0, v0, 0xff

    #@1a
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@1d
    move-result p0

    #@1e
    .line 1046
    return p0
.end method

.method private static hashUChar32(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1035
    and-int/lit16 v0, p1, 0xff

    #@2
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@5
    move-result p0

    #@6
    .line 1036
    shr-int/lit8 v0, p1, 0x8

    #@8
    and-int/lit16 v0, v0, 0xff

    #@a
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@d
    move-result p0

    #@e
    .line 1037
    shr-int/lit8 v0, p1, 0x10

    #@10
    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    #@13
    move-result p0

    #@14
    .line 1038
    return p0
.end method

.method private static initHash()I
    .locals 1

    #@0
    .prologue
    .line 1025
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
    .line 518
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
    .line 295
    instance-of v5, p1, Landroid/icu/impl/Trie2;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 296
    return v7

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 298
    check-cast v0, Landroid/icu/impl/Trie2;

    #@9
    .line 301
    .local v0, "OtherTrie":Landroid/icu/impl/Trie2;
    invoke-virtual {v0}, Landroid/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .line 302
    .local v1, "otherIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
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
    .line 303
    .local v3, "rangeFromThis":Landroid/icu/impl/Trie2$Range;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v5

    #@21
    if-nez v5, :cond_2

    #@23
    .line 304
    return v7

    #@24
    .line 306
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/icu/impl/Trie2$Range;

    #@2a
    .line 307
    .local v2, "rangeFromOther":Landroid/icu/impl/Trie2$Range;
    invoke-virtual {v3, v2}, Landroid/icu/impl/Trie2$Range;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v5

    #@2e
    if-nez v5, :cond_1

    #@30
    .line 308
    return v7

    #@31
    .line 311
    .end local v2    # "rangeFromOther":Landroid/icu/impl/Trie2$Range;
    .end local v3    # "rangeFromThis":Landroid/icu/impl/Trie2$Range;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_4

    #@37
    .line 312
    return v7

    #@38
    .line 315
    :cond_4
    iget v5, p0, Landroid/icu/impl/Trie2;->errorValue:I

    #@3a
    iget v6, v0, Landroid/icu/impl/Trie2;->errorValue:I

    #@3c
    if-ne v5, v6, :cond_5

    #@3e
    .line 316
    iget v5, p0, Landroid/icu/impl/Trie2;->initialValue:I

    #@40
    iget v6, v0, Landroid/icu/impl/Trie2;->initialValue:I

    #@42
    if-eq v5, v6, :cond_6

    #@44
    .line 317
    :cond_5
    return v7

    #@45
    .line 320
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
    .line 325
    iget v3, p0, Landroid/icu/impl/Trie2;->fHash:I

    #@2
    if-nez v3, :cond_2

    #@4
    .line 326
    invoke-static {}, Landroid/icu/impl/Trie2;->initHash()I

    #@7
    move-result v0

    #@8
    .line 327
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
    .line 328
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
    .line 330
    .end local v1    # "r":Landroid/icu/impl/Trie2$Range;
    :cond_0
    if-nez v0, :cond_1

    #@23
    .line 331
    const/4 v0, 0x1

    #@24
    .line 333
    :cond_1
    iput v0, p0, Landroid/icu/impl/Trie2;->fHash:I

    #@26
    .line 335
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
    .line 383
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
    .line 403
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
    .line 438
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
    .line 421
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
    .line 1007
    iget v2, p0, Landroid/icu/impl/Trie2;->highStart:I

    #@2
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v1

    #@6
    .line 1009
    .local v1, "limit":I
    add-int/lit8 v0, p1, 0x1

    #@8
    .local v0, "c":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 1010
    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie2;->get(I)I

    #@d
    move-result v2

    #@e
    if-eq v2, p3, :cond_2

    #@10
    .line 1014
    :cond_0
    iget v2, p0, Landroid/icu/impl/Trie2;->highStart:I

    #@12
    if-lt v0, v2, :cond_1

    #@14
    .line 1015
    move v0, p2

    #@15
    .line 1017
    :cond_1
    add-int/lit8 v2, v0, -0x1

    #@17
    return v2

    #@18
    .line 1009
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
    .line 475
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@2
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    #@4
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@7
    .line 476
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@9
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    #@b
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@e
    .line 477
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@10
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    #@12
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@15
    .line 478
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@17
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    #@19
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@1c
    .line 479
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@1e
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    #@20
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@23
    .line 480
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@25
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    #@27
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@2a
    .line 481
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@2c
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    #@2e
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@31
    .line 482
    const/16 v0, 0x10

    #@33
    .line 486
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
    .line 487
    iget-object v2, p0, Landroid/icu/impl/Trie2;->index:[C

    #@3c
    aget-char v2, v2, v1

    #@3e
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@41
    .line 486
    add-int/lit8 v1, v1, 0x1

    #@43
    goto :goto_0

    #@44
    .line 489
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    #@46
    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    #@48
    add-int/lit8 v0, v2, 0x10

    #@4a
    .line 490
    return v0
.end method
