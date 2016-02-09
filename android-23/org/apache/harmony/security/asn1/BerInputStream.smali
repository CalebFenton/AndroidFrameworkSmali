.class public Lorg/apache/harmony/security/asn1/BerInputStream;
.super Ljava/lang/Object;
.source "BerInputStream.java"


# static fields
.field private static final BUF_INCREASE_SIZE:I = 0x4000

.field protected static final INDEFINIT_LENGTH:I = -0x1


# instance fields
.field protected buffer:[B

.field public choiceIndex:I

.field public content:Ljava/lang/Object;

.field protected contentOffset:I

.field private final in:Ljava/io/InputStream;

.field protected isIndefinedLength:Z

.field protected isVerify:Z

.field protected length:I

.field protected offset:I

.field public oidElement:I

.field private pool:[[Ljava/lang/Object;

.field public tag:I

.field protected tagOffset:I

.field public times:[I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    const/16 v0, 0x4000

    #@2
    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;I)V

    #@5
    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "initialSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 45
    iput v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@6
    .line 116
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    #@8
    .line 117
    new-array v1, p2, [B

    #@a
    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@c
    .line 119
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    #@f
    .line 121
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@11
    const/4 v2, -0x1

    #@12
    if-eq v1, v2, :cond_1

    #@14
    .line 124
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@16
    array-length v1, v1

    #@17
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@19
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@1b
    add-int/2addr v2, v3

    #@1c
    if-ge v1, v2, :cond_0

    #@1e
    .line 125
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@20
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@22
    add-int/2addr v1, v2

    #@23
    new-array v0, v1, [B

    #@25
    .line 126
    .local v0, "newBuffer":[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@27
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@29
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2c
    .line 127
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@2e
    .line 115
    .end local v0    # "newBuffer":[B
    :cond_0
    return-void

    #@2f
    .line 130
    :cond_1
    const/4 v1, 0x1

    #@30
    iput-boolean v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isIndefinedLength:Z

    #@32
    .line 131
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@34
    const-string/jumbo v2, "Decoding indefinite length encoding is not supported"

    #@37
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([BII)V

    #@5
    .line 75
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3
    .param p1, "encoded"    # [B
    .param p2, "offset"    # I
    .param p3, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@6
    .line 88
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    #@9
    .line 89
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@b
    .line 90
    iput p2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@d
    .line 92
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    #@10
    .line 95
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@12
    const/4 v1, -0x1

    #@13
    if-eq v0, v1, :cond_0

    #@15
    .line 96
    add-int v0, p2, p3

    #@17
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@19
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@1b
    add-int/2addr v1, v2

    #@1c
    if-eq v0, v1, :cond_0

    #@1e
    .line 97
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@20
    const-string/jumbo v1, "Wrong content length"

    #@23
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 87
    :cond_0
    return-void
.end method

.method private decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .locals 8
    .param p1, "collection"    # Lorg/apache/harmony/security/asn1/ASN1ValueCollection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 610
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@2
    .line 611
    .local v0, "begOffset":I
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@4
    add-int v1, v0, v5

    #@6
    .line 613
    .local v1, "endOffset":I
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@8
    .line 615
    .local v3, "type":Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-boolean v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 616
    :goto_0
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@e
    if-le v1, v5, :cond_2

    #@10
    .line 617
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    #@13
    .line 618
    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@16
    goto :goto_0

    #@17
    .line 621
    :cond_0
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@19
    .line 623
    .local v2, "seqTagOffset":I
    new-instance v4, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1e
    .line 624
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_1
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@20
    if-le v1, v5, :cond_1

    #@22
    .line 625
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    #@25
    .line 626
    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_1

    #@2d
    .line 629
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    #@30
    .line 630
    iput-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@32
    .line 632
    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@34
    .line 635
    .end local v2    # "seqTagOffset":I
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@36
    if-eq v5, v1, :cond_3

    #@38
    .line 636
    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@3a
    new-instance v6, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v7, "Wrong encoding at ["

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    const-string/jumbo v7, "]. Content\'s length and encoded length are not the same"

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    invoke-direct {v5, v6}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@58
    throw v5

    #@59
    .line 609
    :cond_3
    return-void
.end method

.method private expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;
    .locals 3
    .param p1, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/asn1/ASN1Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 464
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "ASN.1 "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " identifier expected at ["

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "], got "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@28
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@37
    throw v0
.end method

.method public static getLength([B)I
    .locals 5
    .param p0, "encoding"    # [B

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 193
    const/4 v3, 0x1

    #@2
    aget-byte v3, p0, v3

    #@4
    and-int/lit16 v1, v3, 0xff

    #@6
    .line 194
    .local v1, "length":I
    const/4 v2, 0x0

    #@7
    .line 195
    .local v2, "numOctets":I
    and-int/lit16 v3, v1, 0x80

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 196
    and-int/lit8 v2, v1, 0x7f

    #@d
    .line 199
    aget-byte v3, p0, v4

    #@f
    and-int/lit16 v1, v3, 0xff

    #@11
    .line 200
    const/4 v0, 0x3

    #@12
    .local v0, "i":I
    :goto_0
    add-int/lit8 v3, v2, 0x2

    #@14
    if-ge v0, v3, :cond_0

    #@16
    .line 201
    shl-int/lit8 v3, v1, 0x8

    #@18
    aget-byte v4, p0, v0

    #@1a
    and-int/lit16 v4, v4, 0xff

    #@1c
    add-int v1, v3, v4

    #@1e
    .line 200
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 205
    .end local v0    # "i":I
    :cond_0
    add-int/lit8 v3, v2, 0x2

    #@23
    add-int/2addr v3, v1

    #@24
    return v3
.end method

.method private strToInt(II)I
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/asn1/ASN1Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    const/4 v3, 0x0

    #@1
    .line 413
    .local v3, "result":I
    move v2, p1

    #@2
    .local v2, "i":I
    add-int v1, p1, p2

    #@4
    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@6
    .line 414
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@8
    aget-byte v4, v4, v2

    #@a
    add-int/lit8 v0, v4, -0x30

    #@c
    .line 415
    .local v0, "c":I
    if-ltz v0, :cond_0

    #@e
    const/16 v4, 0x9

    #@10
    if-le v0, v4, :cond_1

    #@12
    .line 416
    :cond_0
    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@14
    const-string/jumbo v5, "Time encoding has invalid char"

    #@17
    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@1a
    throw v4

    #@1b
    .line 418
    :cond_1
    mul-int/lit8 v4, v3, 0xa

    #@1d
    add-int v3, v4, v0

    #@1f
    .line 413
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 420
    .end local v0    # "c":I
    :cond_2
    return v3
.end method


# virtual methods
.method public compactBuffer()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 788
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@3
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@5
    array-length v2, v2

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 789
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@a
    new-array v0, v1, [B

    #@c
    .line 791
    .local v0, "newBuffer":[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@e
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@10
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@13
    .line 793
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@15
    .line 787
    .end local v0    # "newBuffer":[B
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 823
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 824
    return-object v2

    #@7
    .line 827
    :cond_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@a
    aget-object v1, v1, v3

    #@c
    array-length v1, v1

    #@d
    if-ge v0, v1, :cond_2

    #@f
    .line 828
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@11
    aget-object v1, v1, v3

    #@13
    aget-object v1, v1, v0

    #@15
    if-ne v1, p1, :cond_1

    #@17
    .line 829
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@19
    const/4 v2, 0x1

    #@1a
    aget-object v1, v1, v2

    #@1c
    aget-object v1, v1, v0

    #@1e
    return-object v1

    #@1f
    .line 827
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 832
    :cond_2
    return-object v2
.end method

.method public final getBuffer()[B
    .locals 1

    #@0
    .prologue
    .line 670
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    #@0
    .prologue
    .line 661
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@2
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@4
    sub-int/2addr v1, v2

    #@5
    new-array v0, v1, [B

    #@7
    .line 662
    .local v0, "encoded":[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@9
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@b
    array-length v3, v0

    #@c
    const/4 v4, 0x0

    #@d
    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@10
    .line 663
    return-object v0
.end method

.method public final getEndOffset()I
    .locals 2

    #@0
    .prologue
    .line 691
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@2
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@4
    add-int/2addr v0, v1

    #@5
    return v0
.end method

.method public final getLength()I
    .locals 1

    #@0
    .prologue
    .line 677
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@2
    return v0
.end method

.method public final getOffset()I
    .locals 1

    #@0
    .prologue
    .line 684
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@2
    return v0
.end method

.method public final getTagOffset()I
    .locals 1

    #@0
    .prologue
    .line 698
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@2
    return v0
.end method

.method public next()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@2
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@4
    .line 157
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    #@7
    move-result v3

    #@8
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@a
    .line 160
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    #@d
    move-result v3

    #@e
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@10
    .line 161
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@12
    const/16 v4, 0x80

    #@14
    if-eq v3, v4, :cond_2

    #@16
    .line 163
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@18
    and-int/lit16 v3, v3, 0x80

    #@1a
    if-eqz v3, :cond_3

    #@1c
    .line 164
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@1e
    and-int/lit8 v2, v3, 0x7f

    #@20
    .line 166
    .local v2, "numOctets":I
    const/4 v3, 0x5

    #@21
    if-le v2, v3, :cond_0

    #@23
    .line 167
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@25
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "Too long encoding at ["

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, "]"

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@45
    throw v3

    #@46
    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    #@49
    move-result v3

    #@4a
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@4c
    .line 172
    const/4 v1, 0x1

    #@4d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@4f
    .line 173
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    #@52
    move-result v0

    #@53
    .line 174
    .local v0, "ch":I
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@55
    shl-int/lit8 v3, v3, 0x8

    #@57
    add-int/2addr v3, v0

    #@58
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@5a
    .line 172
    add-int/lit8 v1, v1, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 177
    .end local v0    # "ch":I
    :cond_1
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@5f
    const v4, 0xffffff

    #@62
    if-le v3, v4, :cond_3

    #@64
    .line 178
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@66
    new-instance v4, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v5, "Too long encoding at ["

    #@6e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    const-string/jumbo v5, "]"

    #@7b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@86
    throw v3

    #@87
    .line 182
    .end local v1    # "i":I
    .end local v2    # "numOctets":I
    :cond_2
    const/4 v3, -0x1

    #@88
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@8a
    .line 184
    :cond_3
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@8c
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@8e
    .line 186
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@90
    return v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "entry"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 799
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 800
    const-class v2, Ljava/lang/Object;

    #@9
    const/16 v3, 0xa

    #@b
    filled-new-array {v7, v3}, [I

    #@e
    move-result-object v3

    #@f
    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, [[Ljava/lang/Object;

    #@15
    iput-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@17
    .line 803
    :cond_0
    const/4 v0, 0x0

    #@18
    .line 804
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@1a
    aget-object v2, v2, v5

    #@1c
    array-length v2, v2

    #@1d
    if-ge v0, v2, :cond_2

    #@1f
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@21
    aget-object v2, v2, v5

    #@23
    aget-object v2, v2, v0

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 805
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@29
    aget-object v2, v2, v5

    #@2b
    aget-object v2, v2, v0

    #@2d
    if-ne v2, p1, :cond_1

    #@2f
    .line 806
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@31
    aget-object v2, v2, v6

    #@33
    aput-object p2, v2, v0

    #@35
    .line 807
    return-void

    #@36
    .line 804
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 811
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@3b
    aget-object v2, v2, v5

    #@3d
    array-length v2, v2

    #@3e
    if-ne v0, v2, :cond_3

    #@40
    .line 812
    const-class v2, Ljava/lang/Object;

    #@42
    new-array v3, v7, [I

    #@44
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@46
    aget-object v4, v4, v5

    #@48
    array-length v4, v4

    #@49
    mul-int/lit8 v4, v4, 0x2

    #@4b
    aput v4, v3, v5

    #@4d
    aput v7, v3, v6

    #@4f
    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@52
    move-result-object v1

    #@53
    check-cast v1, [[Ljava/lang/Object;

    #@55
    .line 813
    .local v1, "newPool":[[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@57
    aget-object v2, v2, v5

    #@59
    aget-object v3, v1, v5

    #@5b
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@5d
    aget-object v4, v4, v5

    #@5f
    array-length v4, v4

    #@60
    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@63
    .line 814
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@65
    aget-object v2, v2, v6

    #@67
    aget-object v3, v1, v6

    #@69
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@6b
    aget-object v4, v4, v5

    #@6d
    array-length v4, v4

    #@6e
    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@71
    .line 815
    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@73
    .line 798
    .end local v1    # "newPool":[[Ljava/lang/Object;
    :goto_1
    return-void

    #@74
    .line 817
    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@76
    aget-object v2, v2, v5

    #@78
    aput-object p1, v2, v0

    #@7a
    .line 818
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    #@7c
    aget-object v2, v2, v6

    #@7e
    aput-object p2, v2, v0

    #@80
    goto :goto_1
.end method

.method protected read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 734
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@2
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@4
    array-length v2, v2

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 735
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@9
    const-string/jumbo v2, "Unexpected end of encoding"

    #@c
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 738
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    #@12
    if-nez v1, :cond_1

    #@14
    .line 739
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@16
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@18
    add-int/lit8 v3, v2, 0x1

    #@1a
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@1c
    aget-byte v1, v1, v2

    #@1e
    and-int/lit16 v1, v1, 0xff

    #@20
    return v1

    #@21
    .line 741
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    #@23
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@26
    move-result v0

    #@27
    .line 742
    .local v0, "octet":I
    const/4 v1, -0x1

    #@28
    if-ne v0, v1, :cond_2

    #@2a
    .line 743
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@2c
    const-string/jumbo v2, "Unexpected end of encoding"

    #@2f
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 746
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@35
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@37
    add-int/lit8 v3, v2, 0x1

    #@39
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@3b
    int-to-byte v3, v0

    #@3c
    aput-byte v3, v1, v2

    #@3e
    .line 748
    return v0
.end method

.method public readBitString()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_2

    #@5
    .line 214
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@7
    if-nez v0, :cond_0

    #@9
    .line 215
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "ASN.1 Bitstring: wrong length. Tag at ["

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, "]"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    #@2f
    .line 221
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@31
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@33
    aget-byte v0, v0, v1

    #@35
    const/4 v1, 0x7

    #@36
    if-le v0, v1, :cond_1

    #@38
    .line 222
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "ASN.1 Bitstring: wrong content at ["

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 223
    const-string/jumbo v2, "]. A number of unused bits MUST be in range 0 to 7"

    #@4f
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@5a
    throw v0

    #@5b
    .line 226
    :cond_1
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@5d
    const/4 v1, 0x1

    #@5e
    if-ne v0, v1, :cond_4

    #@60
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@62
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@64
    aget-byte v0, v0, v1

    #@66
    if-eqz v0, :cond_4

    #@68
    .line 227
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@6a
    new-instance v1, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v2, "ASN.1 Bitstring: wrong content at ["

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    .line 228
    const-string/jumbo v2, "]. For empty string unused bits MUST be 0"

    #@7f
    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@8a
    throw v0

    #@8b
    .line 231
    :cond_2
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@8d
    const/16 v1, 0x23

    #@8f
    if-ne v0, v1, :cond_3

    #@91
    .line 232
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@93
    const-string/jumbo v1, "Decoding constructed ASN.1 bitstring  type is not provided"

    #@96
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@99
    throw v0

    #@9a
    .line 234
    :cond_3
    const-string/jumbo v0, "bitstring"

    #@9d
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@a0
    move-result-object v0

    #@a1
    throw v0

    #@a2
    .line 211
    :cond_4
    return-void
.end method

.method public readBoolean()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 272
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 273
    const-string/jumbo v0, "boolean"

    #@8
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@b
    move-result-object v0

    #@c
    throw v0

    #@d
    .line 277
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@f
    if-eq v0, v1, :cond_1

    #@11
    .line 278
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Wrong length for ASN.1 boolean at ["

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "]"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 281
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    #@37
    .line 271
    return-void
.end method

.method public readContent()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 757
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@2
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@4
    add-int/2addr v2, v3

    #@5
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@7
    array-length v3, v3

    #@8
    if-le v2, v3, :cond_0

    #@a
    .line 758
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@c
    const-string/jumbo v3, "Unexpected end of encoding"

    #@f
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 761
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    #@15
    if-nez v2, :cond_1

    #@17
    .line 762
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@19
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@1b
    add-int/2addr v2, v3

    #@1c
    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@1e
    .line 756
    :goto_0
    return-void

    #@1f
    .line 764
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    #@21
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@23
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@25
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@27
    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    #@2a
    move-result v0

    #@2b
    .line 766
    .local v0, "bytesRead":I
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@2d
    if-eq v0, v2, :cond_5

    #@2f
    .line 769
    move v1, v0

    #@30
    .line 771
    .local v1, "c":I
    :cond_2
    const/4 v2, 0x1

    #@31
    if-lt v1, v2, :cond_3

    #@33
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@35
    if-le v0, v2, :cond_4

    #@37
    .line 772
    :cond_3
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@39
    const-string/jumbo v3, "Failed to read encoded content"

    #@3c
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@3f
    throw v2

    #@40
    .line 774
    :cond_4
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    #@42
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@44
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@46
    add-int/2addr v4, v0

    #@47
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@49
    sub-int/2addr v5, v0

    #@4a
    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    #@4d
    move-result v1

    #@4e
    .line 775
    add-int/2addr v0, v1

    #@4f
    .line 776
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@51
    if-ne v0, v2, :cond_2

    #@53
    .line 779
    .end local v1    # "c":I
    :cond_5
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@55
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@57
    add-int/2addr v2, v3

    #@58
    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@5a
    goto :goto_0
.end method

.method public readEnumerated()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@2
    const/16 v2, 0xa

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 243
    const-string/jumbo v1, "enumerated"

    #@9
    invoke-direct {p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@c
    move-result-object v1

    #@d
    throw v1

    #@e
    .line 247
    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@10
    if-nez v1, :cond_1

    #@12
    .line 248
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "ASN.1 enumerated: wrong length for identifier at ["

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 249
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@22
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 249
    const-string/jumbo v3, "]"

    #@29
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 252
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    #@38
    .line 255
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@3a
    const/4 v2, 0x1

    #@3b
    if-le v1, v2, :cond_4

    #@3d
    .line 256
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@3f
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@41
    aget-byte v1, v1, v2

    #@43
    and-int/lit16 v0, v1, 0xff

    #@45
    .line 257
    .local v0, "bits":I
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@47
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@49
    add-int/lit8 v2, v2, 0x1

    #@4b
    aget-byte v1, v1, v2

    #@4d
    if-gez v1, :cond_2

    #@4f
    .line 258
    add-int/lit16 v0, v0, 0x100

    #@51
    .line 261
    :cond_2
    if-eqz v0, :cond_3

    #@53
    const/16 v1, 0x1ff

    #@55
    if-ne v0, v1, :cond_4

    #@57
    .line 262
    :cond_3
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@59
    new-instance v2, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v3, "ASN.1 enumerated: wrong content at ["

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    .line 263
    const-string/jumbo v3, "]. An integer MUST be encoded in minimum number of octets"

    #@6e
    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@79
    throw v1

    #@7a
    .line 241
    .end local v0    # "bits":I
    :cond_4
    return-void
.end method

.method public readGeneralizedTime()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x11

    #@2
    const/16 v7, 0x10

    #@4
    const/4 v6, 0x4

    #@5
    const/4 v5, 0x6

    #@6
    const/4 v4, 0x2

    #@7
    .line 296
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@9
    const/16 v2, 0x18

    #@b
    if-ne v1, v2, :cond_7

    #@d
    .line 298
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    #@10
    .line 303
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@12
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    aget-byte v1, v1, v2

    #@18
    const/16 v2, 0x5a

    #@1a
    if-eq v1, v2, :cond_0

    #@1c
    .line 305
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@1e
    const-string/jumbo v2, "ASN.1 GeneralizedTime: encoded format is not implemented"

    #@21
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 309
    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@27
    const/16 v2, 0xf

    #@29
    if-eq v1, v2, :cond_2

    #@2b
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@2d
    if-lt v1, v8, :cond_1

    #@2f
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@31
    const/16 v2, 0x13

    #@33
    if-le v1, v2, :cond_2

    #@35
    .line 310
    :cond_1
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@37
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "ASN.1 GeneralizedTime wrongly encoded at ["

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 311
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@45
    .line 310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    .line 311
    const-string/jumbo v3, "]"

    #@4c
    .line 310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@57
    throw v1

    #@58
    .line 315
    :cond_2
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@5a
    if-le v1, v7, :cond_3

    #@5c
    .line 316
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@5e
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@60
    add-int/lit8 v2, v2, 0xe

    #@62
    aget-byte v0, v1, v2

    #@64
    .line 317
    .local v0, "char14":B
    const/16 v1, 0x2e

    #@66
    if-eq v0, v1, :cond_3

    #@68
    const/16 v1, 0x2c

    #@6a
    if-eq v0, v1, :cond_3

    #@6c
    .line 318
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@6e
    new-instance v2, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v3, "ASN.1 GeneralizedTime wrongly encoded at ["

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    .line 319
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@7c
    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    .line 319
    const-string/jumbo v3, "]"

    #@83
    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@8e
    throw v1

    #@8f
    .line 323
    .end local v0    # "char14":B
    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@91
    if-nez v1, :cond_4

    #@93
    .line 324
    const/4 v1, 0x7

    #@94
    new-array v1, v1, [I

    #@96
    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@98
    .line 326
    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@9a
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@9c
    invoke-direct {p0, v2, v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    #@9f
    move-result v2

    #@a0
    const/4 v3, 0x0

    #@a1
    aput v2, v1, v3

    #@a3
    .line 327
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@a5
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@a7
    add-int/lit8 v2, v2, 0x4

    #@a9
    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    #@ac
    move-result v2

    #@ad
    const/4 v3, 0x1

    #@ae
    aput v2, v1, v3

    #@b0
    .line 328
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@b2
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@b4
    add-int/lit8 v2, v2, 0x6

    #@b6
    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    #@b9
    move-result v2

    #@ba
    aput v2, v1, v4

    #@bc
    .line 329
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@be
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@c0
    add-int/lit8 v2, v2, 0x8

    #@c2
    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    #@c5
    move-result v2

    #@c6
    const/4 v3, 0x3

    #@c7
    aput v2, v1, v3

    #@c9
    .line 330
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@cb
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@cd
    add-int/lit8 v2, v2, 0xa

    #@cf
    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    #@d2
    move-result v2

    #@d3
    aput v2, v1, v6

    #@d5
    .line 331
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@d7
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@d9
    add-int/lit8 v2, v2, 0xc

    #@db
    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    #@de
    move-result v2

    #@df
    const/4 v3, 0x5

    #@e0
    aput v2, v1, v3

    #@e2
    .line 333
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@e4
    if-le v1, v7, :cond_5

    #@e6
    .line 335
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@e8
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@ea
    add-int/lit8 v2, v2, 0xf

    #@ec
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@ee
    add-int/lit8 v3, v3, -0x10

    #@f0
    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    #@f3
    move-result v2

    #@f4
    aput v2, v1, v5

    #@f6
    .line 337
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@f8
    if-ne v1, v8, :cond_6

    #@fa
    .line 338
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@fc
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@fe
    aget v2, v2, v5

    #@100
    mul-int/lit8 v2, v2, 0x64

    #@102
    aput v2, v1, v5

    #@104
    .line 295
    :cond_5
    :goto_0
    return-void

    #@105
    .line 339
    :cond_6
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@107
    const/16 v2, 0x12

    #@109
    if-ne v1, v2, :cond_5

    #@10b
    .line 340
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@10d
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@10f
    aget v2, v2, v5

    #@111
    mul-int/lit8 v2, v2, 0xa

    #@113
    aput v2, v1, v5

    #@115
    goto :goto_0

    #@116
    .line 345
    :cond_7
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@118
    const/16 v2, 0x38

    #@11a
    if-ne v1, v2, :cond_8

    #@11c
    .line 346
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@11e
    const-string/jumbo v2, "Decoding constructed ASN.1 GeneralizedTime type is not supported"

    #@121
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@124
    throw v1

    #@125
    .line 348
    :cond_8
    const-string/jumbo v1, "GeneralizedTime"

    #@128
    invoke-direct {p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@12b
    move-result-object v1

    #@12c
    throw v1
.end method

.method public readInteger()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 427
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@3
    const/4 v3, 0x2

    #@4
    if-eq v2, v3, :cond_0

    #@6
    .line 428
    const-string/jumbo v2, "integer"

    #@9
    invoke-direct {p0, v2}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@c
    move-result-object v2

    #@d
    throw v2

    #@e
    .line 432
    :cond_0
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@10
    if-ge v2, v4, :cond_1

    #@12
    .line 433
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Wrong length for ASN.1 integer at ["

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, "]"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 436
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    #@38
    .line 439
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@3a
    if-le v2, v4, :cond_4

    #@3c
    .line 440
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@3e
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@40
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@42
    sub-int/2addr v3, v4

    #@43
    aget-byte v0, v2, v3

    #@45
    .line 441
    .local v0, "firstByte":B
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@47
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@49
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@4b
    sub-int/2addr v3, v4

    #@4c
    add-int/lit8 v3, v3, 0x1

    #@4e
    aget-byte v2, v2, v3

    #@50
    and-int/lit16 v2, v2, 0x80

    #@52
    int-to-byte v1, v2

    #@53
    .line 443
    .local v1, "secondByte":B
    if-nez v0, :cond_3

    #@55
    if-nez v1, :cond_3

    #@57
    .line 445
    :cond_2
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@59
    new-instance v3, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v4, "Wrong content for ASN.1 integer at ["

    #@61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@67
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@69
    sub-int/2addr v4, v5

    #@6a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    const-string/jumbo v4, "]. An integer MUST be encoded in minimum number of octets"

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@7c
    throw v2

    #@7d
    .line 443
    :cond_3
    const/4 v2, -0x1

    #@7e
    if-ne v0, v2, :cond_4

    #@80
    .line 444
    const/16 v2, -0x80

    #@82
    if-eq v1, v2, :cond_2

    #@84
    .line 426
    .end local v0    # "firstByte":B
    .end local v1    # "secondByte":B
    :cond_4
    return-void
.end method

.method public readOID()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 473
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@3
    const/4 v2, 0x6

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 474
    const-string/jumbo v1, "OID"

    #@9
    invoke-direct {p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@c
    move-result-object v1

    #@d
    throw v1

    #@e
    .line 478
    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@10
    if-ge v1, v3, :cond_1

    #@12
    .line 479
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Wrong length for ASN.1 object identifier at ["

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, "]"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 482
    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    #@38
    .line 485
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@3a
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@3c
    add-int/lit8 v2, v2, -0x1

    #@3e
    aget-byte v1, v1, v2

    #@40
    and-int/lit16 v1, v1, 0x80

    #@42
    if-eqz v1, :cond_2

    #@44
    .line 486
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@46
    new-instance v2, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v3, "Wrong encoding at ["

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@54
    add-int/lit8 v3, v3, -0x1

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    const-string/jumbo v3, "]"

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@68
    throw v1

    #@69
    .line 489
    :cond_2
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    #@6b
    .line 490
    const/4 v0, 0x0

    #@6c
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@6e
    if-ge v0, v1, :cond_4

    #@70
    .line 491
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@72
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@74
    add-int/2addr v2, v0

    #@75
    aget-byte v1, v1, v2

    #@77
    and-int/lit16 v1, v1, 0x80

    #@79
    const/16 v2, 0x80

    #@7b
    if-ne v1, v2, :cond_3

    #@7d
    .line 492
    add-int/lit8 v0, v0, 0x1

    #@7f
    goto :goto_1

    #@80
    .line 490
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@82
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    #@84
    add-int/lit8 v1, v1, 0x1

    #@86
    iput v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    #@88
    goto :goto_0

    #@89
    .line 472
    :cond_4
    return-void
.end method

.method public readOctetString()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 454
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@2
    const/4 v1, 0x4

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 455
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    #@8
    .line 453
    return-void

    #@9
    .line 456
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@b
    const/16 v1, 0x24

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 457
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@11
    const-string/jumbo v1, "Decoding constructed ASN.1 octet string type is not supported"

    #@14
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 459
    :cond_1
    const-string/jumbo v0, "octetstring"

    #@1b
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@1e
    move-result-object v0

    #@1f
    throw v0
.end method

.method public readSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .locals 9
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 501
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@2
    const/16 v7, 0x30

    #@4
    if-eq v6, v7, :cond_0

    #@6
    .line 502
    const-string/jumbo v6, "sequence"

    #@9
    invoke-direct {p0, v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@c
    move-result-object v6

    #@d
    throw v6

    #@e
    .line 505
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@10
    .line 506
    .local v0, "begOffset":I
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@12
    add-int v1, v0, v6

    #@14
    .line 508
    .local v1, "endOffset":I
    iget-object v4, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@16
    .line 510
    .local v4, "type":[Lorg/apache/harmony/security/asn1/ASN1Type;
    const/4 v2, 0x0

    #@17
    .line 512
    .local v2, "i":I
    iget-boolean v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@19
    if-eqz v6, :cond_6

    #@1b
    .line 514
    :goto_0
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@1d
    if-ge v6, v1, :cond_5

    #@1f
    array-length v6, v4

    #@20
    if-ge v2, v6, :cond_5

    #@22
    .line 516
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    #@25
    .line 517
    :goto_1
    aget-object v6, v4, v2

    #@27
    iget v7, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@29
    invoke-virtual {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    #@2c
    move-result v6

    #@2d
    if-nez v6, :cond_3

    #@2f
    .line 519
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    #@31
    aget-boolean v6, v6, v2

    #@33
    if-eqz v6, :cond_1

    #@35
    array-length v6, v4

    #@36
    add-int/lit8 v6, v6, -0x1

    #@38
    if-ne v2, v6, :cond_2

    #@3a
    .line 520
    :cond_1
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@3c
    new-instance v7, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v8, "ASN.1 Sequence: mandatory value is missing at ["

    #@44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    const-string/jumbo v8, "]"

    #@51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@5c
    throw v6

    #@5d
    .line 522
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 525
    :cond_3
    aget-object v6, v4, v2

    #@62
    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@65
    .line 514
    add-int/lit8 v2, v2, 0x1

    #@67
    goto :goto_0

    #@68
    .line 529
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@6a
    :cond_5
    array-length v6, v4

    #@6b
    if-ge v2, v6, :cond_f

    #@6d
    .line 530
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    #@6f
    aget-boolean v6, v6, v2

    #@71
    if-nez v6, :cond_4

    #@73
    .line 531
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@75
    new-instance v7, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v8, "ASN.1 Sequence: mandatory value is missing at ["

    #@7d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v7

    #@81
    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@83
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v7

    #@87
    const-string/jumbo v8, "]"

    #@8a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v7

    #@8e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v7

    #@92
    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@95
    throw v6

    #@96
    .line 536
    :cond_6
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@98
    .line 538
    .local v3, "seqTagOffset":I
    array-length v6, v4

    #@99
    new-array v5, v6, [Ljava/lang/Object;

    #@9b
    .line 539
    .local v5, "values":[Ljava/lang/Object;
    :goto_2
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@9d
    if-ge v6, v1, :cond_d

    #@9f
    array-length v6, v4

    #@a0
    if-ge v2, v6, :cond_d

    #@a2
    .line 541
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    #@a5
    .line 542
    :goto_3
    aget-object v6, v4, v2

    #@a7
    iget v7, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@a9
    invoke-virtual {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    #@ac
    move-result v6

    #@ad
    if-nez v6, :cond_a

    #@af
    .line 544
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    #@b1
    aget-boolean v6, v6, v2

    #@b3
    if-eqz v6, :cond_7

    #@b5
    array-length v6, v4

    #@b6
    add-int/lit8 v6, v6, -0x1

    #@b8
    if-ne v2, v6, :cond_8

    #@ba
    .line 545
    :cond_7
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@bc
    new-instance v7, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v8, "ASN.1 Sequence: mandatory value is missing at ["

    #@c4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v7

    #@c8
    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@ca
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v7

    #@ce
    const-string/jumbo v8, "]"

    #@d1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v7

    #@d5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v7

    #@d9
    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@dc
    throw v6

    #@dd
    .line 549
    :cond_8
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    #@df
    aget-object v6, v6, v2

    #@e1
    if-eqz v6, :cond_9

    #@e3
    .line 550
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    #@e5
    aget-object v6, v6, v2

    #@e7
    aput-object v6, v5, v2

    #@e9
    .line 552
    :cond_9
    add-int/lit8 v2, v2, 0x1

    #@eb
    goto :goto_3

    #@ec
    .line 554
    :cond_a
    aget-object v6, v4, v2

    #@ee
    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@f1
    move-result-object v6

    #@f2
    aput-object v6, v5, v2

    #@f4
    .line 539
    add-int/lit8 v2, v2, 0x1

    #@f6
    goto :goto_2

    #@f7
    .line 562
    :cond_b
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    #@f9
    aget-object v6, v6, v2

    #@fb
    if-eqz v6, :cond_c

    #@fd
    .line 563
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    #@ff
    aget-object v6, v6, v2

    #@101
    aput-object v6, v5, v2

    #@103
    .line 558
    :cond_c
    add-int/lit8 v2, v2, 0x1

    #@105
    :cond_d
    array-length v6, v4

    #@106
    if-ge v2, v6, :cond_e

    #@108
    .line 559
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    #@10a
    aget-boolean v6, v6, v2

    #@10c
    if-nez v6, :cond_b

    #@10e
    .line 560
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@110
    new-instance v7, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v8, "ASN.1 Sequence: mandatory value is missing at ["

    #@118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v7

    #@11c
    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@11e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@121
    move-result-object v7

    #@122
    const-string/jumbo v8, "]"

    #@125
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v7

    #@129
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12c
    move-result-object v7

    #@12d
    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@130
    throw v6

    #@131
    .line 566
    :cond_e
    iput-object v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@133
    .line 568
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@135
    .line 571
    .end local v3    # "seqTagOffset":I
    .end local v5    # "values":[Ljava/lang/Object;
    :cond_f
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@137
    if-eq v6, v1, :cond_10

    #@139
    .line 572
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@13b
    new-instance v7, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v8, "Wrong encoding at ["

    #@143
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v7

    #@147
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v7

    #@14b
    const-string/jumbo v8, "]. Content\'s length and encoded length are not the same"

    #@14e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v7

    #@152
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v7

    #@156
    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@159
    throw v6

    #@15a
    .line 500
    :cond_10
    return-void
.end method

.method public readSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .locals 2
    .param p1, "sequenceOf"    # Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 580
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@2
    const/16 v1, 0x30

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 581
    const-string/jumbo v0, "sequenceOf"

    #@9
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@c
    move-result-object v0

    #@d
    throw v0

    #@e
    .line 584
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    #@11
    .line 579
    return-void
.end method

.method public readSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .locals 2
    .param p1, "set"    # Lorg/apache/harmony/security/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 591
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@2
    const/16 v1, 0x31

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 592
    const-string/jumbo v0, "set"

    #@9
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@c
    move-result-object v0

    #@d
    throw v0

    #@e
    .line 595
    :cond_0
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@10
    const-string/jumbo v1, "Decoding ASN.1 Set type is not supported"

    #@13
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
.end method

.method public readSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .locals 2
    .param p1, "setOf"    # Lorg/apache/harmony/security/asn1/ASN1SetOf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 602
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@2
    const/16 v1, 0x31

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 603
    const-string/jumbo v0, "setOf"

    #@9
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@c
    move-result-object v0

    #@d
    throw v0

    #@e
    .line 606
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    #@11
    .line 601
    return-void
.end method

.method public readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/harmony/security/asn1/ASN1StringType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 646
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@2
    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 647
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    #@9
    .line 645
    return-void

    #@a
    .line 648
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@c
    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1StringType;->constrId:I

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 649
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@12
    const-string/jumbo v1, "Decoding constructed ASN.1 string type is not provided"

    #@15
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 651
    :cond_1
    const-string/jumbo v0, "string"

    #@1c
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@1f
    move-result-object v0

    #@20
    throw v0
.end method

.method public readUTCTime()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x2

    #@2
    .line 358
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@4
    const/16 v1, 0x17

    #@6
    if-ne v0, v1, :cond_4

    #@8
    .line 359
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 368
    :pswitch_0
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "ASN.1 UTCTime: wrong length, identifier at "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 366
    :pswitch_1
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@2b
    const-string/jumbo v1, "ASN.1 UTCTime: local time format is not supported"

    #@2e
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 372
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    #@35
    .line 378
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@37
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    #@39
    add-int/lit8 v1, v1, -0x1

    #@3b
    aget-byte v0, v0, v1

    #@3d
    const/16 v1, 0x5a

    #@3f
    if-eq v0, v1, :cond_0

    #@41
    .line 379
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@43
    new-instance v1, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v2, "ASN.1 UTCTime wrongly encoded at ["

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    .line 380
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@51
    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 380
    const/16 v2, 0x5d

    #@57
    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@62
    throw v0

    #@63
    .line 383
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@65
    if-nez v0, :cond_1

    #@67
    .line 384
    const/4 v0, 0x7

    #@68
    new-array v0, v0, [I

    #@6a
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@6c
    .line 387
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@6e
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@70
    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    #@73
    move-result v1

    #@74
    aput v1, v0, v2

    #@76
    .line 388
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@78
    aget v0, v0, v2

    #@7a
    const/16 v1, 0x31

    #@7c
    if-le v0, v1, :cond_3

    #@7e
    .line 389
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@80
    aget v1, v0, v2

    #@82
    add-int/lit16 v1, v1, 0x76c

    #@84
    aput v1, v0, v2

    #@86
    .line 394
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@88
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@8a
    add-int/lit8 v1, v1, 0x2

    #@8c
    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    #@8f
    move-result v1

    #@90
    const/4 v2, 0x1

    #@91
    aput v1, v0, v2

    #@93
    .line 395
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@95
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@97
    add-int/lit8 v1, v1, 0x4

    #@99
    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    #@9c
    move-result v1

    #@9d
    aput v1, v0, v3

    #@9f
    .line 396
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@a1
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@a3
    add-int/lit8 v1, v1, 0x6

    #@a5
    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    #@a8
    move-result v1

    #@a9
    const/4 v2, 0x3

    #@aa
    aput v1, v0, v2

    #@ac
    .line 397
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@ae
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@b0
    add-int/lit8 v1, v1, 0x8

    #@b2
    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    #@b5
    move-result v1

    #@b6
    const/4 v2, 0x4

    #@b7
    aput v1, v0, v2

    #@b9
    .line 399
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    #@bb
    const/16 v1, 0xd

    #@bd
    if-ne v0, v1, :cond_2

    #@bf
    .line 400
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@c1
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    #@c3
    add-int/lit8 v1, v1, 0xa

    #@c5
    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    #@c8
    move-result v1

    #@c9
    const/4 v2, 0x5

    #@ca
    aput v1, v0, v2

    #@cc
    .line 357
    :cond_2
    return-void

    #@cd
    .line 391
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@cf
    aget v1, v0, v2

    #@d1
    add-int/lit16 v1, v1, 0x7d0

    #@d3
    aput v1, v0, v2

    #@d5
    goto :goto_0

    #@d6
    .line 404
    :cond_4
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    #@d8
    const/16 v1, 0x37

    #@da
    if-ne v0, v1, :cond_5

    #@dc
    .line 405
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@de
    const-string/jumbo v1, "Decoding constructed ASN.1 UTCTime type is not supported"

    #@e1
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    #@e4
    throw v0

    #@e5
    .line 407
    :cond_5
    const-string/jumbo v0, "UTCTime"

    #@e8
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    #@eb
    move-result-object v0

    #@ec
    throw v0

    #@ed
    .line 359
    nop

    #@ee
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final reset([B)V
    .locals 0
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    #@2
    .line 143
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    #@5
    .line 141
    return-void
.end method

.method public final setVerify()V
    .locals 1

    #@0
    .prologue
    .line 719
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    #@3
    .line 718
    return-void
.end method
