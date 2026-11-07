.class public final Landroid/icu/impl/UPropertyAliases;
.super Ljava/lang/Object;
.source "UPropertyAliases.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UPropertyAliases$IsAcceptable;
    }
.end annotation


# static fields
.field private static final blacklist DATA_FORMAT:I = 0x706e616d

.field public static final blacklist INSTANCE:Landroid/icu/impl/UPropertyAliases;

.field private static final blacklist IS_ACCEPTABLE:Landroid/icu/impl/UPropertyAliases$IsAcceptable;

.field private static final blacklist IX_BYTE_TRIES_OFFSET:I = 0x1

.field private static final blacklist IX_NAME_GROUPS_OFFSET:I = 0x2

.field private static final blacklist IX_RESERVED3_OFFSET:I = 0x3

.field private static final blacklist IX_VALUE_MAPS_OFFSET:I


# instance fields
.field private blacklist bytesTries:[B

.field private blacklist nameGroups:Ljava/lang/String;

.field private blacklist valueMaps:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 77
    new-instance v0, Landroid/icu/impl/UPropertyAliases$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/UPropertyAliases$IsAcceptable;-><init>(Landroid/icu/impl/UPropertyAliases-IA;)V

    sput-object v0, Landroid/icu/impl/UPropertyAliases;->IS_ACCEPTABLE:Landroid/icu/impl/UPropertyAliases$IsAcceptable;

    .line 226
    :try_start_8
    new-instance v0, Landroid/icu/impl/UPropertyAliases;

    invoke-direct {v0}, Landroid/icu/impl/UPropertyAliases;-><init>()V

    sput-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_11

    .line 234
    nop

    .line 235
    return-void

    .line 227
    :catch_11
    move-exception v0

    .line 229
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/util/MissingResourceException;

    const-string v2, "Could not construct UPropertyAliases. Missing pnames.icu"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .local v1, "mre":Ljava/util/MissingResourceException;
    invoke-virtual {v1, v0}, Ljava/util/MissingResourceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 232
    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-string v0, "pnames.icu"

    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 119
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Landroid/icu/impl/UPropertyAliases;->load(Ljava/nio/ByteBuffer;)V

    .line 120
    return-void
.end method

.method private static blacklist asciiToLowercase(I)I
    .registers 2
    .param p0, "c"    # I

    .line 199
    const/16 v0, 0x41

    if-gt v0, p0, :cond_b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, 0x20

    goto :goto_c

    :cond_b
    move v0, p0

    :goto_c
    return v0
.end method

.method public static blacklist compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p0, "stra"    # Ljava/lang/String;
    .param p1, "strb"    # Ljava/lang/String;

    .line 335
    const/4 v0, 0x0

    .local v0, "istra":I
    const/4 v1, 0x0

    .line 336
    .local v1, "istrb":I
    const/4 v2, 0x0

    .local v2, "cstra":I
    const/4 v3, 0x0

    .line 339
    .local v3, "cstrb":I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_15

    .line 340
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 341
    sparse-switch v2, :sswitch_data_56

    .line 347
    goto :goto_15

    .line 344
    :sswitch_12
    add-int/lit8 v0, v0, 0x1

    .line 345
    goto :goto_4

    .line 350
    :cond_15
    :goto_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_26

    .line 351
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 352
    sparse-switch v3, :sswitch_data_78

    .line 358
    goto :goto_26

    .line 355
    :sswitch_23
    add-int/lit8 v1, v1, 0x1

    .line 356
    goto :goto_15

    .line 362
    :cond_26
    :goto_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v4, :cond_30

    move v4, v6

    goto :goto_31

    :cond_30
    move v4, v5

    .line 363
    .local v4, "endstra":Z
    :goto_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_38

    goto :goto_39

    :cond_38
    move v6, v5

    .line 364
    .local v6, "endstrb":Z
    :goto_39
    if-eqz v4, :cond_40

    .line 365
    if-eqz v6, :cond_3e

    return v5

    .line 366
    :cond_3e
    const/4 v2, 0x0

    goto :goto_43

    .line 367
    :cond_40
    if-eqz v6, :cond_43

    .line 368
    const/4 v3, 0x0

    .line 371
    :cond_43
    :goto_43
    invoke-static {v2}, Landroid/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    move-result v5

    invoke-static {v3}, Landroid/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    move-result v7

    sub-int/2addr v5, v7

    .line 372
    .local v5, "rc":I
    if-eqz v5, :cond_4f

    .line 373
    return v5

    .line 376
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    .line 377
    nop

    .end local v4    # "endstra":Z
    .end local v6    # "endstrb":Z
    add-int/lit8 v1, v1, 0x1

    .line 378
    goto :goto_4

    nop

    :sswitch_data_56
    .sparse-switch
        0x9 -> :sswitch_12
        0xa -> :sswitch_12
        0xb -> :sswitch_12
        0xc -> :sswitch_12
        0xd -> :sswitch_12
        0x20 -> :sswitch_12
        0x2d -> :sswitch_12
        0x5f -> :sswitch_12
    .end sparse-switch

    :sswitch_data_78
    .sparse-switch
        0x9 -> :sswitch_23
        0xa -> :sswitch_23
        0xb -> :sswitch_23
        0xc -> :sswitch_23
        0xd -> :sswitch_23
        0x20 -> :sswitch_23
        0x2d -> :sswitch_23
        0x5f -> :sswitch_23
    .end sparse-switch
.end method

.method private blacklist containsName(Landroid/icu/util/BytesTrie;Ljava/lang/CharSequence;)Z
    .registers 7
    .param p1, "trie"    # Landroid/icu/util/BytesTrie;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .line 203
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 204
    .local v0, "result":Landroid/icu/util/BytesTrie$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 205
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 207
    .local v2, "c":I
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_32

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_32

    const/16 v3, 0x20

    if-eq v2, v3, :cond_32

    const/16 v3, 0x9

    if-gt v3, v2, :cond_22

    const/16 v3, 0xd

    if-gt v2, v3, :cond_22

    .line 208
    goto :goto_32

    .line 210
    :cond_22
    invoke-virtual {v0}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 211
    const/4 v3, 0x0

    return v3

    .line 213
    :cond_2a
    invoke-static {v2}, Landroid/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    move-result v2

    .line 214
    invoke-virtual {p1, v2}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    .line 204
    .end local v2    # "c":I
    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 216
    .end local v1    # "i":I
    :cond_35
    invoke-virtual {v0}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v1

    return v1
.end method

.method private blacklist findProperty(I)I
    .registers 8
    .param p1, "property"    # I

    .line 123
    const/4 v0, 0x1

    .line 124
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .local v1, "numRanges":I
    :goto_6
    if-lez v1, :cond_27

    .line 126
    iget-object v3, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v3, v3, v0

    .line 127
    .local v3, "start":I
    iget-object v4, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    .line 128
    .local v4, "limit":I
    add-int/lit8 v0, v0, 0x2

    .line 129
    if-ge p1, v3, :cond_17

    .line 130
    goto :goto_27

    .line 132
    :cond_17
    if-ge p1, v4, :cond_1f

    .line 133
    sub-int v2, p1, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    return v2

    .line 135
    :cond_1f
    sub-int v5, v4, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 124
    .end local v3    # "start":I
    .end local v4    # "limit":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 137
    .end local v1    # "numRanges":I
    :cond_27
    :goto_27
    return v2
.end method

.method private blacklist findPropertyValueNameGroup(II)I
    .registers 9
    .param p1, "valueMapIndex"    # I
    .param p2, "value"    # I

    .line 141
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 142
    return v0

    .line 144
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 145
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "valueMapIndex":I
    .local v2, "valueMapIndex":I
    aget p1, v1, p1

    .line 146
    .local p1, "numRanges":I
    const/16 v1, 0x10

    if-ge p1, v1, :cond_31

    .line 148
    :goto_10
    if-lez p1, :cond_4a

    .line 150
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v1, v1, v2

    .line 151
    .local v1, "start":I
    iget-object v3, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    .line 152
    .local v3, "limit":I
    add-int/lit8 v2, v2, 0x2

    .line 153
    if-ge p2, v1, :cond_21

    .line 154
    goto :goto_4a

    .line 156
    :cond_21
    if-ge p2, v3, :cond_2b

    .line 157
    iget-object v0, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int v4, v2, p2

    sub-int/2addr v4, v1

    aget v0, v0, v4

    return v0

    .line 159
    :cond_2b
    sub-int v4, v3, v1

    add-int/2addr v2, v4

    .line 148
    .end local v1    # "start":I
    .end local v3    # "limit":I
    add-int/lit8 p1, p1, -0x1

    goto :goto_10

    .line 163
    :cond_31
    move v3, v2

    .line 164
    .local v3, "valuesStart":I
    add-int v4, v2, p1

    sub-int/2addr v4, v1

    .line 166
    .local v4, "nameGroupOffsetsStart":I
    :cond_35
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v1, v1, v2

    .line 167
    .local v1, "v":I
    if-ge p2, v1, :cond_3c

    .line 168
    goto :goto_4a

    .line 170
    :cond_3c
    if-ne p2, v1, :cond_46

    .line 171
    iget-object v0, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int v5, v4, v2

    sub-int/2addr v5, v3

    aget v0, v0, v5

    return v0

    .line 173
    .end local v1    # "v":I
    :cond_46
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_35

    .line 175
    .end local v3    # "valuesStart":I
    .end local v4    # "nameGroupOffsetsStart":I
    :cond_4a
    :goto_4a
    return v0
.end method

.method private blacklist getName(II)Ljava/lang/String;
    .registers 6
    .param p1, "nameGroupsIndex"    # I
    .param p2, "nameIndex"    # I

    .line 179
    iget-object v0, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "nameGroupsIndex":I
    .local v1, "nameGroupsIndex":I
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 180
    .local p1, "numNames":I
    if-ltz p2, :cond_35

    if-le p1, p2, :cond_35

    .line 184
    :goto_c
    if-lez p2, :cond_1e

    .line 185
    :goto_e
    iget-object v0, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "nameGroupsIndex":I
    .local v2, "nameGroupsIndex":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_1a

    move v1, v2

    goto :goto_e

    .line 184
    :cond_1a
    add-int/lit8 p2, p2, -0x1

    move v1, v2

    goto :goto_c

    .line 188
    .end local v2    # "nameGroupsIndex":I
    .restart local v1    # "nameGroupsIndex":I
    :cond_1e
    move v0, v1

    .line 189
    .local v0, "nameStart":I
    :goto_1f
    iget-object v2, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_2a

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 192
    :cond_2a
    if-ne v0, v1, :cond_2e

    .line 193
    const/4 v2, 0x0

    return-object v2

    .line 195
    :cond_2e
    iget-object v2, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 181
    .end local v0    # "nameStart":I
    :cond_35
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string v2, "Invalid property (value) name choice"

    invoke-direct {v0, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getPropertyOrValueEnum(ILjava/lang/CharSequence;)I
    .registers 5
    .param p1, "bytesTrieOffset"    # I
    .param p2, "alias"    # Ljava/lang/CharSequence;

    .line 272
    new-instance v0, Landroid/icu/util/BytesTrie;

    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->bytesTries:[B

    invoke-direct {v0, v1, p1}, Landroid/icu/util/BytesTrie;-><init>([BI)V

    .line 273
    .local v0, "trie":Landroid/icu/util/BytesTrie;
    invoke-direct {p0, v0, p2}, Landroid/icu/impl/UPropertyAliases;->containsName(Landroid/icu/util/BytesTrie;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 274
    invoke-virtual {v0}, Landroid/icu/util/BytesTrie;->getValue()I

    move-result v1

    return v1

    .line 276
    :cond_12
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist load(Ljava/nio/ByteBuffer;)V
    .registers 11
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    const v0, 0x706e616d

    sget-object v1, Landroid/icu/impl/UPropertyAliases;->IS_ACCEPTABLE:Landroid/icu/impl/UPropertyAliases$IsAcceptable;

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 84
    .local v0, "indexesLength":I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_63

    .line 87
    new-array v1, v0, [I

    .line 88
    .local v1, "inIndexes":[I
    mul-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 89
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1a
    if-ge v2, v0, :cond_25

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 94
    .end local v2    # "i":I
    :cond_25
    aget v2, v1, v3

    .line 95
    .local v2, "offset":I
    const/4 v4, 0x1

    aget v4, v1, v4

    .line 96
    .local v4, "nextOffset":I
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x4

    .line 97
    .local v5, "numInts":I
    invoke-static {p1, v5, v3}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    .line 100
    move v2, v4

    .line 101
    const/4 v3, 0x2

    aget v3, v1, v3

    .line 102
    .end local v4    # "nextOffset":I
    .local v3, "nextOffset":I
    sub-int v4, v3, v2

    .line 103
    .local v4, "numBytes":I
    new-array v6, v4, [B

    iput-object v6, p0, Landroid/icu/impl/UPropertyAliases;->bytesTries:[B

    .line 104
    iget-object v6, p0, Landroid/icu/impl/UPropertyAliases;->bytesTries:[B

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 107
    move v2, v3

    .line 108
    const/4 v6, 0x3

    aget v3, v1, v6

    .line 109
    sub-int v4, v3, v2

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 111
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4f
    if-ge v7, v4, :cond_5c

    .line 112
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    .line 114
    .end local v7    # "i":I
    :cond_5c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    .line 115
    return-void

    .line 85
    .end local v1    # "inIndexes":[I
    .end local v2    # "offset":I
    .end local v3    # "nextOffset":I
    .end local v4    # "numBytes":I
    .end local v5    # "numInts":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_63
    new-instance v1, Ljava/io/IOException;

    const-string v2, "pnames.icu: not enough indexes"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getPropertyEnum(Ljava/lang/CharSequence;)I
    .registers 3
    .param p1, "alias"    # Ljava/lang/CharSequence;

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyOrValueEnum(ILjava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public blacklist getPropertyName(II)Ljava/lang/String;
    .registers 7
    .param p1, "property"    # I
    .param p2, "nameChoice"    # I

    .line 243
    invoke-direct {p0, p1}, Landroid/icu/impl/UPropertyAliases;->findProperty(I)I

    move-result v0

    .line 244
    .local v0, "valueMapIndex":I
    if-eqz v0, :cond_f

    .line 248
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v1, v1, v0

    invoke-direct {p0, v1, p2}, Landroid/icu/impl/UPropertyAliases;->getName(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 245
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid property enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getPropertyValueEnum(ILjava/lang/CharSequence;)I
    .registers 8
    .param p1, "property"    # I
    .param p2, "alias"    # Ljava/lang/CharSequence;

    .line 293
    invoke-direct {p0, p1}, Landroid/icu/impl/UPropertyAliases;->findProperty(I)I

    move-result v0

    .line 294
    .local v0, "valueMapIndex":I
    const-string v1, " (0x"

    if-eqz v0, :cond_44

    .line 298
    iget-object v2, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v3

    .line 299
    if-eqz v0, :cond_19

    .line 306
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v1, v1, v0

    invoke-direct {p0, v1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyOrValueEnum(ILjava/lang/CharSequence;)I

    move-result v1

    return v1

    .line 300
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") does not have named values"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    :cond_44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid property enum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getPropertyValueEnumNoThrow(ILjava/lang/CharSequence;)I
    .registers 7
    .param p1, "property"    # I
    .param p2, "alias"    # Ljava/lang/CharSequence;

    .line 314
    invoke-direct {p0, p1}, Landroid/icu/impl/UPropertyAliases;->findProperty(I)I

    move-result v0

    .line 315
    .local v0, "valueMapIndex":I
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 316
    return v1

    .line 318
    :cond_8
    iget-object v2, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v3

    .line 319
    if-nez v0, :cond_11

    .line 320
    return v1

    .line 324
    :cond_11
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    aget v1, v1, v0

    invoke-direct {p0, v1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyOrValueEnum(ILjava/lang/CharSequence;)I

    move-result v1

    return v1
.end method

.method public blacklist getPropertyValueName(III)Ljava/lang/String;
    .registers 10
    .param p1, "property"    # I
    .param p2, "value"    # I
    .param p3, "nameChoice"    # I

    .line 257
    invoke-direct {p0, p1}, Landroid/icu/impl/UPropertyAliases;->findProperty(I)I

    move-result v0

    .line 258
    .local v0, "valueMapIndex":I
    const-string v1, " (0x"

    if-eqz v0, :cond_44

    .line 262
    iget-object v2, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    invoke-direct {p0, v2, p2}, Landroid/icu/impl/UPropertyAliases;->findPropertyValueNameGroup(II)I

    move-result v2

    .line 263
    .local v2, "nameGroupOffset":I
    if-eqz v2, :cond_19

    .line 268
    invoke-direct {p0, v2, p3}, Landroid/icu/impl/UPropertyAliases;->getName(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 264
    :cond_19
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") does not have named values"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    .end local v2    # "nameGroupOffset":I
    :cond_44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid property enum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
