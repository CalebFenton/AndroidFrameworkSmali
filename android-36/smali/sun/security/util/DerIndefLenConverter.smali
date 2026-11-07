.class Lsun/security/util/DerIndefLenConverter;
.super Ljava/lang/Object;
.source "DerIndefLenConverter.java"


# static fields
.field private static final blacklist CLASS_MASK:I = 0xc0

.field private static final blacklist FORM_MASK:I = 0x20

.field private static final blacklist LEN_LONG:I = 0x80

.field private static final blacklist LEN_MASK:I = 0x7f

.field private static final blacklist SKIP_EOC_BYTES:I = 0x2

.field private static final blacklist TAG_MASK:I = 0x1f


# instance fields
.field private greylist data:[B

.field private greylist dataPos:I

.field private greylist dataSize:I

.field private blacklist index:I

.field private blacklist ndefsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist newData:[B

.field private blacklist newDataPos:I

.field private greylist numOfTotalLenBytes:I

.field private blacklist unresolved:I


# direct methods
.method constructor greylist <init>()V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    .line 57
    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    .line 73
    return-void
.end method

.method private blacklist getLengthBytes(I)[B
    .registers 6
    .param p1, "curLen"    # I

    .line 240
    const/4 v0, 0x0

    .line 242
    .local v0, "index":I
    const/16 v1, 0x80

    if-ge p1, v1, :cond_f

    .line 243
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 244
    .local v1, "lenBytes":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .local v2, "index":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    goto/16 :goto_82

    .line 246
    .end local v1    # "lenBytes":[B
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_f
    const/16 v1, 0x100

    if-ge p1, v1, :cond_23

    .line 247
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 248
    .restart local v1    # "lenBytes":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .restart local v2    # "index":I
    const/16 v3, -0x7f

    aput-byte v3, v1, v0

    .line 249
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .restart local v0    # "index":I
    int-to-byte v3, p1

    aput-byte v3, v1, v2

    move v2, v0

    goto :goto_82

    .line 251
    .end local v1    # "lenBytes":[B
    :cond_23
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_3d

    .line 252
    const/4 v1, 0x3

    new-array v1, v1, [B

    .line 253
    .restart local v1    # "lenBytes":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .restart local v2    # "index":I
    const/16 v3, -0x7e

    aput-byte v3, v1, v0

    .line 254
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 255
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .restart local v2    # "index":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    goto :goto_82

    .line 257
    .end local v1    # "lenBytes":[B
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_3d
    const/high16 v1, 0x1000000

    if-ge p1, v1, :cond_5f

    .line 258
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 259
    .restart local v1    # "lenBytes":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .restart local v2    # "index":I
    const/16 v3, -0x7d

    aput-byte v3, v1, v0

    .line 260
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 261
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .restart local v2    # "index":I
    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 262
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .restart local v0    # "index":I
    int-to-byte v3, p1

    aput-byte v3, v1, v2

    move v2, v0

    goto :goto_82

    .line 265
    .end local v1    # "lenBytes":[B
    :cond_5f
    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 266
    .restart local v1    # "lenBytes":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .restart local v2    # "index":I
    const/16 v3, -0x7c

    aput-byte v3, v1, v0

    .line 267
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 268
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .restart local v2    # "index":I
    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 269
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 270
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .restart local v2    # "index":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 273
    :goto_82
    return-object v1
.end method

.method private blacklist getNumOfLenBytes(I)I
    .registers 4
    .param p1, "len"    # I

    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, "numOfLenBytes":I
    const/16 v1, 0x80

    if-ge p1, v1, :cond_7

    .line 282
    const/4 v0, 0x1

    goto :goto_1a

    .line 283
    :cond_7
    const/16 v1, 0x100

    if-ge p1, v1, :cond_d

    .line 284
    const/4 v0, 0x2

    goto :goto_1a

    .line 285
    :cond_d
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_13

    .line 286
    const/4 v0, 0x3

    goto :goto_1a

    .line 287
    :cond_13
    const/high16 v1, 0x1000000

    if-ge p1, v1, :cond_19

    .line 288
    const/4 v0, 0x4

    goto :goto_1a

    .line 290
    :cond_19
    const/4 v0, 0x5

    .line 292
    :goto_1a
    return v0
.end method

.method private blacklist isEOC(I)Z
    .registers 3
    .param p1, "tag"    # I

    .line 60
    and-int/lit8 v0, p1, 0x1f

    if-nez v0, :cond_e

    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_e

    and-int/lit16 v0, p1, 0xc0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static greylist isIndefinite(I)Z
    .registers 2
    .param p0, "lengthByte"    # I

    .line 85
    invoke-static {p0}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v0

    if-eqz v0, :cond_c

    and-int/lit8 v0, p0, 0x7f

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static blacklist isLongForm(I)Z
    .registers 3
    .param p0, "lengthByte"    # I

    .line 67
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist parseLength()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "curLen":I
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v1, v2, :cond_8

    .line 150
    return v0

    .line 151
    :cond_8
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 152
    .local v1, "lenByte":I
    invoke-static {v1}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 153
    iget-object v2, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    .line 155
    return v0

    .line 157
    :cond_2d
    invoke-static {v1}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 158
    and-int/lit8 v1, v1, 0x7f

    .line 159
    const/4 v2, 0x4

    if-gt v1, v2, :cond_6a

    .line 162
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    sub-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    if-lt v2, v3, :cond_62

    .line 165
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    if-ge v2, v1, :cond_57

    .line 166
    shl-int/lit8 v3, v0, 0x8

    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 168
    .end local v2    # "i":I
    :cond_57
    if-ltz v0, :cond_5a

    goto :goto_74

    .line 169
    :cond_5a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid length bytes"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_62
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Too little data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_6a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Too much data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_72
    and-int/lit8 v0, v1, 0x7f

    .line 174
    :goto_74
    return v0
.end method

.method private greylist parseTag()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v0, v1, :cond_7

    .line 94
    return-void

    .line 95
    :cond_7
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v0, v0, v1

    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->isEOC(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_6b

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "numOfEncapsulatedLenBytes":I
    const/4 v1, 0x0

    .line 99
    .local v1, "elem":Ljava/lang/Object;
    iget-object v2, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "index":I
    :goto_27
    if-ltz v2, :cond_3e

    .line 102
    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 103
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_34

    .line 104
    goto :goto_3e

    .line 106
    :cond_34
    move-object v3, v1

    check-cast v3, [B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x3

    add-int/2addr v0, v3

    .line 99
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 109
    :cond_3e
    :goto_3e
    if-ltz v2, :cond_63

    .line 113
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 115
    .local v3, "sectionLen":I
    invoke-direct {p0, v3}, Lsun/security/util/DerIndefLenConverter;->getLengthBytes(I)[B

    move-result-object v4

    .line 116
    .local v4, "sectionLenBytes":[B
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    .line 123
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    array-length v6, v4

    add-int/lit8 v6, v6, -0x3

    add-int/2addr v5, v6

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    goto :goto_6b

    .line 110
    .end local v3    # "sectionLen":I
    .end local v4    # "sectionLenBytes":[B
    :cond_63
    new-instance v3, Ljava/io/IOException;

    const-string v4, "EOC does not have matching indefinite-length tag"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    .end local v0    # "numOfEncapsulatedLenBytes":I
    .end local v1    # "elem":Ljava/lang/Object;
    .end local v2    # "index":I
    :cond_6b
    :goto_6b
    iget v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    .line 126
    return-void
.end method

.method private greylist parseValue(I)V
    .registers 3
    .param p1, "curLen"    # I

    .line 299
    iget v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    .line 300
    return-void
.end method

.method private blacklist writeLength(I)V
    .registers 5
    .param p1, "curLen"    # I

    .line 211
    const/16 v0, 0x80

    if-ge p1, v0, :cond_11

    .line 212
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto/16 :goto_cb

    .line 214
    :cond_11
    const/16 v0, 0x100

    if-ge p1, v0, :cond_2e

    .line 215
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    .line 216
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto/16 :goto_cb

    .line 218
    :cond_2e
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_57

    .line 219
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    .line 220
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 221
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_cb

    .line 223
    :cond_57
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_8d

    .line 224
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    .line 225
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 226
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 227
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_cb

    .line 230
    :cond_8d
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    .line 231
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 232
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 233
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 234
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 236
    :goto_cb
    return-void
.end method

.method private greylist writeLengthAndValue()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v0, v1, :cond_7

    .line 185
    return-void

    .line 186
    :cond_7
    const/4 v0, 0x0

    .line 187
    .local v0, "curLen":I
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 188
    .local v1, "lenByte":I
    invoke-static {v1}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 189
    iget-object v2, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 190
    .local v2, "lenBytes":[B
    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    array-length v4, v2

    add-int/2addr v3, v4

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    .line 193
    return-void

    .line 195
    .end local v2    # "lenBytes":[B
    :cond_38
    invoke-static {v1}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 196
    and-int/lit8 v1, v1, 0x7f

    .line 197
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    if-ge v2, v1, :cond_56

    .line 198
    shl-int/lit8 v3, v0, 0x8

    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 200
    .end local v2    # "i":I
    :cond_56
    if-ltz v0, :cond_59

    goto :goto_63

    .line 201
    :cond_59
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid length bytes"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_61
    and-int/lit8 v0, v1, 0x7f

    .line 206
    :goto_63
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->writeLength(I)V

    .line 207
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->writeValue(I)V

    .line 208
    return-void
.end method

.method private greylist writeTag()V
    .registers 5

    .line 133
    iget v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v0, v1, :cond_7

    .line 134
    return-void

    .line 135
    :cond_7
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v0, v0, v1

    .line 136
    .local v0, "tag":I
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->isEOC(I)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v1, v1, v2

    if-nez v1, :cond_29

    .line 137
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    .line 138
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeTag()V

    goto :goto_34

    .line 140
    :cond_29
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 141
    :goto_34
    return-void
.end method

.method private blacklist writeValue(I)V
    .registers 8
    .param p1, "curLen"    # I

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1a

    .line 307
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method


# virtual methods
.method greylist convert([B)[B
    .registers 8
    .param p1, "indefData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    .line 323
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    array-length v1, v1

    iput v1, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "len":I
    const/4 v2, 0x0

    .line 328
    .local v2, "unused":I
    :cond_e
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ge v3, v4, :cond_2d

    .line 329
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->parseTag()V

    .line 330
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->parseLength()I

    move-result v1

    .line 331
    invoke-direct {p0, v1}, Lsun/security/util/DerIndefLenConverter;->parseValue(I)V

    .line 332
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    if-nez v3, :cond_e

    .line 333
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    sub-int v2, v3, v4

    .line 334
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    .line 335
    nop

    .line 339
    :cond_2d
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    if-nez v3, :cond_5d

    .line 343
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    new-array v3, v3, [B

    iput-object v3, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    .line 344
    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    .line 348
    :goto_41
    iget v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ge v0, v3, :cond_4e

    .line 349
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeTag()V

    .line 350
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeLengthAndValue()V

    goto :goto_41

    .line 352
    :cond_4e
    iget v0, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    add-int/2addr v4, v5

    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    return-object v0

    .line 340
    :cond_5d
    new-instance v0, Ljava/io/IOException;

    const-string v3, "not all indef len BER resolved"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
