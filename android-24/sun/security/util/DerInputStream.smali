.class public Lsun/security/util/DerInputStream;
.super Ljava/lang/Object;
.source "DerInputStream.java"


# instance fields
.field buffer:Lsun/security/util/DerInputBuffer;

.field public tag:B


# direct methods
.method constructor <init>(Lsun/security/util/DerInputBuffer;)V
    .locals 2
    .param p1, "buf"    # Lsun/security/util/DerInputBuffer;

    #@0
    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 118
    iput-object p1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@5
    .line 119
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@7
    const v1, 0x7fffffff

    #@a
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->mark(I)V

    #@d
    .line 117
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    array-length v0, p1

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerInputStream;->init([BII)V

    #@8
    .line 79
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lsun/security/util/DerInputStream;->init([BII)V

    #@6
    .line 94
    return-void
.end method

.method static getLength(ILjava/io/InputStream;)I
    .locals 5
    .param p0, "lenByte"    # I
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    move v0, p0

    #@1
    .line 587
    .local v0, "tmp":I
    and-int/lit16 v2, p0, 0x80

    #@3
    if-nez v2, :cond_1

    #@5
    .line 588
    move v1, p0

    #@6
    .line 612
    .local v1, "value":I
    :cond_0
    return v1

    #@7
    .line 590
    .end local v1    # "value":I
    :cond_1
    and-int/lit8 v0, p0, 0x7f

    #@9
    .line 596
    if-nez v0, :cond_2

    #@b
    .line 597
    const/4 v2, -0x1

    #@c
    return v2

    #@d
    .line 598
    :cond_2
    if-ltz v0, :cond_3

    #@f
    const/4 v2, 0x4

    #@10
    if-le v0, v2, :cond_5

    #@12
    .line 599
    :cond_3
    new-instance v3, Ljava/io/IOException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "DerInputStream.getLength(): lengthTag="

    #@1c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 600
    const-string/jumbo v4, ", "

    #@27
    .line 599
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    .line 601
    if-gez v0, :cond_4

    #@2d
    const-string/jumbo v2, "incorrect DER encoding."

    #@30
    .line 599
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v3

    #@3c
    .line 601
    :cond_4
    const-string/jumbo v2, "too big."

    #@3f
    goto :goto_0

    #@40
    .line 603
    :cond_5
    const/4 v1, 0x0

    #@41
    .restart local v1    # "value":I
    :goto_1
    if-lez v0, :cond_6

    #@43
    .line 604
    shl-int/lit8 v1, v1, 0x8

    #@45
    .line 605
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@48
    move-result v2

    #@49
    and-int/lit16 v2, v2, 0xff

    #@4b
    add-int/2addr v1, v2

    #@4c
    .line 603
    add-int/lit8 v0, v0, -0x1

    #@4e
    goto :goto_1

    #@4f
    .line 607
    :cond_6
    if-gez v1, :cond_0

    #@51
    .line 608
    new-instance v2, Ljava/io/IOException;

    #@53
    const-string/jumbo v3, "DerInputStream.getLength(): Invalid length bytes"

    #@56
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@59
    throw v2
.end method

.method static getLength(Ljava/io/InputStream;)I
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 573
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p0}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private init([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    add-int/lit8 v2, p2, 0x2

    #@2
    array-length v3, p1

    #@3
    if-gt v2, v3, :cond_0

    #@5
    add-int v2, p2, p3

    #@7
    array-length v3, p1

    #@8
    if-le v2, v3, :cond_1

    #@a
    .line 103
    :cond_0
    new-instance v2, Ljava/io/IOException;

    #@c
    const-string/jumbo v3, "Encoding bytes too short"

    #@f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 106
    :cond_1
    add-int/lit8 v2, p2, 0x1

    #@15
    aget-byte v2, p1, v2

    #@17
    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 107
    new-array v1, p3, [B

    #@1f
    .line 108
    .local v1, "inData":[B
    const/4 v2, 0x0

    #@20
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@23
    .line 110
    new-instance v0, Lsun/security/util/DerIndefLenConverter;

    #@25
    invoke-direct {v0}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    #@28
    .line 111
    .local v0, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v2, Lsun/security/util/DerInputBuffer;

    #@2a
    invoke-virtual {v0, v1}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    #@2d
    move-result-object v3

    #@2e
    invoke-direct {v2, v3}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    #@31
    iput-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@33
    .line 114
    .end local v0    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v1    # "inData":[B
    :goto_0
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@35
    const v3, 0x7fffffff

    #@38
    invoke-virtual {v2, v3}, Lsun/security/util/DerInputBuffer;->mark(I)V

    #@3b
    .line 101
    return-void

    #@3c
    .line 113
    :cond_2
    new-instance v2, Lsun/security/util/DerInputBuffer;

    #@3e
    invoke-direct {v2, p1, p2, p3}, Lsun/security/util/DerInputBuffer;-><init>([BII)V

    #@41
    iput-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@43
    goto :goto_0
.end method

.method private readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "stringTag"    # B
    .param p2, "stringName"    # Ljava/lang/String;
    .param p3, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 517
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v2}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v2

    #@6
    if-eq v2, p1, :cond_0

    #@8
    .line 518
    new-instance v2, Ljava/io/IOException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "DER input not a "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    .line 519
    const-string/jumbo v4, " string"

    #@1d
    .line 518
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 521
    :cond_0
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2b
    invoke-static {v2}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@2e
    move-result v0

    #@2f
    .line 522
    .local v0, "length":I
    new-array v1, v0, [B

    #@31
    .line 523
    .local v1, "retval":[B
    if-eqz v0, :cond_1

    #@33
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@35
    invoke-virtual {v2, v1}, Lsun/security/util/DerInputBuffer;->read([B)I

    #@38
    move-result v2

    #@39
    if-eq v2, v0, :cond_1

    #@3b
    .line 524
    new-instance v2, Ljava/io/IOException;

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "short read of DER "

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    .line 525
    const-string/jumbo v4, " string"

    #@50
    .line 524
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v2

    #@5c
    .line 527
    :cond_1
    new-instance v2, Ljava/lang/String;

    #@5e
    invoke-direct {v2, v1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@61
    return-object v2
.end method


# virtual methods
.method public available()I
    .locals 1

    #@0
    .prologue
    .line 635
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->available()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBMPString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 494
    const-string/jumbo v0, "BMP"

    #@3
    .line 495
    const-string/jumbo v1, "UnicodeBigUnmarked"

    #@6
    .line 494
    const/16 v2, 0x1e

    #@8
    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x2

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 180
    new-instance v0, Ljava/io/IOException;

    #@b
    const-string/jumbo v1, "DER input, Integer tag error"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 182
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@14
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@16
    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@19
    move-result v1

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public getBitString()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x3

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 217
    new-instance v0, Ljava/io/IOException;

    #@b
    const-string/jumbo v1, "DER input not an bit string"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 219
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@14
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@16
    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getBitString(I)[B

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method getByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 553
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v0

    #@6
    and-int/lit16 v0, v0, 0xff

    #@8
    return v0
.end method

.method public getBytes([B)V
    .locals 2
    .param p1, "val"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    array-length v0, p1

    #@1
    if-eqz v0, :cond_0

    #@3
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@5
    invoke-virtual {v0, p1}, Lsun/security/util/DerInputBuffer;->read([B)I

    #@8
    move-result v0

    #@9
    array-length v1, p1

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 265
    new-instance v0, Ljava/io/IOException;

    #@e
    const-string/jumbo v1, "short read of DER octet string"

    #@11
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 263
    :cond_0
    return-void
.end method

.method public getDerValue()Lsun/security/util/DerValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 455
    new-instance v0, Lsun/security/util/DerValue;

    #@2
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@4
    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    #@7
    return-object v0
.end method

.method public getEnumerated()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0xa

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 206
    new-instance v0, Ljava/io/IOException;

    #@c
    const-string/jumbo v1, "DER input, Enumerated tag error"

    #@f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 208
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@15
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@17
    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method public getGeneralString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 502
    const-string/jumbo v0, "General"

    #@3
    .line 503
    const-string/jumbo v1, "ASCII"

    #@6
    .line 502
    const/16 v2, 0x1b

    #@8
    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getGeneralizedTime()Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 543
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x18

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 544
    new-instance v0, Ljava/io/IOException;

    #@c
    const-string/jumbo v1, "DER input, GeneralizedTime tag invalid "

    #@f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 545
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@15
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@17
    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getGeneralizedTime(I)Ljava/util/Date;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public getIA5String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    const-string/jumbo v0, "IA5"

    #@3
    const-string/jumbo v1, "ASCII"

    #@6
    const/16 v2, 0x16

    #@8
    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getInteger()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x2

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 168
    new-instance v0, Ljava/io/IOException;

    #@b
    const-string/jumbo v1, "DER input, Integer tag error"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 170
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@14
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@16
    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method getLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 562
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-static {v0}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x5

    #@7
    if-ne v0, v1, :cond_0

    #@9
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@b
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 274
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@13
    const-string/jumbo v1, "getNull, bad data"

    #@16
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 272
    :cond_1
    return-void
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 281
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {v0, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Lsun/security/util/DerInputStream;)V

    #@5
    return-object v0
.end method

.method public getOctetString()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v2}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v2

    #@6
    const/4 v3, 0x4

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 250
    new-instance v2, Ljava/io/IOException;

    #@b
    const-string/jumbo v3, "DER input not an octet string"

    #@e
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 252
    :cond_0
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@14
    invoke-static {v2}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@17
    move-result v0

    #@18
    .line 253
    .local v0, "length":I
    new-array v1, v0, [B

    #@1a
    .line 254
    .local v1, "retval":[B
    if-eqz v0, :cond_1

    #@1c
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@1e
    invoke-virtual {v2, v1}, Lsun/security/util/DerInputBuffer;->read([B)I

    #@21
    move-result v2

    #@22
    if-eq v2, v0, :cond_1

    #@24
    .line 255
    new-instance v2, Ljava/io/IOException;

    #@26
    const-string/jumbo v3, "short read of DER octet string"

    #@29
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 257
    :cond_1
    return-object v1
.end method

.method public getPositiveBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x2

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 194
    new-instance v0, Ljava/io/IOException;

    #@b
    const-string/jumbo v1, "DER input, Integer tag error"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 196
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@14
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@16
    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@19
    move-result v1

    #@1a
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public getPrintableString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 469
    const-string/jumbo v0, "Printable"

    #@3
    .line 470
    const-string/jumbo v1, "ASCII"

    #@6
    .line 469
    const/16 v2, 0x13

    #@8
    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getSequence(I)[Lsun/security/util/DerValue;
    .locals 1
    .param p1, "startLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 315
    const/4 v0, 0x0

    #@1
    .line 313
    invoke-virtual {p0, p1, v0}, Lsun/security/util/DerInputStream;->getSequence(IZ)[Lsun/security/util/DerValue;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getSequence(IZ)[Lsun/security/util/DerValue;
    .locals 2
    .param p1, "startLen"    # I
    .param p2, "originalEncodedFormRetained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v0

    #@6
    int-to-byte v0, v0

    #@7
    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    #@9
    .line 297
    iget-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    #@b
    const/16 v1, 0x30

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 298
    new-instance v0, Ljava/io/IOException;

    #@11
    const-string/jumbo v1, "Sequence tag error"

    #@14
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 299
    :cond_0
    invoke-virtual {p0, p1, p2}, Lsun/security/util/DerInputStream;->readVector(IZ)[Lsun/security/util/DerValue;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public getSet(I)[Lsun/security/util/DerValue;
    .locals 2
    .param p1, "startLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v0

    #@6
    int-to-byte v0, v0

    #@7
    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    #@9
    .line 330
    iget-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    #@b
    const/16 v1, 0x31

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 331
    new-instance v0, Ljava/io/IOException;

    #@11
    const-string/jumbo v1, "Set tag error"

    #@14
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 332
    :cond_0
    invoke-virtual {p0, p1}, Lsun/security/util/DerInputStream;->readVector(I)[Lsun/security/util/DerValue;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public getSet(IZ)[Lsun/security/util/DerValue;
    .locals 1
    .param p1, "startLen"    # I
    .param p2, "implicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 351
    const/4 v0, 0x0

    #@1
    .line 348
    invoke-virtual {p0, p1, p2, v0}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getSet(IZZ)[Lsun/security/util/DerValue;
    .locals 2
    .param p1, "startLen"    # I
    .param p2, "implicit"    # Z
    .param p3, "originalEncodedFormRetained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v0

    #@6
    int-to-byte v0, v0

    #@7
    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    #@9
    .line 358
    if-nez p2, :cond_0

    #@b
    .line 359
    iget-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    #@d
    const/16 v1, 0x31

    #@f
    if-eq v0, v1, :cond_0

    #@11
    .line 360
    new-instance v0, Ljava/io/IOException;

    #@13
    const-string/jumbo v1, "Set tag error"

    #@16
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 363
    :cond_0
    invoke-virtual {p0, p1, p3}, Lsun/security/util/DerInputStream;->readVector(IZ)[Lsun/security/util/DerValue;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public getT61String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 480
    const-string/jumbo v0, "T61"

    #@3
    const-string/jumbo v1, "ISO-8859-1"

    #@6
    const/16 v2, 0x14

    #@8
    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getUTCTime()Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 534
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x17

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 535
    new-instance v0, Ljava/io/IOException;

    #@c
    const-string/jumbo v1, "DER input, UTCtime tag invalid "

    #@f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 536
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@15
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@17
    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getUTCTime(I)Ljava/util/Date;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public getUTF8String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 462
    const-string/jumbo v0, "UTF-8"

    #@3
    const-string/jumbo v1, "UTF8"

    #@6
    const/16 v2, 0xc

    #@8
    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getUnalignedBitString()Lsun/security/util/BitArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    iget-object v3, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v3}, Lsun/security/util/DerInputBuffer;->read()I

    #@5
    move-result v3

    #@6
    const/4 v4, 0x3

    #@7
    if-eq v3, v4, :cond_0

    #@9
    .line 228
    new-instance v3, Ljava/io/IOException;

    #@b
    const-string/jumbo v4, "DER input not a bit string"

    #@e
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v3

    #@12
    .line 230
    :cond_0
    iget-object v3, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@14
    invoke-static {v3}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@17
    move-result v3

    #@18
    add-int/lit8 v0, v3, -0x1

    #@1a
    .line 236
    .local v0, "length":I
    mul-int/lit8 v3, v0, 0x8

    #@1c
    iget-object v4, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@1e
    invoke-virtual {v4}, Lsun/security/util/DerInputBuffer;->read()I

    #@21
    move-result v4

    #@22
    sub-int v2, v3, v4

    #@24
    .line 238
    .local v2, "validBits":I
    new-array v1, v0, [B

    #@26
    .line 240
    .local v1, "repn":[B
    if-eqz v0, :cond_1

    #@28
    iget-object v3, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2a
    invoke-virtual {v3, v1}, Lsun/security/util/DerInputBuffer;->read([B)I

    #@2d
    move-result v3

    #@2e
    if-eq v3, v0, :cond_1

    #@30
    .line 241
    new-instance v3, Ljava/io/IOException;

    #@32
    const-string/jumbo v4, "short read of DER bit string"

    #@35
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3

    #@39
    .line 242
    :cond_1
    new-instance v3, Lsun/security/util/BitArray;

    #@3b
    invoke-direct {v3, v2, v1}, Lsun/security/util/BitArray;-><init>(I[B)V

    #@3e
    return-object v3
.end method

.method public mark(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 619
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0, p1}, Lsun/security/util/DerInputBuffer;->mark(I)V

    #@5
    return-void
.end method

.method public peekByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 557
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->peek()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected readVector(I)[Lsun/security/util/DerValue;
    .locals 1
    .param p1, "startLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 374
    const/4 v0, 0x0

    #@1
    .line 372
    invoke-virtual {p0, p1, v0}, Lsun/security/util/DerInputStream;->readVector(IZ)[Lsun/security/util/DerValue;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method protected readVector(IZ)[Lsun/security/util/DerValue;
    .locals 16
    .param p1, "startLen"    # I
    .param p2, "originalEncodedFormRetained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 386
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@4
    invoke-virtual {v14}, Lsun/security/util/DerInputBuffer;->read()I

    #@7
    move-result v14

    #@8
    int-to-byte v6, v14

    #@9
    .line 387
    .local v6, "lenByte":B
    and-int/lit16 v14, v6, 0xff

    #@b
    move-object/from16 v0, p0

    #@d
    iget-object v15, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@f
    invoke-static {v14, v15}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    #@12
    move-result v5

    #@13
    .line 389
    .local v5, "len":I
    const/4 v14, -0x1

    #@14
    if-ne v5, v14, :cond_1

    #@16
    .line 391
    move-object/from16 v0, p0

    #@18
    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@1a
    invoke-virtual {v14}, Lsun/security/util/DerInputBuffer;->available()I

    #@1d
    move-result v10

    #@1e
    .line 392
    .local v10, "readLen":I
    const/4 v9, 0x2

    #@1f
    .line 393
    .local v9, "offset":I
    add-int/lit8 v14, v10, 0x2

    #@21
    new-array v4, v14, [B

    #@23
    .line 394
    .local v4, "indefData":[B
    move-object/from16 v0, p0

    #@25
    iget-byte v14, v0, Lsun/security/util/DerInputStream;->tag:B

    #@27
    const/4 v15, 0x0

    #@28
    aput-byte v14, v4, v15

    #@2a
    .line 395
    const/4 v14, 0x1

    #@2b
    aput-byte v6, v4, v14

    #@2d
    .line 396
    new-instance v2, Ljava/io/DataInputStream;

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@33
    invoke-direct {v2, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@36
    .line 397
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v2, v4, v9, v10}, Ljava/io/DataInputStream;->readFully([BII)V

    #@39
    .line 398
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    #@3c
    .line 399
    new-instance v1, Lsun/security/util/DerIndefLenConverter;

    #@3e
    invoke-direct {v1}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    #@41
    .line 400
    .local v1, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v14, Lsun/security/util/DerInputBuffer;

    #@43
    invoke-virtual {v1, v4}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    #@46
    move-result-object v15

    #@47
    invoke-direct {v14, v15}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    #@4a
    move-object/from16 v0, p0

    #@4c
    iput-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@4e
    .line 401
    move-object/from16 v0, p0

    #@50
    iget-byte v14, v0, Lsun/security/util/DerInputStream;->tag:B

    #@52
    move-object/from16 v0, p0

    #@54
    iget-object v15, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@56
    invoke-virtual {v15}, Lsun/security/util/DerInputBuffer;->read()I

    #@59
    move-result v15

    #@5a
    if-eq v14, v15, :cond_0

    #@5c
    .line 402
    new-instance v14, Ljava/io/IOException;

    #@5e
    const-string/jumbo v15, "Indefinite length encoding not supported"

    #@61
    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@64
    throw v14

    #@65
    .line 404
    :cond_0
    move-object/from16 v0, p0

    #@67
    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@69
    invoke-static {v14}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    #@6c
    move-result v5

    #@6d
    .line 407
    .end local v1    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "indefData":[B
    .end local v9    # "offset":I
    .end local v10    # "readLen":I
    :cond_1
    if-nez v5, :cond_2

    #@6f
    .line 410
    const/4 v14, 0x0

    #@70
    new-array v14, v14, [Lsun/security/util/DerValue;

    #@72
    return-object v14

    #@73
    .line 416
    :cond_2
    move-object/from16 v0, p0

    #@75
    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@77
    invoke-virtual {v14}, Lsun/security/util/DerInputBuffer;->available()I

    #@7a
    move-result v14

    #@7b
    if-ne v14, v5, :cond_4

    #@7d
    .line 417
    move-object/from16 v8, p0

    #@7f
    .line 424
    .local v8, "newstr":Lsun/security/util/DerInputStream;
    :goto_0
    new-instance v13, Ljava/util/Vector;

    #@81
    move/from16 v0, p1

    #@83
    invoke-direct {v13, v0}, Ljava/util/Vector;-><init>(I)V

    #@86
    .line 428
    .local v13, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/DerValue;>;"
    :cond_3
    new-instance v12, Lsun/security/util/DerValue;

    #@88
    iget-object v14, v8, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@8a
    move/from16 v0, p2

    #@8c
    invoke-direct {v12, v14, v0}, Lsun/security/util/DerValue;-><init>(Lsun/security/util/DerInputBuffer;Z)V

    #@8f
    .line 429
    .local v12, "value":Lsun/security/util/DerValue;
    invoke-virtual {v13, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@92
    .line 430
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->available()I

    #@95
    move-result v14

    #@96
    if-gtz v14, :cond_3

    #@98
    .line 432
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->available()I

    #@9b
    move-result v14

    #@9c
    if-eqz v14, :cond_5

    #@9e
    .line 433
    new-instance v14, Ljava/io/IOException;

    #@a0
    const-string/jumbo v15, "extra data at end of vector"

    #@a3
    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v14

    #@a7
    .line 419
    .end local v8    # "newstr":Lsun/security/util/DerInputStream;
    .end local v12    # "value":Lsun/security/util/DerValue;
    .end local v13    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/DerValue;>;"
    :cond_4
    const/4 v14, 0x1

    #@a8
    move-object/from16 v0, p0

    #@aa
    invoke-virtual {v0, v5, v14}, Lsun/security/util/DerInputStream;->subStream(IZ)Lsun/security/util/DerInputStream;

    #@ad
    move-result-object v8

    #@ae
    .restart local v8    # "newstr":Lsun/security/util/DerInputStream;
    goto :goto_0

    #@af
    .line 438
    .restart local v12    # "value":Lsun/security/util/DerValue;
    .restart local v13    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/DerValue;>;"
    :cond_5
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    #@b2
    move-result v7

    #@b3
    .line 439
    .local v7, "max":I
    new-array v11, v7, [Lsun/security/util/DerValue;

    #@b5
    .line 441
    .local v11, "retval":[Lsun/security/util/DerValue;
    const/4 v3, 0x0

    #@b6
    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_6

    #@b8
    .line 442
    invoke-virtual {v13, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@bb
    move-result-object v14

    #@bc
    check-cast v14, Lsun/security/util/DerValue;

    #@be
    aput-object v14, v11, v3

    #@c0
    .line 441
    add-int/lit8 v3, v3, 0x1

    #@c2
    goto :goto_1

    #@c3
    .line 444
    :cond_6
    return-object v11
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 627
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->reset()V

    #@5
    return-void
.end method

.method public subStream(IZ)Lsun/security/util/DerInputStream;
    .locals 4
    .param p1, "len"    # I
    .param p2, "do_skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v1}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    #@5
    move-result-object v0

    #@6
    .line 136
    .local v0, "newbuf":Lsun/security/util/DerInputBuffer;
    invoke-virtual {v0, p1}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    #@9
    .line 137
    if-eqz p2, :cond_0

    #@b
    .line 138
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@d
    int-to-long v2, p1

    #@e
    invoke-virtual {v1, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    #@11
    .line 140
    :cond_0
    new-instance v1, Lsun/security/util/DerInputStream;

    #@13
    invoke-direct {v1, v0}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    #@16
    return-object v1
.end method

.method public toByteArray()[B
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    #@2
    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->toByteArray()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
