.class Lsun/security/util/DerIndefLenConverter;
.super Ljava/lang/Object;
.source "DerIndefLenConverter.java"


# static fields
.field private static final CLASS_MASK:I = 0xc0

.field private static final FORM_MASK:I = 0x20

.field private static final LEN_LONG:I = 0x80

.field private static final LEN_MASK:I = 0x7f

.field private static final SKIP_EOC_BYTES:I = 0x2

.field private static final TAG_MASK:I = 0x1f


# instance fields
.field private data:[B

.field private dataPos:I

.field private dataSize:I

.field private index:I

.field private ndefsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private newData:[B

.field private newDataPos:I

.field private numOfTotalLenBytes:I

.field private unresolved:I


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    iput v1, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    #@6
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    #@d
    .line 57
    iput v1, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    #@f
    .line 73
    return-void
.end method

.method private getLengthBytes(I)[B
    .locals 5
    .param p1, "curLen"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 242
    const/16 v3, 0x80

    #@3
    if-ge p1, v3, :cond_0

    #@5
    .line 243
    const/4 v3, 0x1

    #@6
    new-array v2, v3, [B

    #@8
    .line 244
    .local v2, "lenBytes":[B
    const/4 v0, 0x1

    #@9
    .local v0, "index":I
    int-to-byte v3, p1

    #@a
    aput-byte v3, v2, v4

    #@c
    .line 273
    :goto_0
    return-object v2

    #@d
    .line 246
    .end local v0    # "index":I
    .end local v2    # "lenBytes":[B
    :cond_0
    const/16 v3, 0x100

    #@f
    if-ge p1, v3, :cond_1

    #@11
    .line 247
    const/4 v3, 0x2

    #@12
    new-array v2, v3, [B

    #@14
    .line 248
    .restart local v2    # "lenBytes":[B
    const/4 v0, 0x1

    #@15
    .restart local v0    # "index":I
    const/16 v3, -0x7f

    #@17
    aput-byte v3, v2, v4

    #@19
    .line 249
    add-int/lit8 v1, v0, 0x1

    #@1b
    .end local v0    # "index":I
    .local v1, "index":I
    int-to-byte v3, p1

    #@1c
    aput-byte v3, v2, v0

    #@1e
    move v0, v1

    #@1f
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    #@20
    .line 251
    .end local v0    # "index":I
    .end local v2    # "lenBytes":[B
    :cond_1
    const/high16 v3, 0x10000

    #@22
    if-ge p1, v3, :cond_2

    #@24
    .line 252
    const/4 v3, 0x3

    #@25
    new-array v2, v3, [B

    #@27
    .line 253
    .restart local v2    # "lenBytes":[B
    const/4 v0, 0x1

    #@28
    .restart local v0    # "index":I
    const/16 v3, -0x7e

    #@2a
    aput-byte v3, v2, v4

    #@2c
    .line 254
    add-int/lit8 v1, v0, 0x1

    #@2e
    .end local v0    # "index":I
    .restart local v1    # "index":I
    shr-int/lit8 v3, p1, 0x8

    #@30
    int-to-byte v3, v3

    #@31
    aput-byte v3, v2, v0

    #@33
    .line 255
    add-int/lit8 v0, v1, 0x1

    #@35
    .end local v1    # "index":I
    .restart local v0    # "index":I
    int-to-byte v3, p1

    #@36
    aput-byte v3, v2, v1

    #@38
    goto :goto_0

    #@39
    .line 257
    .end local v0    # "index":I
    .end local v2    # "lenBytes":[B
    :cond_2
    const/high16 v3, 0x1000000

    #@3b
    if-ge p1, v3, :cond_3

    #@3d
    .line 258
    const/4 v3, 0x4

    #@3e
    new-array v2, v3, [B

    #@40
    .line 259
    .restart local v2    # "lenBytes":[B
    const/4 v0, 0x1

    #@41
    .restart local v0    # "index":I
    const/16 v3, -0x7d

    #@43
    aput-byte v3, v2, v4

    #@45
    .line 260
    add-int/lit8 v1, v0, 0x1

    #@47
    .end local v0    # "index":I
    .restart local v1    # "index":I
    shr-int/lit8 v3, p1, 0x10

    #@49
    int-to-byte v3, v3

    #@4a
    aput-byte v3, v2, v0

    #@4c
    .line 261
    add-int/lit8 v0, v1, 0x1

    #@4e
    .end local v1    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v3, p1, 0x8

    #@50
    int-to-byte v3, v3

    #@51
    aput-byte v3, v2, v1

    #@53
    .line 262
    add-int/lit8 v1, v0, 0x1

    #@55
    .end local v0    # "index":I
    .restart local v1    # "index":I
    int-to-byte v3, p1

    #@56
    aput-byte v3, v2, v0

    #@58
    move v0, v1

    #@59
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    #@5a
    .line 265
    .end local v0    # "index":I
    .end local v2    # "lenBytes":[B
    :cond_3
    const/4 v3, 0x5

    #@5b
    new-array v2, v3, [B

    #@5d
    .line 266
    .restart local v2    # "lenBytes":[B
    const/4 v0, 0x1

    #@5e
    .restart local v0    # "index":I
    const/16 v3, -0x7c

    #@60
    aput-byte v3, v2, v4

    #@62
    .line 267
    add-int/lit8 v1, v0, 0x1

    #@64
    .end local v0    # "index":I
    .restart local v1    # "index":I
    shr-int/lit8 v3, p1, 0x18

    #@66
    int-to-byte v3, v3

    #@67
    aput-byte v3, v2, v0

    #@69
    .line 268
    add-int/lit8 v0, v1, 0x1

    #@6b
    .end local v1    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v3, p1, 0x10

    #@6d
    int-to-byte v3, v3

    #@6e
    aput-byte v3, v2, v1

    #@70
    .line 269
    add-int/lit8 v1, v0, 0x1

    #@72
    .end local v0    # "index":I
    .restart local v1    # "index":I
    shr-int/lit8 v3, p1, 0x8

    #@74
    int-to-byte v3, v3

    #@75
    aput-byte v3, v2, v0

    #@77
    .line 270
    add-int/lit8 v0, v1, 0x1

    #@79
    .end local v1    # "index":I
    .restart local v0    # "index":I
    int-to-byte v3, p1

    #@7a
    aput-byte v3, v2, v1

    #@7c
    goto :goto_0
.end method

.method private getNumOfLenBytes(I)I
    .locals 2
    .param p1, "len"    # I

    #@0
    .prologue
    .line 279
    const/4 v0, 0x0

    #@1
    .line 281
    .local v0, "numOfLenBytes":I
    const/16 v1, 0x80

    #@3
    if-ge p1, v1, :cond_0

    #@5
    .line 282
    const/4 v0, 0x1

    #@6
    .line 292
    :goto_0
    return v0

    #@7
    .line 283
    :cond_0
    const/16 v1, 0x100

    #@9
    if-ge p1, v1, :cond_1

    #@b
    .line 284
    const/4 v0, 0x2

    #@c
    goto :goto_0

    #@d
    .line 285
    :cond_1
    const/high16 v1, 0x10000

    #@f
    if-ge p1, v1, :cond_2

    #@11
    .line 286
    const/4 v0, 0x3

    #@12
    goto :goto_0

    #@13
    .line 287
    :cond_2
    const/high16 v1, 0x1000000

    #@15
    if-ge p1, v1, :cond_3

    #@17
    .line 288
    const/4 v0, 0x4

    #@18
    goto :goto_0

    #@19
    .line 290
    :cond_3
    const/4 v0, 0x5

    #@1a
    goto :goto_0
.end method

.method private isEOC(I)Z
    .locals 2
    .param p1, "tag"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 60
    and-int/lit8 v1, p1, 0x1f

    #@3
    if-nez v1, :cond_0

    #@5
    .line 61
    and-int/lit8 v1, p1, 0x20

    #@7
    if-nez v1, :cond_0

    #@9
    .line 62
    and-int/lit16 v1, p1, 0xc0

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 60
    :cond_0
    return v0
.end method

.method static isIndefinite(I)Z
    .locals 2
    .param p0, "lengthByte"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 85
    invoke-static {p0}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    and-int/lit8 v1, p0, 0x7f

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method static isLongForm(I)Z
    .locals 2
    .param p0, "lengthByte"    # I

    #@0
    .prologue
    .line 67
    and-int/lit16 v0, p0, 0x80

    #@2
    const/16 v1, 0x80

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private parseLength()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    const/4 v0, 0x0

    #@1
    .line 149
    .local v0, "curLen":I
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@3
    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    #@5
    if-ne v3, v4, :cond_0

    #@7
    .line 150
    return v0

    #@8
    .line 151
    :cond_0
    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    #@a
    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@c
    add-int/lit8 v5, v4, 0x1

    #@e
    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@10
    aget-byte v3, v3, v4

    #@12
    and-int/lit16 v2, v3, 0xff

    #@14
    .line 152
    .local v2, "lenByte":I
    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 153
    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    #@1c
    new-instance v4, Ljava/lang/Integer;

    #@1e
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@20
    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    #@23
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 154
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    #@28
    add-int/lit8 v3, v3, 0x1

    #@2a
    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    #@2c
    .line 155
    return v0

    #@2d
    .line 157
    :cond_1
    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_5

    #@33
    .line 158
    and-int/lit8 v2, v2, 0x7f

    #@35
    .line 159
    const/4 v3, 0x4

    #@36
    if-le v2, v3, :cond_2

    #@38
    .line 160
    new-instance v3, Ljava/io/IOException;

    #@3a
    const-string/jumbo v4, "Too much data"

    #@3d
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@40
    throw v3

    #@41
    .line 162
    :cond_2
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    #@43
    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@45
    sub-int/2addr v3, v4

    #@46
    add-int/lit8 v4, v2, 0x1

    #@48
    if-ge v3, v4, :cond_3

    #@4a
    .line 163
    new-instance v3, Ljava/io/IOException;

    #@4c
    const-string/jumbo v4, "Too little data"

    #@4f
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@52
    throw v3

    #@53
    .line 165
    :cond_3
    const/4 v1, 0x0

    #@54
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    #@56
    .line 166
    shl-int/lit8 v3, v0, 0x8

    #@58
    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    #@5a
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@5c
    add-int/lit8 v6, v5, 0x1

    #@5e
    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@60
    aget-byte v4, v4, v5

    #@62
    and-int/lit16 v4, v4, 0xff

    #@64
    add-int v0, v3, v4

    #@66
    .line 165
    add-int/lit8 v1, v1, 0x1

    #@68
    goto :goto_0

    #@69
    .line 168
    :cond_4
    if-gez v0, :cond_6

    #@6b
    .line 169
    new-instance v3, Ljava/io/IOException;

    #@6d
    const-string/jumbo v4, "Invalid length bytes"

    #@70
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@73
    throw v3

    #@74
    .line 172
    .end local v1    # "i":I
    :cond_5
    and-int/lit8 v0, v2, 0x7f

    #@76
    .line 174
    :cond_6
    return v0
.end method

.method private parseTag()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@2
    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    #@4
    if-ne v5, v6, :cond_0

    #@6
    .line 94
    return-void

    #@7
    .line 95
    :cond_0
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    #@9
    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@b
    aget-byte v5, v5, v6

    #@d
    invoke-direct {p0, v5}, Lsun/security/util/DerIndefLenConverter;->isEOC(I)Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_4

    #@13
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    #@15
    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@17
    add-int/lit8 v6, v6, 0x1

    #@19
    aget-byte v5, v5, v6

    #@1b
    if-nez v5, :cond_4

    #@1d
    .line 96
    const/4 v2, 0x0

    #@1e
    .line 97
    .local v2, "numOfEncapsulatedLenBytes":I
    const/4 v0, 0x0

    #@1f
    .line 99
    .local v0, "elem":Ljava/lang/Object;
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v5

    #@25
    add-int/lit8 v1, v5, -0x1

    #@27
    .end local v0    # "elem":Ljava/lang/Object;
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    #@29
    .line 102
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    .line 103
    .restart local v0    # "elem":Ljava/lang/Object;
    instance-of v5, v0, Ljava/lang/Integer;

    #@31
    if-eqz v5, :cond_2

    #@33
    .line 109
    .end local v0    # "elem":Ljava/lang/Object;
    :cond_1
    if-gez v1, :cond_3

    #@35
    .line 110
    new-instance v5, Ljava/io/IOException;

    #@37
    const-string/jumbo v6, "EOC does not have matching indefinite-length tag"

    #@3a
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v5

    #@3e
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_2
    move-object v5, v0

    #@3f
    .line 106
    check-cast v5, [B

    #@41
    array-length v5, v5

    #@42
    add-int/lit8 v5, v5, -0x3

    #@44
    add-int/2addr v2, v5

    #@45
    .line 99
    add-int/lit8 v1, v1, -0x1

    #@47
    goto :goto_0

    #@48
    .line 113
    .end local v0    # "elem":Ljava/lang/Object;
    :cond_3
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@4a
    check-cast v0, Ljava/lang/Integer;

    #@4c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@4f
    move-result v6

    #@50
    sub-int/2addr v5, v6

    #@51
    add-int v3, v5, v2

    #@53
    .line 115
    .local v3, "sectionLen":I
    invoke-direct {p0, v3}, Lsun/security/util/DerIndefLenConverter;->getLengthBytes(I)[B

    #@56
    move-result-object v4

    #@57
    .line 116
    .local v4, "sectionLenBytes":[B
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    #@59
    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@5c
    .line 117
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    #@5e
    add-int/lit8 v5, v5, -0x1

    #@60
    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    #@62
    .line 123
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    #@64
    array-length v6, v4

    #@65
    add-int/lit8 v6, v6, -0x3

    #@67
    add-int/2addr v5, v6

    #@68
    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    #@6a
    .line 125
    .end local v1    # "index":I
    .end local v2    # "numOfEncapsulatedLenBytes":I
    .end local v3    # "sectionLen":I
    .end local v4    # "sectionLenBytes":[B
    :cond_4
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@6c
    add-int/lit8 v5, v5, 0x1

    #@6e
    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@70
    .line 92
    return-void
.end method

.method private parseValue(I)V
    .locals 1
    .param p1, "curLen"    # I

    #@0
    .prologue
    .line 299
    iget v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@5
    .line 298
    return-void
.end method

.method private writeLength(I)V
    .locals 3
    .param p1, "curLen"    # I

    #@0
    .prologue
    .line 211
    const/16 v0, 0x80

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 212
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@6
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@8
    add-int/lit8 v2, v1, 0x1

    #@a
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@c
    int-to-byte v2, p1

    #@d
    aput-byte v2, v0, v1

    #@f
    .line 210
    :goto_0
    return-void

    #@10
    .line 214
    :cond_0
    const/16 v0, 0x100

    #@12
    if-ge p1, v0, :cond_1

    #@14
    .line 215
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@16
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@18
    add-int/lit8 v2, v1, 0x1

    #@1a
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@1c
    const/16 v2, -0x7f

    #@1e
    aput-byte v2, v0, v1

    #@20
    .line 216
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@22
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@24
    add-int/lit8 v2, v1, 0x1

    #@26
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@28
    int-to-byte v2, p1

    #@29
    aput-byte v2, v0, v1

    #@2b
    goto :goto_0

    #@2c
    .line 218
    :cond_1
    const/high16 v0, 0x10000

    #@2e
    if-ge p1, v0, :cond_2

    #@30
    .line 219
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@32
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@34
    add-int/lit8 v2, v1, 0x1

    #@36
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@38
    const/16 v2, -0x7e

    #@3a
    aput-byte v2, v0, v1

    #@3c
    .line 220
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@3e
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@40
    add-int/lit8 v2, v1, 0x1

    #@42
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@44
    shr-int/lit8 v2, p1, 0x8

    #@46
    int-to-byte v2, v2

    #@47
    aput-byte v2, v0, v1

    #@49
    .line 221
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@4b
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@4d
    add-int/lit8 v2, v1, 0x1

    #@4f
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@51
    int-to-byte v2, p1

    #@52
    aput-byte v2, v0, v1

    #@54
    goto :goto_0

    #@55
    .line 223
    :cond_2
    const/high16 v0, 0x1000000

    #@57
    if-ge p1, v0, :cond_3

    #@59
    .line 224
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@5b
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@5d
    add-int/lit8 v2, v1, 0x1

    #@5f
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@61
    const/16 v2, -0x7d

    #@63
    aput-byte v2, v0, v1

    #@65
    .line 225
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@67
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@69
    add-int/lit8 v2, v1, 0x1

    #@6b
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@6d
    shr-int/lit8 v2, p1, 0x10

    #@6f
    int-to-byte v2, v2

    #@70
    aput-byte v2, v0, v1

    #@72
    .line 226
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@74
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@76
    add-int/lit8 v2, v1, 0x1

    #@78
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@7a
    shr-int/lit8 v2, p1, 0x8

    #@7c
    int-to-byte v2, v2

    #@7d
    aput-byte v2, v0, v1

    #@7f
    .line 227
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@81
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@83
    add-int/lit8 v2, v1, 0x1

    #@85
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@87
    int-to-byte v2, p1

    #@88
    aput-byte v2, v0, v1

    #@8a
    goto :goto_0

    #@8b
    .line 230
    :cond_3
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@8d
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@8f
    add-int/lit8 v2, v1, 0x1

    #@91
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@93
    const/16 v2, -0x7c

    #@95
    aput-byte v2, v0, v1

    #@97
    .line 231
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@99
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@9b
    add-int/lit8 v2, v1, 0x1

    #@9d
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@9f
    shr-int/lit8 v2, p1, 0x18

    #@a1
    int-to-byte v2, v2

    #@a2
    aput-byte v2, v0, v1

    #@a4
    .line 232
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@a6
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@a8
    add-int/lit8 v2, v1, 0x1

    #@aa
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@ac
    shr-int/lit8 v2, p1, 0x10

    #@ae
    int-to-byte v2, v2

    #@af
    aput-byte v2, v0, v1

    #@b1
    .line 233
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@b3
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@b5
    add-int/lit8 v2, v1, 0x1

    #@b7
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@b9
    shr-int/lit8 v2, p1, 0x8

    #@bb
    int-to-byte v2, v2

    #@bc
    aput-byte v2, v0, v1

    #@be
    .line 234
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@c0
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@c2
    add-int/lit8 v2, v1, 0x1

    #@c4
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@c6
    int-to-byte v2, p1

    #@c7
    aput-byte v2, v0, v1

    #@c9
    goto/16 :goto_0
.end method

.method private writeLengthAndValue()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 184
    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@3
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    #@5
    if-ne v4, v5, :cond_0

    #@7
    .line 185
    return-void

    #@8
    .line 186
    :cond_0
    const/4 v0, 0x0

    #@9
    .line 187
    .local v0, "curLen":I
    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    #@b
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@d
    add-int/lit8 v6, v5, 0x1

    #@f
    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@11
    aget-byte v4, v4, v5

    #@13
    and-int/lit16 v2, v4, 0xff

    #@15
    .line 188
    .local v2, "lenByte":I
    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 189
    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    #@1d
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    #@1f
    add-int/lit8 v6, v5, 0x1

    #@21
    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    #@23
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, [B

    #@29
    .line 190
    .local v3, "lenBytes":[B
    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@2b
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@2d
    .line 191
    array-length v6, v3

    #@2e
    .line 190
    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@31
    .line 192
    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@33
    array-length v5, v3

    #@34
    add-int/2addr v4, v5

    #@35
    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@37
    .line 193
    return-void

    #@38
    .line 195
    .end local v3    # "lenBytes":[B
    :cond_1
    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_3

    #@3e
    .line 196
    and-int/lit8 v2, v2, 0x7f

    #@40
    .line 197
    const/4 v1, 0x0

    #@41
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@43
    .line 198
    shl-int/lit8 v4, v0, 0x8

    #@45
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    #@47
    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@49
    add-int/lit8 v7, v6, 0x1

    #@4b
    iput v7, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@4d
    aget-byte v5, v5, v6

    #@4f
    and-int/lit16 v5, v5, 0xff

    #@51
    add-int v0, v4, v5

    #@53
    .line 197
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_0

    #@56
    .line 200
    :cond_2
    if-gez v0, :cond_4

    #@58
    .line 201
    new-instance v4, Ljava/io/IOException;

    #@5a
    const-string/jumbo v5, "Invalid length bytes"

    #@5d
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@60
    throw v4

    #@61
    .line 204
    .end local v1    # "i":I
    :cond_3
    and-int/lit8 v0, v2, 0x7f

    #@63
    .line 206
    :cond_4
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->writeLength(I)V

    #@66
    .line 207
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->writeValue(I)V

    #@69
    .line 183
    return-void
.end method

.method private writeTag()V
    .locals 4

    #@0
    .prologue
    .line 133
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@2
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 134
    return-void

    #@7
    .line 135
    :cond_0
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    #@9
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@b
    add-int/lit8 v3, v2, 0x1

    #@d
    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@f
    aget-byte v0, v1, v2

    #@11
    .line 136
    .local v0, "tag":I
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->isEOC(I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    #@19
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@1b
    aget-byte v1, v1, v2

    #@1d
    if-nez v1, :cond_1

    #@1f
    .line 137
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@21
    add-int/lit8 v1, v1, 0x1

    #@23
    iput v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@25
    .line 138
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeTag()V

    #@28
    .line 132
    :goto_0
    return-void

    #@29
    .line 140
    :cond_1
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@2b
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@2d
    add-int/lit8 v3, v2, 0x1

    #@2f
    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@31
    int-to-byte v3, v0

    #@32
    aput-byte v3, v1, v2

    #@34
    goto :goto_0
.end method

.method private writeValue(I)V
    .locals 6
    .param p1, "curLen"    # I

    #@0
    .prologue
    .line 306
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@3
    .line 307
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@5
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@7
    add-int/lit8 v3, v2, 0x1

    #@9
    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@b
    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    #@d
    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@f
    add-int/lit8 v5, v4, 0x1

    #@11
    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@13
    aget-byte v3, v3, v4

    #@15
    aput-byte v3, v1, v2

    #@17
    .line 306
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 305
    :cond_0
    return-void
.end method


# virtual methods
.method convert([B)[B
    .locals 6
    .param p1, "indefData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 321
    iput-object p1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    #@3
    .line 322
    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@5
    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    #@7
    .line 323
    iget-object v2, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    #@9
    array-length v2, v2

    #@a
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    #@c
    .line 324
    const/4 v0, 0x0

    #@d
    .line 325
    .local v0, "len":I
    const/4 v1, 0x0

    #@e
    .line 328
    .local v1, "unused":I
    :cond_0
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@10
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    #@12
    if-ge v2, v3, :cond_1

    #@14
    .line 329
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->parseTag()V

    #@17
    .line 330
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->parseLength()I

    #@1a
    move-result v0

    #@1b
    .line 331
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->parseValue(I)V

    #@1e
    .line 332
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    #@20
    if-nez v2, :cond_0

    #@22
    .line 333
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    #@24
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@26
    sub-int v1, v2, v3

    #@28
    .line 334
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@2a
    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    #@2c
    .line 339
    :cond_1
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 340
    new-instance v2, Ljava/io/IOException;

    #@32
    const-string/jumbo v3, "not all indef len BER resolved"

    #@35
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@38
    throw v2

    #@39
    .line 343
    :cond_2
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    #@3b
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    #@3d
    add-int/2addr v2, v3

    #@3e
    add-int/2addr v2, v1

    #@3f
    new-array v2, v2, [B

    #@41
    iput-object v2, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@43
    .line 344
    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@45
    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    #@47
    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    #@49
    .line 348
    :goto_0
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    #@4b
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    #@4d
    if-ge v2, v3, :cond_3

    #@4f
    .line 349
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeTag()V

    #@52
    .line 350
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeLengthAndValue()V

    #@55
    goto :goto_0

    #@56
    .line 352
    :cond_3
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    #@58
    .line 353
    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@5a
    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    #@5c
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    #@5e
    add-int/2addr v4, v5

    #@5f
    .line 352
    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@62
    .line 355
    iget-object v2, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    #@64
    return-object v2
.end method
