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
.field private static final DATA_FORMAT:I = 0x706e616d

.field public static final INSTANCE:Landroid/icu/impl/UPropertyAliases;

.field private static final IS_ACCEPTABLE:Landroid/icu/impl/UPropertyAliases$IsAcceptable;

.field private static final IX_BYTE_TRIES_OFFSET:I = 0x1

.field private static final IX_NAME_GROUPS_OFFSET:I = 0x2

.field private static final IX_RESERVED3_OFFSET:I = 0x3

.field private static final IX_VALUE_MAPS_OFFSET:I


# instance fields
.field private bytesTries:[B

.field private nameGroups:Ljava/lang/String;

.field private valueMaps:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 75
    new-instance v2, Landroid/icu/impl/UPropertyAliases$IsAcceptable;

    #@2
    const/4 v3, 0x0

    #@3
    invoke-direct {v2, v3}, Landroid/icu/impl/UPropertyAliases$IsAcceptable;-><init>(Landroid/icu/impl/UPropertyAliases$IsAcceptable;)V

    #@6
    sput-object v2, Landroid/icu/impl/UPropertyAliases;->IS_ACCEPTABLE:Landroid/icu/impl/UPropertyAliases$IsAcceptable;

    #@8
    .line 224
    :try_start_0
    new-instance v2, Landroid/icu/impl/UPropertyAliases;

    #@a
    invoke-direct {v2}, Landroid/icu/impl/UPropertyAliases;-><init>()V

    #@d
    sput-object v2, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 47
    return-void

    #@10
    .line 225
    :catch_0
    move-exception v0

    #@11
    .line 227
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/util/MissingResourceException;

    #@13
    .line 228
    const-string/jumbo v2, "Could not construct UPropertyAliases. Missing pnames.icu"

    #@16
    const-string/jumbo v3, ""

    #@19
    const-string/jumbo v4, ""

    #@1c
    .line 227
    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 229
    .local v1, "mre":Ljava/util/MissingResourceException;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@22
    .line 230
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
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 116
    const-string/jumbo v1, "pnames.icu"

    #@6
    invoke-static {v1}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@9
    move-result-object v0

    #@a
    .line 117
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Landroid/icu/impl/UPropertyAliases;->load(Ljava/nio/ByteBuffer;)V

    #@d
    .line 115
    return-void
.end method

.method private static asciiToLowercase(I)I
    .locals 1
    .param p0, "c"    # I

    #@0
    .prologue
    .line 197
    const/16 v0, 0x41

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x5a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    add-int/lit8 p0, p0, 0x20

    #@a
    .end local p0    # "c":I
    :cond_0
    return p0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "stra"    # Ljava/lang/String;
    .param p1, "strb"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 333
    const/4 v4, 0x0

    #@2
    .local v4, "istra":I
    const/4 v5, 0x0

    #@3
    .line 334
    .local v5, "istrb":I
    const/4 v0, 0x0

    #@4
    .local v0, "cstra":I
    const/4 v1, 0x0

    #@5
    .line 337
    .local v1, "cstrb":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v7

    #@9
    if-ge v4, v7, :cond_0

    #@b
    .line 338
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v0

    #@f
    .line 339
    sparse-switch v0, :sswitch_data_0

    #@12
    .line 348
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@15
    move-result v7

    #@16
    if-ge v5, v7, :cond_1

    #@18
    .line 349
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v1

    #@1c
    .line 350
    sparse-switch v1, :sswitch_data_1

    #@1f
    .line 360
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@22
    move-result v7

    #@23
    if-ne v4, v7, :cond_2

    #@25
    const/4 v2, 0x1

    #@26
    .line 361
    .local v2, "endstra":Z
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@29
    move-result v7

    #@2a
    if-ne v5, v7, :cond_3

    #@2c
    const/4 v3, 0x1

    #@2d
    .line 362
    .local v3, "endstrb":Z
    :goto_3
    if-eqz v2, :cond_6

    #@2f
    .line 363
    if-eqz v3, :cond_4

    #@31
    return v9

    #@32
    .line 342
    .end local v2    # "endstra":Z
    .end local v3    # "endstrb":Z
    :sswitch_0
    add-int/lit8 v4, v4, 0x1

    #@34
    .line 343
    goto :goto_0

    #@35
    .line 353
    :sswitch_1
    add-int/lit8 v5, v5, 0x1

    #@37
    .line 354
    goto :goto_1

    #@38
    .line 360
    :cond_2
    const/4 v2, 0x0

    #@39
    .restart local v2    # "endstra":Z
    goto :goto_2

    #@3a
    .line 361
    :cond_3
    const/4 v3, 0x0

    #@3b
    .restart local v3    # "endstrb":Z
    goto :goto_3

    #@3c
    .line 364
    :cond_4
    const/4 v0, 0x0

    #@3d
    .line 369
    :cond_5
    :goto_4
    invoke-static {v0}, Landroid/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    #@40
    move-result v7

    #@41
    invoke-static {v1}, Landroid/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    #@44
    move-result v8

    #@45
    sub-int v6, v7, v8

    #@47
    .line 370
    .local v6, "rc":I
    if-eqz v6, :cond_7

    #@49
    .line 371
    return v6

    #@4a
    .line 365
    .end local v6    # "rc":I
    :cond_6
    if-eqz v3, :cond_5

    #@4c
    .line 366
    const/4 v1, 0x0

    #@4d
    goto :goto_4

    #@4e
    .line 374
    .restart local v6    # "rc":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    #@50
    .line 375
    add-int/lit8 v5, v5, 0x1

    #@52
    goto :goto_0

    #@53
    .line 339
    nop

    #@54
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2d -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch

    #@76
    .line 350
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x2d -> :sswitch_1
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method private containsName(Landroid/icu/util/BytesTrie;Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "trie"    # Landroid/icu/util/BytesTrie;
    .param p2, "name"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 201
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@2
    .line 202
    .local v2, "result":Landroid/icu/util/BytesTrie$Result;
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v3

    #@7
    if-ge v1, v3, :cond_4

    #@9
    .line 203
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 205
    .local v0, "c":I
    const/16 v3, 0x2d

    #@f
    if-eq v0, v3, :cond_0

    #@11
    const/16 v3, 0x5f

    #@13
    if-ne v0, v3, :cond_1

    #@15
    .line 202
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 205
    :cond_1
    const/16 v3, 0x20

    #@1a
    if-eq v0, v3, :cond_0

    #@1c
    const/16 v3, 0x9

    #@1e
    if-gt v3, v0, :cond_2

    #@20
    const/16 v3, 0xd

    #@22
    if-le v0, v3, :cond_0

    #@24
    .line 208
    :cond_2
    invoke-virtual {v2}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_3

    #@2a
    .line 209
    const/4 v3, 0x0

    #@2b
    return v3

    #@2c
    .line 211
    :cond_3
    invoke-static {v0}, Landroid/icu/impl/UPropertyAliases;->asciiToLowercase(I)I

    #@2f
    move-result v0

    #@30
    .line 212
    invoke-virtual {p1, v0}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    #@33
    move-result-object v2

    #@34
    goto :goto_1

    #@35
    .line 214
    .end local v0    # "c":I
    :cond_4
    invoke-virtual {v2}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    #@38
    move-result v3

    #@39
    return v3
.end method

.method private findProperty(I)I
    .locals 7
    .param p1, "property"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 121
    const/4 v0, 0x1

    #@2
    .line 122
    .local v0, "i":I
    iget-object v4, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@4
    aget v2, v4, v6

    #@6
    .local v2, "numRanges":I
    :goto_0
    if-lez v2, :cond_0

    #@8
    .line 124
    iget-object v4, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@a
    aget v3, v4, v0

    #@c
    .line 125
    .local v3, "start":I
    iget-object v4, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@e
    add-int/lit8 v5, v0, 0x1

    #@10
    aget v1, v4, v5

    #@12
    .line 126
    .local v1, "limit":I
    add-int/lit8 v0, v0, 0x2

    #@14
    .line 127
    if-ge p1, v3, :cond_1

    #@16
    .line 135
    .end local v1    # "limit":I
    .end local v3    # "start":I
    :cond_0
    return v6

    #@17
    .line 130
    .restart local v1    # "limit":I
    .restart local v3    # "start":I
    :cond_1
    if-ge p1, v1, :cond_2

    #@19
    .line 131
    sub-int v4, p1, v3

    #@1b
    mul-int/lit8 v4, v4, 0x2

    #@1d
    add-int/2addr v4, v0

    #@1e
    return v4

    #@1f
    .line 133
    :cond_2
    sub-int v4, v1, v3

    #@21
    mul-int/lit8 v4, v4, 0x2

    #@23
    add-int/2addr v0, v4

    #@24
    .line 122
    add-int/lit8 v2, v2, -0x1

    #@26
    goto :goto_0
.end method

.method private findPropertyValueNameGroup(II)I
    .locals 10
    .param p1, "valueMapIndex"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 139
    if-nez p1, :cond_0

    #@3
    .line 140
    return v9

    #@4
    .line 142
    :cond_0
    add-int/lit8 p1, p1, 0x1

    #@6
    .line 143
    iget-object v7, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@8
    add-int/lit8 v5, p1, 0x1

    #@a
    .end local p1    # "valueMapIndex":I
    .local v5, "valueMapIndex":I
    aget v2, v7, p1

    #@c
    .line 144
    .local v2, "numRanges":I
    const/16 v7, 0x10

    #@e
    if-ge v2, v7, :cond_4

    #@10
    move p1, v5

    #@11
    .line 146
    .end local v5    # "valueMapIndex":I
    .restart local p1    # "valueMapIndex":I
    :goto_0
    if-lez v2, :cond_1

    #@13
    .line 148
    iget-object v7, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@15
    aget v3, v7, p1

    #@17
    .line 149
    .local v3, "start":I
    iget-object v7, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@19
    add-int/lit8 v8, p1, 0x1

    #@1b
    aget v0, v7, v8

    #@1d
    .line 150
    .local v0, "limit":I
    add-int/lit8 p1, p1, 0x2

    #@1f
    .line 151
    if-ge p2, v3, :cond_2

    #@21
    .line 173
    .end local v0    # "limit":I
    .end local v3    # "start":I
    :cond_1
    return v9

    #@22
    .line 154
    .restart local v0    # "limit":I
    .restart local v3    # "start":I
    :cond_2
    if-ge p2, v0, :cond_3

    #@24
    .line 155
    iget-object v7, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@26
    add-int v8, p1, p2

    #@28
    sub-int/2addr v8, v3

    #@29
    aget v7, v7, v8

    #@2b
    return v7

    #@2c
    .line 157
    :cond_3
    sub-int v7, v0, v3

    #@2e
    add-int/2addr p1, v7

    #@2f
    .line 146
    add-int/lit8 v2, v2, -0x1

    #@31
    goto :goto_0

    #@32
    .line 161
    .end local v0    # "limit":I
    .end local v3    # "start":I
    .end local p1    # "valueMapIndex":I
    .restart local v5    # "valueMapIndex":I
    :cond_4
    move v6, v5

    #@33
    .line 162
    .local v6, "valuesStart":I
    add-int v7, v5, v2

    #@35
    add-int/lit8 v1, v7, -0x10

    #@37
    .local v1, "nameGroupOffsetsStart":I
    move p1, v5

    #@38
    .line 164
    .end local v5    # "valueMapIndex":I
    .restart local p1    # "valueMapIndex":I
    :goto_1
    iget-object v7, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@3a
    aget v4, v7, p1

    #@3c
    .line 165
    .local v4, "v":I
    if-lt p2, v4, :cond_1

    #@3e
    .line 168
    if-ne p2, v4, :cond_5

    #@40
    .line 169
    iget-object v7, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@42
    add-int v8, v1, p1

    #@44
    sub-int/2addr v8, v5

    #@45
    aget v7, v7, v8

    #@47
    return v7

    #@48
    .line 171
    :cond_5
    add-int/lit8 p1, p1, 0x1

    #@4a
    if-ge p1, v1, :cond_1

    #@4c
    goto :goto_1
.end method

.method private getName(II)Ljava/lang/String;
    .locals 5
    .param p1, "nameGroupsIndex"    # I
    .param p2, "nameIndex"    # I

    #@0
    .prologue
    .line 177
    iget-object v3, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    #@2
    add-int/lit8 v0, p1, 0x1

    #@4
    .end local p1    # "nameGroupsIndex":I
    .local v0, "nameGroupsIndex":I
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v2

    #@8
    .line 178
    .local v2, "numNames":I
    if-ltz p2, :cond_0

    #@a
    if-gt v2, p2, :cond_1

    #@c
    .line 179
    :cond_0
    new-instance v3, Landroid/icu/impl/IllegalIcuArgumentException;

    #@e
    const-string/jumbo v4, "Invalid property (value) name choice"

    #@11
    invoke-direct {v3, v4}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v3

    #@15
    :cond_1
    move p1, v0

    #@16
    .line 182
    .end local v0    # "nameGroupsIndex":I
    .restart local p1    # "nameGroupsIndex":I
    :goto_0
    if-lez p2, :cond_3

    #@18
    .line 183
    :goto_1
    iget-object v3, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    #@1a
    add-int/lit8 v0, p1, 0x1

    #@1c
    .end local p1    # "nameGroupsIndex":I
    .restart local v0    # "nameGroupsIndex":I
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_2

    #@22
    move p1, v0

    #@23
    .end local v0    # "nameGroupsIndex":I
    .restart local p1    # "nameGroupsIndex":I
    goto :goto_1

    #@24
    .line 182
    .end local p1    # "nameGroupsIndex":I
    .restart local v0    # "nameGroupsIndex":I
    :cond_2
    add-int/lit8 p2, p2, -0x1

    #@26
    move p1, v0

    #@27
    .end local v0    # "nameGroupsIndex":I
    .restart local p1    # "nameGroupsIndex":I
    goto :goto_0

    #@28
    .line 186
    :cond_3
    move v1, p1

    #@29
    .line 187
    .local v1, "nameStart":I
    :goto_2
    iget-object v3, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    #@2b
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_4

    #@31
    .line 188
    add-int/lit8 p1, p1, 0x1

    #@33
    goto :goto_2

    #@34
    .line 190
    :cond_4
    if-ne v1, p1, :cond_5

    #@36
    .line 191
    const/4 v3, 0x0

    #@37
    return-object v3

    #@38
    .line 193
    :cond_5
    iget-object v3, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    #@3a
    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    return-object v3
.end method

.method private getPropertyOrValueEnum(ILjava/lang/CharSequence;)I
    .locals 2
    .param p1, "bytesTrieOffset"    # I
    .param p2, "alias"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 270
    new-instance v0, Landroid/icu/util/BytesTrie;

    #@2
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->bytesTries:[B

    #@4
    invoke-direct {v0, v1, p1}, Landroid/icu/util/BytesTrie;-><init>([BI)V

    #@7
    .line 271
    .local v0, "trie":Landroid/icu/util/BytesTrie;
    invoke-direct {p0, v0, p2}, Landroid/icu/impl/UPropertyAliases;->containsName(Landroid/icu/util/BytesTrie;Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 272
    invoke-virtual {v0}, Landroid/icu/util/BytesTrie;->getValue()I

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 274
    :cond_0
    const/4 v1, -0x1

    #@13
    return v1
.end method

.method private load(Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 80
    sget-object v8, Landroid/icu/impl/UPropertyAliases;->IS_ACCEPTABLE:Landroid/icu/impl/UPropertyAliases$IsAcceptable;

    #@3
    const v9, 0x706e616d

    #@6
    invoke-static {p1, v9, v8}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@9
    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@c
    move-result v8

    #@d
    div-int/lit8 v2, v8, 0x4

    #@f
    .line 82
    .local v2, "indexesLength":I
    const/16 v8, 0x8

    #@11
    if-ge v2, v8, :cond_0

    #@13
    .line 83
    new-instance v8, Ljava/io/IOException;

    #@15
    const-string/jumbo v9, "pnames.icu: not enough indexes"

    #@18
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v8

    #@1c
    .line 85
    :cond_0
    new-array v1, v2, [I

    #@1e
    .line 86
    .local v1, "inIndexes":[I
    mul-int/lit8 v8, v2, 0x4

    #@20
    aput v8, v1, v10

    #@22
    .line 87
    const/4 v0, 0x1

    #@23
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@25
    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@28
    move-result v8

    #@29
    aput v8, v1, v0

    #@2b
    .line 87
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 92
    :cond_1
    aget v6, v1, v10

    #@30
    .line 93
    .local v6, "offset":I
    const/4 v8, 0x1

    #@31
    aget v3, v1, v8

    #@33
    .line 94
    .local v3, "nextOffset":I
    sub-int v8, v3, v6

    #@35
    div-int/lit8 v5, v8, 0x4

    #@37
    .line 95
    .local v5, "numInts":I
    invoke-static {p1, v5, v10}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    #@3a
    move-result-object v8

    #@3b
    iput-object v8, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@3d
    .line 98
    move v6, v3

    #@3e
    .line 99
    const/4 v8, 0x2

    #@3f
    aget v3, v1, v8

    #@41
    .line 100
    sub-int v4, v3, v6

    #@43
    .line 101
    .local v4, "numBytes":I
    new-array v8, v4, [B

    #@45
    iput-object v8, p0, Landroid/icu/impl/UPropertyAliases;->bytesTries:[B

    #@47
    .line 102
    iget-object v8, p0, Landroid/icu/impl/UPropertyAliases;->bytesTries:[B

    #@49
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@4c
    .line 105
    move v6, v3

    #@4d
    .line 106
    const/4 v8, 0x3

    #@4e
    aget v3, v1, v8

    #@50
    .line 107
    sub-int v4, v3, v6

    #@52
    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@57
    .line 109
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@58
    :goto_1
    if-ge v0, v4, :cond_2

    #@5a
    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@5d
    move-result v8

    #@5e
    int-to-char v8, v8

    #@5f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@62
    .line 109
    add-int/lit8 v0, v0, 0x1

    #@64
    goto :goto_1

    #@65
    .line 112
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v8

    #@69
    iput-object v8, p0, Landroid/icu/impl/UPropertyAliases;->nameGroups:Ljava/lang/String;

    #@6b
    .line 78
    return-void
.end method


# virtual methods
.method public getPropertyEnum(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "alias"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 284
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyOrValueEnum(ILjava/lang/CharSequence;)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getPropertyName(II)Ljava/lang/String;
    .locals 4
    .param p1, "property"    # I
    .param p2, "nameChoice"    # I

    #@0
    .prologue
    .line 241
    invoke-direct {p0, p1}, Landroid/icu/impl/UPropertyAliases;->findProperty(I)I

    #@3
    move-result v0

    #@4
    .line 242
    .local v0, "valueMapIndex":I
    if-nez v0, :cond_0

    #@6
    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Invalid property enum "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, " (0x"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, ")"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 243
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 246
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@38
    aget v1, v1, v0

    #@3a
    invoke-direct {p0, v1, p2}, Landroid/icu/impl/UPropertyAliases;->getName(II)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    return-object v1
.end method

.method public getPropertyValueEnum(ILjava/lang/CharSequence;)I
    .locals 4
    .param p1, "property"    # I
    .param p2, "alias"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 291
    invoke-direct {p0, p1}, Landroid/icu/impl/UPropertyAliases;->findProperty(I)I

    #@3
    move-result v0

    #@4
    .line 292
    .local v0, "valueMapIndex":I
    if-nez v0, :cond_0

    #@6
    .line 293
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Invalid property enum "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, " (0x"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, ")"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 293
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 296
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@38
    add-int/lit8 v2, v0, 0x1

    #@3a
    aget v0, v1, v2

    #@3c
    .line 297
    if-nez v0, :cond_1

    #@3e
    .line 298
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@40
    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v3, "Property "

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    const-string/jumbo v3, " (0x"

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    .line 300
    const-string/jumbo v3, ") does not have named values"

    #@62
    .line 299
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    .line 298
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v1

    #@6e
    .line 304
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@70
    aget v1, v1, v0

    #@72
    invoke-direct {p0, v1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyOrValueEnum(ILjava/lang/CharSequence;)I

    #@75
    move-result v1

    #@76
    return v1
.end method

.method public getPropertyValueEnumNoThrow(ILjava/lang/CharSequence;)I
    .locals 4
    .param p1, "property"    # I
    .param p2, "alias"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 312
    invoke-direct {p0, p1}, Landroid/icu/impl/UPropertyAliases;->findProperty(I)I

    #@4
    move-result v0

    #@5
    .line 313
    .local v0, "valueMapIndex":I
    if-nez v0, :cond_0

    #@7
    .line 314
    return v3

    #@8
    .line 316
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@a
    add-int/lit8 v2, v0, 0x1

    #@c
    aget v0, v1, v2

    #@e
    .line 317
    if-nez v0, :cond_1

    #@10
    .line 318
    return v3

    #@11
    .line 322
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@13
    aget v1, v1, v0

    #@15
    invoke-direct {p0, v1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyOrValueEnum(ILjava/lang/CharSequence;)I

    #@18
    move-result v1

    #@19
    return v1
.end method

.method public getPropertyValueName(III)Ljava/lang/String;
    .locals 5
    .param p1, "property"    # I
    .param p2, "value"    # I
    .param p3, "nameChoice"    # I

    #@0
    .prologue
    .line 255
    invoke-direct {p0, p1}, Landroid/icu/impl/UPropertyAliases;->findProperty(I)I

    #@3
    move-result v1

    #@4
    .line 256
    .local v1, "valueMapIndex":I
    if-nez v1, :cond_0

    #@6
    .line 257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Invalid property enum "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    const-string/jumbo v4, " (0x"

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, ")"

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 257
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 260
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/UPropertyAliases;->valueMaps:[I

    #@38
    add-int/lit8 v3, v1, 0x1

    #@3a
    aget v2, v2, v3

    #@3c
    invoke-direct {p0, v2, p2}, Landroid/icu/impl/UPropertyAliases;->findPropertyValueNameGroup(II)I

    #@3f
    move-result v0

    #@40
    .line 261
    .local v0, "nameGroupOffset":I
    if-nez v0, :cond_1

    #@42
    .line 262
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@44
    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v4, "Property "

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    const-string/jumbo v4, " (0x"

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    .line 264
    const-string/jumbo v4, ") does not have named values"

    #@66
    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    .line 262
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@71
    throw v2

    #@72
    .line 266
    :cond_1
    invoke-direct {p0, v0, p3}, Landroid/icu/impl/UPropertyAliases;->getName(II)Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    return-object v2
.end method
