.class public Lsun/security/util/DerInputStream;
.super Ljava/lang/Object;
.source "DerInputStream.java"


# instance fields
.field greylist-max-o buffer:Lsun/security/util/DerInputBuffer;

.field public greylist tag:B


# direct methods
.method constructor greylist-max-o <init>(Lsun/security/util/DerInputBuffer;)V
    .registers 4
    .param p1, "buf"    # Lsun/security/util/DerInputBuffer;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    .line 144
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->mark(I)V

    .line 145
    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lsun/security/util/DerInputStream;->init([BIIZ)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/util/DerInputStream;->init([BIIZ)V

    .line 96
    return-void
.end method

.method public constructor blacklist <init>([BIIZ)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "allowIndefiniteLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/security/util/DerInputStream;->init([BIIZ)V

    .line 116
    return-void
.end method

.method static greylist-max-o getLength(ILjava/io/InputStream;)I
    .registers 8
    .param p0, "lenByte"    # I
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    const/4 v0, -0x1

    if-eq p0, v0, :cond_b1

    .line 630
    const-string v1, "DerInputStream.getLength(): "

    .line 631
    .local v1, "mdName":Ljava/lang/String;
    move v2, p0

    .line 632
    .local v2, "tmp":I
    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_c

    .line 633
    move v0, v2

    .local v0, "value":I
    goto :goto_37

    .line 635
    .end local v0    # "value":I
    :cond_c
    and-int/lit8 v2, v2, 0x7f

    .line 641
    if-nez v2, :cond_11

    .line 642
    return v0

    .line 643
    :cond_11
    if-ltz v2, :cond_83

    const/4 v3, 0x4

    if-le v2, v3, :cond_17

    goto :goto_83

    .line 647
    :cond_17
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 648
    .local v3, "value":I
    add-int/2addr v2, v0

    .line 649
    if-eqz v3, :cond_6a

    move v0, v3

    .line 653
    .end local v3    # "value":I
    .restart local v0    # "value":I
    :goto_21
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "tmp":I
    .local v3, "tmp":I
    if-lez v2, :cond_30

    .line 654
    shl-int/lit8 v0, v0, 0x8

    .line 655
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    move v2, v3

    goto :goto_21

    .line 657
    :cond_30
    if-ltz v0, :cond_51

    .line 659
    const/16 v2, 0x7f

    if-le v0, v2, :cond_38

    move v2, v3

    .line 663
    .end local v3    # "tmp":I
    .restart local v2    # "tmp":I
    :goto_37
    return v0

    .line 660
    .end local v2    # "tmp":I
    .restart local v3    # "tmp":I
    :cond_38
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Should use short form for length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 658
    :cond_51
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Invalid length bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 651
    .end local v0    # "value":I
    .restart local v2    # "tmp":I
    .local v3, "value":I
    :cond_6a
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Redundant length bytes found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    .end local v3    # "value":I
    :cond_83
    :goto_83
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lengthTag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 645
    if-gez v2, :cond_a3

    const-string v4, "incorrect DER encoding."

    goto :goto_a5

    :cond_a3
    const-string v4, "too big."

    :goto_a5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    .end local v1    # "mdName":Ljava/lang/String;
    .end local v2    # "tmp":I
    :cond_b1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Short read of DER length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o getLength(Ljava/io/InputStream;)I
    .registers 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0, p0}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o init([BIIZ)V
    .registers 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "allowIndefiniteLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    add-int/lit8 v0, p2, 0x2

    array-length v1, p1

    if-gt v0, v1, :cond_45

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_45

    .line 127
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    invoke-static {v0}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 128
    if-eqz p4, :cond_2d

    .line 131
    new-array v0, p3, [B

    .line 132
    .local v0, "inData":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    new-instance v1, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v1}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 135
    .local v1, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v2, Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1, v0}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    .line 136
    .end local v0    # "inData":[B
    .end local v1    # "derIn":Lsun/security/util/DerIndefLenConverter;
    goto :goto_3c

    .line 129
    :cond_2d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Indefinite length BER encoding found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_35
    new-instance v0, Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lsun/security/util/DerInputBuffer;-><init>([BII)V

    iput-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    .line 139
    :goto_3c
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->mark(I)V

    .line 140
    return-void

    .line 124
    :cond_45
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encoding bytes too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "stringTag"    # B
    .param p2, "stringName"    # Ljava/lang/String;
    .param p3, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const-string v1, " string"

    if-ne v0, p1, :cond_40

    .line 562
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    .line 563
    .local v0, "length":I
    new-array v2, v0, [B

    .line 564
    .local v2, "retval":[B
    if-eqz v0, :cond_3a

    iget-object v3, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v3, v2}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v3

    if-ne v3, v0, :cond_1d

    goto :goto_3a

    .line 565
    :cond_1d
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Short read of DER "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 568
    :cond_3a
    :goto_3a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 559
    .end local v0    # "length":I
    .end local v2    # "retval":[B
    :cond_40
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DER input not a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist available()I
    .registers 2

    .line 686
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    return v0
.end method

.method public blacklist getBMPString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    const-string v0, "BMP"

    const-string v1, "UnicodeBigUnmarked"

    const/16 v2, 0x1e

    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getBigInteger()Ljava/math/BigInteger;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 207
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 205
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getBitString()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 244
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getBitString(I)[B

    move-result-object v0

    return-object v0

    .line 242
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input not an bit string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public blacklist getBytes([B)V
    .registers 4
    .param p1, "val"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    array-length v0, p1

    if-eqz v0, :cond_15

    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0, p1}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 299
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Short read of DER octet string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_15
    :goto_15
    return-void
.end method

.method public greylist getDerValue()Lsun/security/util/DerValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public blacklist getEnumerated()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_17

    .line 233
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0

    .line 231
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, Enumerated tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getGeneralString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    const-string v0, "General"

    const-string v1, "ASCII"

    const/16 v2, 0x1b

    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getGeneralizedTime()Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_17

    .line 586
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getGeneralizedTime(I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 585
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, GeneralizedTime tag invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getIA5String()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    const-string v0, "IA5"

    const-string v1, "ASCII"

    const/16 v2, 0x16

    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getInteger()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 195
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0

    .line 193
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public blacklist getNull()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    if-nez v0, :cond_12

    .line 309
    return-void

    .line 308
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getNull, bad data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getOID()Lsun/security/util/ObjectIdentifier;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Lsun/security/util/DerInputStream;)V

    return-object v0
.end method

.method public greylist getOctetString()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    .line 286
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    .line 287
    .local v0, "length":I
    new-array v1, v0, [B

    .line 288
    .local v1, "retval":[B
    if-eqz v0, :cond_24

    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2, v1}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_1c

    goto :goto_24

    .line 289
    :cond_1c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Short read of DER octet string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    :cond_24
    :goto_24
    return-object v1

    .line 284
    .end local v0    # "length":I
    .end local v1    # "retval":[B
    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input not an octet string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPositiveBigInteger()Ljava/math/BigInteger;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 221
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 219
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPrintableString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    const-string v0, "Printable"

    const-string v1, "ASCII"

    const/16 v2, 0x13

    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSequence(I)[Lsun/security/util/DerValue;
    .registers 3
    .param p1, "startLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/security/util/DerInputStream;->getSequence(IZ)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSequence(IZ)[Lsun/security/util/DerValue;
    .registers 5
    .param p1, "startLen"    # I
    .param p2, "originalEncodedFormRetained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    .line 332
    iget-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_14

    .line 334
    invoke-virtual {p0, p1, p2}, Lsun/security/util/DerInputStream;->readVector(IZ)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0

    .line 333
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Sequence tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getSet(I)[Lsun/security/util/DerValue;
    .registers 4
    .param p1, "startLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    .line 366
    iget-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_14

    .line 368
    invoke-virtual {p0, p1}, Lsun/security/util/DerInputStream;->readVector(I)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0

    .line 367
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Set tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getSet(IZ)[Lsun/security/util/DerValue;
    .registers 4
    .param p1, "startLen"    # I
    .param p2, "implicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSet(IZZ)[Lsun/security/util/DerValue;
    .registers 6
    .param p1, "startLen"    # I
    .param p2, "implicit"    # Z
    .param p3, "originalEncodedFormRetained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    .line 395
    if-nez p2, :cond_1a

    .line 396
    iget-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_12

    goto :goto_1a

    .line 397
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Set tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_1a
    :goto_1a
    invoke-virtual {p0, p1, p3}, Lsun/security/util/DerInputStream;->readVector(IZ)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getT61String()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    const-string v0, "T61"

    const-string v1, "ISO-8859-1"

    const/16 v2, 0x14

    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUTCTime()Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_17

    .line 577
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getUTCTime(I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 576
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input, UTCtime tag invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r getUTF8String()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    const-string v0, "UTF-8"

    const-string v1, "UTF8"

    const/16 v2, 0xc

    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnalignedBitString()Lsun/security/util/BitArray;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_49

    .line 255
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 261
    .local v0, "length":I
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v1

    .line 262
    .local v1, "excessBits":I
    if-ltz v1, :cond_41

    .line 265
    mul-int/lit8 v2, v0, 0x8

    sub-int/2addr v2, v1

    .line 266
    .local v2, "validBits":I
    if-ltz v2, :cond_39

    .line 270
    new-array v3, v0, [B

    .line 272
    .local v3, "repn":[B
    if-eqz v0, :cond_33

    iget-object v4, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v4, v3}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v4

    if-ne v4, v0, :cond_2b

    goto :goto_33

    .line 273
    :cond_2b
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Short read of DER bit string"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 276
    :cond_33
    :goto_33
    new-instance v4, Lsun/security/util/BitArray;

    invoke-direct {v4, v2, v3}, Lsun/security/util/BitArray;-><init>(I[B)V

    return-object v4

    .line 267
    .end local v3    # "repn":[B
    :cond_39
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Valid bits of bit string invalid"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    .end local v2    # "validBits":I
    :cond_41
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unused bits of bit string invalid"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    .end local v0    # "length":I
    .end local v1    # "excessBits":I
    :cond_49
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER input not a bit string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist mark(I)V
    .registers 3
    .param p1, "value"    # I

    .line 670
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0, p1}, Lsun/security/util/DerInputBuffer;->mark(I)V

    return-void
.end method

.method public greylist peekByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->peek()I

    move-result v0

    return v0
.end method

.method protected blacklist readVector(I)[Lsun/security/util/DerValue;
    .registers 3
    .param p1, "startLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/security/util/DerInputStream;->readVector(IZ)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist readVector(IZ)[Lsun/security/util/DerValue;
    .registers 14
    .param p1, "startLen"    # I
    .param p2, "originalEncodedFormRetained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 427
    .local v0, "lenByte":B
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v0, v1}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v1

    .line 429
    .local v1, "len":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_59

    .line 431
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v2

    .line 432
    .local v2, "readLen":I
    const/4 v5, 0x2

    .line 433
    .local v5, "offset":I
    add-int v6, v2, v5

    new-array v6, v6, [B

    .line 434
    .local v6, "indefData":[B
    iget-byte v7, p0, Lsun/security/util/DerInputStream;->tag:B

    aput-byte v7, v6, v3

    .line 435
    aput-byte v0, v6, v4

    .line 436
    new-instance v7, Ljava/io/DataInputStream;

    iget-object v8, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 437
    .local v7, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v7, v6, v5, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 438
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 439
    new-instance v8, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v8}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 440
    .local v8, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v9, Lsun/security/util/DerInputBuffer;

    invoke-virtual {v8, v6}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v9, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    .line 441
    iget-byte v9, p0, Lsun/security/util/DerInputStream;->tag:B

    iget-object v10, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v10}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v10

    if-ne v9, v10, :cond_51

    .line 444
    iget-object v9, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v9}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    goto :goto_59

    .line 442
    :cond_51
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Indefinite length encoding not supported"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 447
    .end local v2    # "readLen":I
    .end local v5    # "offset":I
    .end local v6    # "indefData":[B
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .end local v8    # "derIn":Lsun/security/util/DerIndefLenConverter;
    :cond_59
    :goto_59
    if-nez v1, :cond_5e

    .line 450
    new-array v2, v3, [Lsun/security/util/DerValue;

    return-object v2

    .line 456
    :cond_5e
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v2

    if-ne v2, v1, :cond_68

    .line 457
    move-object v2, p0

    .local v2, "newstr":Lsun/security/util/DerInputStream;
    goto :goto_6c

    .line 459
    .end local v2    # "newstr":Lsun/security/util/DerInputStream;
    :cond_68
    invoke-virtual {p0, v1, v4}, Lsun/security/util/DerInputStream;->subStream(IZ)Lsun/security/util/DerInputStream;

    move-result-object v2

    .line 464
    .restart local v2    # "newstr":Lsun/security/util/DerInputStream;
    :goto_6c
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, p1}, Ljava/util/Vector;-><init>(I)V

    .line 469
    .local v3, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/DerValue;>;"
    :cond_71
    new-instance v4, Lsun/security/util/DerValue;

    iget-object v5, v2, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v4, v5, p2}, Lsun/security/util/DerValue;-><init>(Lsun/security/util/DerInputBuffer;Z)V

    .line 470
    .local v4, "value":Lsun/security/util/DerValue;
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 471
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v5

    if-gtz v5, :cond_71

    .line 473
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v5

    if-nez v5, :cond_9c

    .line 479
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    .line 480
    .local v5, "max":I
    new-array v6, v5, [Lsun/security/util/DerValue;

    .line 482
    .local v6, "retval":[Lsun/security/util/DerValue;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8e
    if-ge v7, v5, :cond_9b

    .line 483
    invoke-virtual {v3, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/util/DerValue;

    aput-object v8, v6, v7

    .line 482
    add-int/lit8 v7, v7, 0x1

    goto :goto_8e

    .line 485
    :cond_9b
    return-object v6

    .line 474
    .end local v5    # "max":I
    .end local v6    # "retval":[Lsun/security/util/DerValue;
    .end local v7    # "i":I
    :cond_9c
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Extra data at end of vector"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public greylist reset()V
    .registers 2

    .line 678
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->reset()V

    return-void
.end method

.method public greylist subStream(IZ)Lsun/security/util/DerInputStream;
    .registers 7
    .param p1, "len"    # I
    .param p2, "do_skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v0

    .line 161
    .local v0, "newbuf":Lsun/security/util/DerInputBuffer;
    invoke-virtual {v0, p1}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    .line 162
    if-eqz p2, :cond_11

    .line 163
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 165
    :cond_11
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v1
.end method

.method public blacklist toByteArray()[B
    .registers 2

    .line 173
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
