.class public Lsun/security/util/DerOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "DerOutputStream.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field private static lexOrder:Lsun/security/util/ByteArrayLexOrder;

.field private static tagOrder:Lsun/security/util/ByteArrayTagOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 359
    new-instance v0, Lsun/security/util/ByteArrayLexOrder;

    #@2
    invoke-direct {v0}, Lsun/security/util/ByteArrayLexOrder;-><init>()V

    #@5
    sput-object v0, Lsun/security/util/DerOutputStream;->lexOrder:Lsun/security/util/ByteArrayLexOrder;

    #@7
    .line 365
    new-instance v0, Lsun/security/util/ByteArrayTagOrder;

    #@9
    invoke-direct {v0}, Lsun/security/util/ByteArrayTagOrder;-><init>()V

    #@c
    sput-object v0, Lsun/security/util/DerOutputStream;->tagOrder:Lsun/security/util/ByteArrayTagOrder;

    #@e
    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    #@0
    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@3
    return-void
.end method

.method private putIntegerContents(I)V
    .locals 10
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x4

    #@1
    const/4 v8, -0x1

    #@2
    const/4 v7, 0x3

    #@3
    const/4 v6, 0x0

    #@4
    .line 189
    new-array v0, v9, [B

    #@6
    .line 190
    .local v0, "bytes":[B
    const/4 v3, 0x0

    #@7
    .line 194
    .local v3, "start":I
    and-int/lit16 v4, p1, 0xff

    #@9
    int-to-byte v4, v4

    #@a
    aput-byte v4, v0, v7

    #@c
    .line 195
    const v4, 0xff00

    #@f
    and-int/2addr v4, p1

    #@10
    ushr-int/lit8 v4, v4, 0x8

    #@12
    int-to-byte v4, v4

    #@13
    const/4 v5, 0x2

    #@14
    aput-byte v4, v0, v5

    #@16
    .line 196
    const/high16 v4, 0xff0000

    #@18
    and-int/2addr v4, p1

    #@19
    ushr-int/lit8 v4, v4, 0x10

    #@1b
    int-to-byte v4, v4

    #@1c
    const/4 v5, 0x1

    #@1d
    aput-byte v4, v0, v5

    #@1f
    .line 197
    const/high16 v4, -0x1000000

    #@21
    and-int/2addr v4, p1

    #@22
    ushr-int/lit8 v4, v4, 0x18

    #@24
    int-to-byte v4, v4

    #@25
    aput-byte v4, v0, v6

    #@27
    .line 202
    aget-byte v4, v0, v6

    #@29
    if-ne v4, v8, :cond_0

    #@2b
    .line 206
    const/4 v1, 0x0

    #@2c
    .local v1, "j":I
    :goto_0
    if-ge v1, v7, :cond_1

    #@2e
    .line 207
    aget-byte v4, v0, v1

    #@30
    if-ne v4, v8, :cond_1

    #@32
    .line 208
    add-int/lit8 v4, v1, 0x1

    #@34
    aget-byte v4, v0, v4

    #@36
    and-int/lit16 v4, v4, 0x80

    #@38
    const/16 v5, 0x80

    #@3a
    if-ne v4, v5, :cond_1

    #@3c
    .line 209
    add-int/lit8 v3, v3, 0x1

    #@3e
    .line 206
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 213
    .end local v1    # "j":I
    :cond_0
    aget-byte v4, v0, v6

    #@43
    if-nez v4, :cond_1

    #@45
    .line 217
    const/4 v1, 0x0

    #@46
    .restart local v1    # "j":I
    :goto_1
    if-ge v1, v7, :cond_1

    #@48
    .line 218
    aget-byte v4, v0, v1

    #@4a
    if-nez v4, :cond_1

    #@4c
    .line 219
    add-int/lit8 v4, v1, 0x1

    #@4e
    aget-byte v4, v0, v4

    #@50
    and-int/lit16 v4, v4, 0x80

    #@52
    if-nez v4, :cond_1

    #@54
    .line 220
    add-int/lit8 v3, v3, 0x1

    #@56
    .line 217
    add-int/lit8 v1, v1, 0x1

    #@58
    goto :goto_1

    #@59
    .line 226
    .end local v1    # "j":I
    :cond_1
    rsub-int/lit8 v4, v3, 0x4

    #@5b
    invoke-virtual {p0, v4}, Lsun/security/util/DerOutputStream;->putLength(I)V

    #@5e
    .line 227
    move v2, v3

    #@5f
    .local v2, "k":I
    :goto_2
    if-ge v2, v9, :cond_2

    #@61
    .line 228
    aget-byte v4, v0, v2

    #@63
    invoke-virtual {p0, v4}, Lsun/security/util/DerOutputStream;->write(I)V

    #@66
    .line 227
    add-int/lit8 v2, v2, 0x1

    #@68
    goto :goto_2

    #@69
    .line 187
    :cond_2
    return-void
.end method

.method private putOrderedSet(B[Lsun/security/util/DerEncoder;Ljava/util/Comparator;)V
    .locals 6
    .param p1, "tag"    # B
    .param p2, "set"    # [Lsun/security/util/DerEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B[",
            "Lsun/security/util/DerEncoder;",
            "Ljava/util/Comparator",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 375
    .local p3, "order":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    array-length v4, p2

    #@1
    new-array v3, v4, [Lsun/security/util/DerOutputStream;

    #@3
    .line 377
    .local v3, "streams":[Lsun/security/util/DerOutputStream;
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    :goto_0
    array-length v4, p2

    #@5
    if-ge v2, v4, :cond_0

    #@7
    .line 378
    new-instance v4, Lsun/security/util/DerOutputStream;

    #@9
    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    #@c
    aput-object v4, v3, v2

    #@e
    .line 379
    aget-object v4, p2, v2

    #@10
    aget-object v5, v3, v2

    #@12
    invoke-interface {v4, v5}, Lsun/security/util/DerEncoder;->derEncode(Ljava/io/OutputStream;)V

    #@15
    .line 377
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 383
    :cond_0
    array-length v4, v3

    #@19
    new-array v0, v4, [[B

    #@1b
    .line 384
    .local v0, "bufs":[[B
    const/4 v2, 0x0

    #@1c
    :goto_1
    array-length v4, v3

    #@1d
    if-ge v2, v4, :cond_1

    #@1f
    .line 385
    aget-object v4, v3, v2

    #@21
    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@24
    move-result-object v4

    #@25
    aput-object v4, v0, v2

    #@27
    .line 384
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 387
    :cond_1
    invoke-static {v0, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@2d
    .line 389
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@2f
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@32
    .line 390
    .local v1, "bytes":Lsun/security/util/DerOutputStream;
    const/4 v2, 0x0

    #@33
    :goto_2
    array-length v4, v3

    #@34
    if-ge v2, v4, :cond_2

    #@36
    .line 391
    aget-object v4, v0, v2

    #@38
    invoke-virtual {v1, v4}, Lsun/security/util/DerOutputStream;->write([B)V

    #@3b
    .line 390
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_2

    #@3e
    .line 393
    :cond_2
    invoke-virtual {p0, p1, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@41
    .line 374
    return-void
.end method

.method private putTime(Ljava/util/Date;B)V
    .locals 6
    .param p1, "d"    # Ljava/util/Date;
    .param p2, "tag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 493
    const-string/jumbo v4, "GMT"

    #@3
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@6
    move-result-object v3

    #@7
    .line 494
    .local v3, "tz":Ljava/util/TimeZone;
    const/4 v0, 0x0

    #@8
    .line 496
    .local v0, "pattern":Ljava/lang/String;
    const/16 v4, 0x17

    #@a
    if-ne p2, v4, :cond_0

    #@c
    .line 497
    const-string/jumbo v0, "yyMMddHHmmss\'Z\'"

    #@f
    .line 503
    .end local p2    # "tag":B
    .local v0, "pattern":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    #@11
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@13
    invoke-direct {v1, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@16
    .line 504
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@19
    .line 505
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    const-string/jumbo v5, "ISO-8859-1"

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@23
    move-result-object v2

    #@24
    .line 511
    .local v2, "time":[B
    invoke-virtual {p0, p2}, Lsun/security/util/DerOutputStream;->write(I)V

    #@27
    .line 512
    array-length v4, v2

    #@28
    invoke-virtual {p0, v4}, Lsun/security/util/DerOutputStream;->putLength(I)V

    #@2b
    .line 513
    invoke-virtual {p0, v2}, Lsun/security/util/DerOutputStream;->write([B)V

    #@2e
    .line 487
    return-void

    #@2f
    .line 499
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v2    # "time":[B
    .local v0, "pattern":Ljava/lang/String;
    .restart local p2    # "tag":B
    :cond_0
    const/16 p2, 0x18

    #@31
    .line 500
    .local p2, "tag":B
    const-string/jumbo v0, "yyyyMMddHHmmss\'Z\'"

    #@34
    .local v0, "pattern":Ljava/lang/String;
    goto :goto_0
.end method

.method private writeString(Ljava/lang/String;BLjava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stringTag"    # B
    .param p3, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 454
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    .line 455
    .local v0, "data":[B
    invoke-virtual {p0, p2}, Lsun/security/util/DerOutputStream;->write(I)V

    #@7
    .line 456
    array-length v1, v0

    #@8
    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->putLength(I)V

    #@b
    .line 457
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write([B)V

    #@e
    .line 452
    return-void
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 574
    invoke-virtual {p0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@7
    .line 573
    return-void
.end method

.method public putBMPString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 433
    const-string/jumbo v0, "UnicodeBigUnmarked"

    #@3
    const/16 v1, 0x1e

    #@5
    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    #@8
    .line 432
    return-void
.end method

.method public putBitString([B)V
    .locals 1
    .param p1, "bits"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@4
    .line 239
    array-length v0, p1

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    #@a
    .line 240
    const/4 v0, 0x0

    #@b
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@e
    .line 241
    invoke-virtual {p0, p1}, Lsun/security/util/DerOutputStream;->write([B)V

    #@11
    .line 237
    return-void
.end method

.method public putBoolean(Z)V
    .locals 1
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 140
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@4
    .line 141
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    #@7
    .line 142
    if-eqz p1, :cond_0

    #@9
    .line 143
    const/16 v0, 0xff

    #@b
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@e
    .line 139
    :goto_0
    return-void

    #@f
    .line 145
    :cond_0
    const/4 v0, 0x0

    #@10
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@13
    goto :goto_0
.end method

.method public putDerValue(Lsun/security/util/DerValue;)V
    .locals 0
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-virtual {p1, p0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    #@3
    .line 124
    return-void
.end method

.method public putEnumerated(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    const/16 v0, 0xa

    #@2
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@5
    .line 155
    invoke-direct {p0, p1}, Lsun/security/util/DerOutputStream;->putIntegerContents(I)V

    #@8
    .line 153
    return-void
.end method

.method public putGeneralString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    const-string/jumbo v0, "ASCII"

    #@3
    const/16 v1, 0x1b

    #@5
    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    #@8
    .line 439
    return-void
.end method

.method public putGeneralizedTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "d"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 477
    const/16 v0, 0x18

    #@2
    invoke-direct {p0, p1, v0}, Lsun/security/util/DerOutputStream;->putTime(Ljava/util/Date;B)V

    #@5
    .line 476
    return-void
.end method

.method public putIA5String(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 426
    const-string/jumbo v0, "ASCII"

    #@3
    const/16 v1, 0x16

    #@5
    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    #@8
    .line 425
    return-void
.end method

.method public putInteger(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@4
    .line 184
    invoke-direct {p0, p1}, Lsun/security/util/DerOutputStream;->putIntegerContents(I)V

    #@7
    .line 182
    return-void
.end method

.method public putInteger(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "i"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    #@7
    .line 174
    return-void
.end method

.method public putInteger(Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "i"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    const/4 v1, 0x2

    #@1
    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    #@4
    .line 165
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    #@7
    move-result-object v0

    #@8
    .line 166
    .local v0, "buf":[B
    array-length v1, v0

    #@9
    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->putLength(I)V

    #@c
    .line 167
    array-length v1, v0

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {p0, v0, v2, v1}, Lsun/security/util/DerOutputStream;->write([BII)V

    #@11
    .line 163
    return-void
.end method

.method public putLength(I)V
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 523
    const/16 v0, 0x80

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 524
    int-to-byte v0, p1

    #@5
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@8
    .line 522
    :goto_0
    return-void

    #@9
    .line 526
    :cond_0
    const/16 v0, 0x100

    #@b
    if-ge p1, v0, :cond_1

    #@d
    .line 527
    const/16 v0, -0x7f

    #@f
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@12
    .line 528
    int-to-byte v0, p1

    #@13
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@16
    goto :goto_0

    #@17
    .line 530
    :cond_1
    const/high16 v0, 0x10000

    #@19
    if-ge p1, v0, :cond_2

    #@1b
    .line 531
    const/16 v0, -0x7e

    #@1d
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@20
    .line 532
    shr-int/lit8 v0, p1, 0x8

    #@22
    int-to-byte v0, v0

    #@23
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@26
    .line 533
    int-to-byte v0, p1

    #@27
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@2a
    goto :goto_0

    #@2b
    .line 535
    :cond_2
    const/high16 v0, 0x1000000

    #@2d
    if-ge p1, v0, :cond_3

    #@2f
    .line 536
    const/16 v0, -0x7d

    #@31
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@34
    .line 537
    shr-int/lit8 v0, p1, 0x10

    #@36
    int-to-byte v0, v0

    #@37
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@3a
    .line 538
    shr-int/lit8 v0, p1, 0x8

    #@3c
    int-to-byte v0, v0

    #@3d
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@40
    .line 539
    int-to-byte v0, p1

    #@41
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@44
    goto :goto_0

    #@45
    .line 542
    :cond_3
    const/16 v0, -0x7c

    #@47
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@4a
    .line 543
    shr-int/lit8 v0, p1, 0x18

    #@4c
    int-to-byte v0, v0

    #@4d
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@50
    .line 544
    shr-int/lit8 v0, p1, 0x10

    #@52
    int-to-byte v0, v0

    #@53
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@56
    .line 545
    shr-int/lit8 v0, p1, 0x8

    #@58
    int-to-byte v0, v0

    #@59
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@5c
    .line 546
    int-to-byte v0, p1

    #@5d
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@60
    goto :goto_0
.end method

.method public putNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 283
    const/4 v0, 0x5

    #@1
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@4
    .line 284
    const/4 v0, 0x0

    #@5
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    #@8
    .line 282
    return-void
.end method

.method public putOID(Lsun/security/util/ObjectIdentifier;)V
    .locals 0
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 292
    invoke-virtual {p1, p0}, Lsun/security/util/ObjectIdentifier;->encode(Lsun/security/util/DerOutputStream;)V

    #@3
    .line 291
    return-void
.end method

.method public putOctetString([B)V
    .locals 1
    .param p1, "octets"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 275
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0, p1}, Lsun/security/util/DerOutputStream;->write(B[B)V

    #@4
    .line 274
    return-void
.end method

.method public putOrderedSet(B[Lsun/security/util/DerEncoder;)V
    .locals 1
    .param p1, "tag"    # B
    .param p2, "set"    # [Lsun/security/util/DerEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 352
    sget-object v0, Lsun/security/util/DerOutputStream;->tagOrder:Lsun/security/util/ByteArrayTagOrder;

    #@2
    invoke-direct {p0, p1, p2, v0}, Lsun/security/util/DerOutputStream;->putOrderedSet(B[Lsun/security/util/DerEncoder;Ljava/util/Comparator;)V

    #@5
    .line 351
    return-void
.end method

.method public putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V
    .locals 1
    .param p1, "tag"    # B
    .param p2, "set"    # [Lsun/security/util/DerEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    sget-object v0, Lsun/security/util/DerOutputStream;->lexOrder:Lsun/security/util/ByteArrayLexOrder;

    #@2
    invoke-direct {p0, p1, p2, v0}, Lsun/security/util/DerOutputStream;->putOrderedSet(B[Lsun/security/util/DerEncoder;Ljava/util/Comparator;)V

    #@5
    .line 337
    return-void
.end method

.method public putPrintableString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 408
    const-string/jumbo v0, "ASCII"

    #@3
    const/16 v1, 0x13

    #@5
    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    #@8
    .line 407
    return-void
.end method

.method public putSequence([Lsun/security/util/DerValue;)V
    .locals 3
    .param p1, "seq"    # [Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 301
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 304
    .local v0, "bytes":Lsun/security/util/DerOutputStream;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@7
    if-ge v1, v2, :cond_0

    #@9
    .line 305
    aget-object v2, p1, v1

    #@b
    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    #@e
    .line 304
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 307
    :cond_0
    const/16 v2, 0x30

    #@13
    invoke-virtual {p0, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@16
    .line 300
    return-void
.end method

.method public putSet([Lsun/security/util/DerValue;)V
    .locals 3
    .param p1, "set"    # [Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 321
    .local v0, "bytes":Lsun/security/util/DerOutputStream;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@7
    if-ge v1, v2, :cond_0

    #@9
    .line 322
    aget-object v2, p1, v1

    #@b
    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    #@e
    .line 321
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 324
    :cond_0
    const/16 v2, 0x31

    #@13
    invoke-virtual {p0, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@16
    .line 317
    return-void
.end method

.method public putT61String(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 419
    const-string/jumbo v0, "ISO-8859-1"

    #@3
    const/16 v1, 0x14

    #@5
    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    #@8
    .line 414
    return-void
.end method

.method public putTag(BZB)V
    .locals 2
    .param p1, "tagClass"    # B
    .param p2, "form"    # Z
    .param p3, "val"    # B

    #@0
    .prologue
    .line 560
    or-int v1, p1, p3

    #@2
    int-to-byte v0, v1

    #@3
    .line 561
    .local v0, "tag":B
    if-eqz p2, :cond_0

    #@5
    .line 562
    or-int/lit8 v1, v0, 0x20

    #@7
    int-to-byte v0, v1

    #@8
    .line 564
    :cond_0
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write(I)V

    #@b
    .line 559
    return-void
.end method

.method public putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V
    .locals 1
    .param p1, "ba"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    invoke-virtual {p1}, Lsun/security/util/BitArray;->truncate()Lsun/security/util/BitArray;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putUnalignedBitString(Lsun/security/util/BitArray;)V

    #@7
    .line 265
    return-void
.end method

.method public putUTCTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "d"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 467
    const/16 v0, 0x17

    #@2
    invoke-direct {p0, p1, v0}, Lsun/security/util/DerOutputStream;->putTime(Ljava/util/Date;B)V

    #@5
    .line 466
    return-void
.end method

.method public putUTF8String(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 401
    const-string/jumbo v0, "UTF8"

    #@3
    const/16 v1, 0xc

    #@5
    invoke-direct {p0, p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeString(Ljava/lang/String;BLjava/lang/String;)V

    #@8
    .line 400
    return-void
.end method

.method public putUnalignedBitString(Lsun/security/util/BitArray;)V
    .locals 3
    .param p1, "ba"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 251
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toByteArray()[B

    #@3
    move-result-object v0

    #@4
    .line 253
    .local v0, "bits":[B
    const/4 v1, 0x3

    #@5
    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    #@8
    .line 254
    array-length v1, v0

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->putLength(I)V

    #@e
    .line 255
    array-length v1, v0

    #@f
    mul-int/lit8 v1, v1, 0x8

    #@11
    invoke-virtual {p1}, Lsun/security/util/BitArray;->length()I

    #@14
    move-result v2

    #@15
    sub-int/2addr v1, v2

    #@16
    invoke-virtual {p0, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    #@19
    .line 256
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->write([B)V

    #@1c
    .line 250
    return-void
.end method

.method public write(BLsun/security/util/DerOutputStream;)V
    .locals 3
    .param p1, "tag"    # B
    .param p2, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lsun/security/util/DerOutputStream;->write(I)V

    #@3
    .line 94
    iget v0, p2, Lsun/security/util/DerOutputStream;->count:I

    #@5
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    #@8
    .line 95
    iget-object v0, p2, Lsun/security/util/DerOutputStream;->buf:[B

    #@a
    iget v1, p2, Lsun/security/util/DerOutputStream;->count:I

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {p0, v0, v2, v1}, Lsun/security/util/DerOutputStream;->write([BII)V

    #@10
    .line 92
    return-void
.end method

.method public write(B[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lsun/security/util/DerOutputStream;->write(I)V

    #@3
    .line 79
    array-length v0, p2

    #@4
    invoke-virtual {p0, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    #@7
    .line 80
    array-length v0, p2

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {p0, p2, v1, v0}, Lsun/security/util/DerOutputStream;->write([BII)V

    #@c
    .line 77
    return-void
.end method

.method public writeImplicit(BLsun/security/util/DerOutputStream;)V
    .locals 3
    .param p1, "tag"    # B
    .param p2, "value"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lsun/security/util/DerOutputStream;->write(I)V

    #@3
    .line 118
    iget-object v0, p2, Lsun/security/util/DerOutputStream;->buf:[B

    #@5
    iget v1, p2, Lsun/security/util/DerOutputStream;->count:I

    #@7
    add-int/lit8 v1, v1, -0x1

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {p0, v0, v2, v1}, Lsun/security/util/DerOutputStream;->write([BII)V

    #@d
    .line 116
    return-void
.end method
