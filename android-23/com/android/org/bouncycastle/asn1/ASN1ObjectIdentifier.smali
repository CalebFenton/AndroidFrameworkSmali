.class public Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ObjectIdentifier.java"


# static fields
.field private static final LONG_LIMIT:J = 0xffffffffffff80L

.field private static cache:[[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private body:[B

.field identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 417
    const/16 v0, 0x100

    #@2
    new-array v0, v0, [[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    .line 12
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "branchID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 199
    const/4 v0, 0x0

    #@4
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "string "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, " not a valid OID branch"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    const-string/jumbo v1, "."

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@49
    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 173
    if-nez p1, :cond_0

    #@5
    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "\'identifier\' cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 177
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "string "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, " not an OID"

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 187
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@3b
    .line 171
    return-void
.end method

.method constructor <init>([B)V
    .locals 10
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 85
    new-instance v4, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    .line 86
    .local v4, "objId":Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x0

    #@a
    .line 87
    .local v6, "value":J
    const/4 v1, 0x0

    #@b
    .line 88
    .local v1, "bigValue":Ljava/math/BigInteger;
    const/4 v2, 0x1

    #@c
    .line 90
    .local v2, "first":Z
    const/4 v3, 0x0

    #@d
    .end local v1    # "bigValue":Ljava/math/BigInteger;
    .local v3, "i":I
    :goto_0
    array-length v5, p1

    #@e
    if-eq v3, v5, :cond_8

    #@10
    .line 92
    aget-byte v5, p1, v3

    #@12
    and-int/lit16 v0, v5, 0xff

    #@14
    .line 94
    .local v0, "b":I
    const-wide v8, 0xffffffffffff80L

    #@19
    cmp-long v5, v6, v8

    #@1b
    if-gtz v5, :cond_4

    #@1d
    .line 96
    and-int/lit8 v5, v0, 0x7f

    #@1f
    int-to-long v8, v5

    #@20
    add-long/2addr v6, v8

    #@21
    .line 97
    and-int/lit16 v5, v0, 0x80

    #@23
    if-nez v5, :cond_3

    #@25
    .line 99
    if-eqz v2, :cond_0

    #@27
    .line 101
    const-wide/16 v8, 0x28

    #@29
    cmp-long v5, v6, v8

    #@2b
    if-gez v5, :cond_1

    #@2d
    .line 103
    const/16 v5, 0x30

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@32
    .line 115
    :goto_1
    const/4 v2, 0x0

    #@33
    .line 118
    :cond_0
    const/16 v5, 0x2e

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@38
    .line 119
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@3b
    .line 120
    const-wide/16 v6, 0x0

    #@3d
    .line 90
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 105
    :cond_1
    const-wide/16 v8, 0x50

    #@42
    cmp-long v5, v6, v8

    #@44
    if-gez v5, :cond_2

    #@46
    .line 107
    const/16 v5, 0x31

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4b
    .line 108
    const-wide/16 v8, 0x28

    #@4d
    sub-long/2addr v6, v8

    #@4e
    goto :goto_1

    #@4f
    .line 112
    :cond_2
    const/16 v5, 0x32

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@54
    .line 113
    const-wide/16 v8, 0x50

    #@56
    sub-long/2addr v6, v8

    #@57
    goto :goto_1

    #@58
    .line 124
    :cond_3
    const/4 v5, 0x7

    #@59
    shl-long/2addr v6, v5

    #@5a
    goto :goto_2

    #@5b
    .line 129
    :cond_4
    if-nez v1, :cond_5

    #@5d
    .line 131
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@60
    move-result-object v1

    #@61
    .line 133
    :cond_5
    and-int/lit8 v5, v0, 0x7f

    #@63
    int-to-long v8, v5

    #@64
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@6b
    move-result-object v1

    #@6c
    .line 134
    .local v1, "bigValue":Ljava/math/BigInteger;
    and-int/lit16 v5, v0, 0x80

    #@6e
    if-nez v5, :cond_7

    #@70
    .line 136
    if-eqz v2, :cond_6

    #@72
    .line 138
    const/16 v5, 0x32

    #@74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@77
    .line 139
    const-wide/16 v8, 0x50

    #@79
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@80
    move-result-object v1

    #@81
    .line 140
    const/4 v2, 0x0

    #@82
    .line 143
    :cond_6
    const/16 v5, 0x2e

    #@84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@87
    .line 144
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@8a
    .line 145
    const/4 v1, 0x0

    #@8b
    .line 146
    .local v1, "bigValue":Ljava/math/BigInteger;
    const-wide/16 v6, 0x0

    #@8d
    goto :goto_2

    #@8e
    .line 150
    .local v1, "bigValue":Ljava/math/BigInteger;
    :cond_7
    const/4 v5, 0x7

    #@8f
    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@92
    move-result-object v1

    #@93
    goto :goto_2

    #@94
    .line 160
    .end local v0    # "b":I
    .end local v1    # "bigValue":Ljava/math/BigInteger;
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@9e
    .line 162
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@a1
    move-result-object v5

    #@a2
    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B

    #@a4
    .line 83
    return-void
.end method

.method private doOutput(Ljava/io/ByteArrayOutputStream;)V
    .locals 9
    .param p1, "aOut"    # Ljava/io/ByteArrayOutputStream;

    #@0
    .prologue
    const/16 v8, 0x12

    #@2
    .line 280
    new-instance v2, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;

    #@4
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@6
    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    #@9
    .line 281
    .local v2, "tok":Lcom/android/org/bouncycastle/asn1/OIDTokenizer;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10
    move-result v4

    #@11
    mul-int/lit8 v0, v4, 0x28

    #@13
    .line 283
    .local v0, "first":I
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 284
    .local v1, "secondToken":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1a
    move-result v4

    #@1b
    if-gt v4, v8, :cond_0

    #@1d
    .line 286
    int-to-long v4, v0

    #@1e
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@21
    move-result-wide v6

    #@22
    add-long/2addr v4, v6

    #@23
    invoke-direct {p0, p1, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    #@26
    .line 293
    :goto_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_2

    #@2c
    .line 295
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    .line 296
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@33
    move-result v4

    #@34
    if-gt v4, v8, :cond_1

    #@36
    .line 298
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@39
    move-result-wide v4

    #@3a
    invoke-direct {p0, p1, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    #@3d
    goto :goto_0

    #@3e
    .line 290
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/math/BigInteger;

    #@40
    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@43
    int-to-long v6, v0

    #@44
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4b
    move-result-object v4

    #@4c
    invoke-direct {p0, p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    #@4f
    goto :goto_0

    #@50
    .line 302
    .restart local v3    # "token":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/math/BigInteger;

    #@52
    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@55
    invoke-direct {p0, p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    #@58
    goto :goto_0

    #@59
    .line 278
    .end local v3    # "token":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 6
    .param p0, "enc"    # [B

    #@0
    .prologue
    .line 421
    array-length v4, p0

    #@1
    const/4 v5, 0x3

    #@2
    if-ge v4, v5, :cond_0

    #@4
    .line 423
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    invoke-direct {v4, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    #@9
    return-object v4

    #@a
    .line 426
    :cond_0
    array-length v4, p0

    #@b
    add-int/lit8 v4, v4, -0x2

    #@d
    aget-byte v4, p0, v4

    #@f
    and-int/lit16 v1, v4, 0xff

    #@11
    .line 428
    .local v1, "idx1":I
    array-length v4, p0

    #@12
    add-int/lit8 v4, v4, -0x1

    #@14
    aget-byte v4, p0, v4

    #@16
    and-int/lit8 v2, v4, 0x7f

    #@18
    .line 432
    .local v2, "idx2":I
    sget-object v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a
    monitor-enter v5

    #@1b
    .line 434
    :try_start_0
    sget-object v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d
    aget-object v0, v4, v1

    #@1f
    .line 435
    .local v0, "first":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_1

    #@21
    .line 437
    const/16 v4, 0x80

    #@23
    new-array v0, v4, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@25
    .end local v0    # "first":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@27
    aput-object v0, v4, v1

    #@29
    .line 440
    .restart local v0    # "first":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    aget-object v3, v0, v2

    #@2b
    .line 441
    .local v3, "possibleMatch":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v3, :cond_2

    #@2d
    .line 443
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2f
    invoke-direct {v4, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    #@32
    aput-object v4, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    monitor-exit v5

    #@35
    return-object v4

    #@36
    .line 446
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    #@39
    move-result-object v4

    #@3a
    invoke-static {p0, v4}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_3

    #@40
    monitor-exit v5

    #@41
    .line 448
    return-object v3

    #@42
    .line 451
    :cond_3
    add-int/lit8 v4, v1, 0x1

    #@44
    and-int/lit16 v1, v4, 0xff

    #@46
    .line 452
    :try_start_2
    sget-object v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48
    aget-object v0, v4, v1

    #@4a
    .line 453
    if-nez v0, :cond_4

    #@4c
    .line 455
    const/16 v4, 0x80

    #@4e
    new-array v0, v4, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@50
    .end local v0    # "first":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->cache:[[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@52
    aput-object v0, v4, v1

    #@54
    .line 458
    .restart local v0    # "first":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_4
    aget-object v3, v0, v2

    #@56
    .line 459
    if-nez v3, :cond_5

    #@58
    .line 461
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5a
    invoke-direct {v4, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    #@5d
    aput-object v4, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    monitor-exit v5

    #@60
    return-object v4

    #@61
    .line 464
    :cond_5
    :try_start_3
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    #@64
    move-result-object v4

    #@65
    invoke-static {p0, v4}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@68
    move-result v4

    #@69
    if-eqz v4, :cond_6

    #@6b
    monitor-exit v5

    #@6c
    .line 466
    return-object v3

    #@6d
    .line 469
    :cond_6
    add-int/lit8 v4, v2, 0x1

    #@6f
    and-int/lit8 v2, v4, 0x7f

    #@71
    .line 470
    :try_start_4
    aget-object v3, v0, v2

    #@73
    .line 471
    if-nez v3, :cond_7

    #@75
    .line 473
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@77
    invoke-direct {v4, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    #@7a
    aput-object v4, v0, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7c
    monitor-exit v5

    #@7d
    return-object v4

    #@7e
    :cond_7
    monitor-exit v5

    #@7f
    .line 477
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    #@82
    move-result-object v4

    #@83
    invoke-static {p0, v4}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@86
    move-result v4

    #@87
    if-eqz v4, :cond_8

    #@89
    .line 479
    return-object v3

    #@8a
    .line 432
    .end local v0    # "first":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "possibleMatch":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catchall_0
    move-exception v4

    #@8b
    monitor-exit v5

    #@8c
    throw v4

    #@8d
    .line 482
    .restart local v0    # "first":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v3    # "possibleMatch":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_8
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8f
    invoke-direct {v4, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    #@92
    return-object v4
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    .line 70
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    #@6
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 72
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 28
    if-eqz p0, :cond_0

    #@2
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 30
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 33
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@b
    if-eqz v2, :cond_2

    #@d
    move-object v2, p0

    #@e
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@13
    move-result-object v2

    #@14
    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    if-eqz v2, :cond_2

    #@18
    .line 35
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1a
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    return-object v2

    #@21
    .line 38
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, [B

    #@23
    if-eqz v2, :cond_3

    #@25
    move-object v1, p0

    #@26
    .line 40
    check-cast v1, [B

    #@28
    .line 43
    .local v1, "enc":[B
    :try_start_0
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    return-object v2

    #@2f
    .line 46
    :catch_0
    move-exception v0

    #@30
    .line 47
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@32
    new-instance v3, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v4, "failed to construct object identifier from byte[]: "

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v2

    #@4e
    .line 51
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "enc":[B
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@50
    new-instance v3, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v4, "illegal object in getInstance: "

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v2
.end method

.method private static isValidBranchID(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "branchID"    # Ljava/lang/String;
    .param p1, "start"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 369
    const/4 v1, 0x0

    #@2
    .line 371
    .local v1, "periodAllowed":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    .line 372
    .local v2, "pos":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    #@8
    if-lt v2, p1, :cond_3

    #@a
    .line 374
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    .line 377
    .local v0, "ch":C
    const/16 v3, 0x30

    #@10
    if-gt v3, v0, :cond_0

    #@12
    const/16 v3, 0x39

    #@14
    if-gt v0, v3, :cond_0

    #@16
    .line 379
    const/4 v1, 0x1

    #@17
    .line 380
    goto :goto_0

    #@18
    .line 383
    :cond_0
    const/16 v3, 0x2e

    #@1a
    if-ne v0, v3, :cond_2

    #@1c
    .line 385
    if-nez v1, :cond_1

    #@1e
    .line 387
    return v4

    #@1f
    .line 390
    :cond_1
    const/4 v1, 0x0

    #@20
    .line 391
    goto :goto_0

    #@21
    .line 394
    :cond_2
    return v4

    #@22
    .line 397
    .end local v0    # "ch":C
    :cond_3
    return v1
.end method

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .locals 4
    .param p0, "identifier"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 403
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x3

    #@6
    if-lt v1, v2, :cond_0

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v1

    #@d
    const/16 v2, 0x2e

    #@f
    if-eq v1, v2, :cond_1

    #@11
    .line 405
    :cond_0
    return v3

    #@12
    .line 408
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    .line 409
    .local v0, "first":C
    const/16 v1, 0x30

    #@18
    if-lt v0, v1, :cond_2

    #@1a
    const/16 v1, 0x32

    #@1c
    if-le v0, v1, :cond_3

    #@1e
    .line 411
    :cond_2
    return v3

    #@1f
    .line 414
    :cond_3
    const/4 v1, 0x2

    #@20
    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    #@23
    move-result v1

    #@24
    return v1
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;J)V
    .locals 4
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "fieldValue"    # J

    #@0
    .prologue
    .line 244
    const/16 v2, 0x9

    #@2
    new-array v1, v2, [B

    #@4
    .line 245
    .local v1, "result":[B
    const/16 v0, 0x8

    #@6
    .line 246
    .local v0, "pos":I
    long-to-int v2, p2

    #@7
    and-int/lit8 v2, v2, 0x7f

    #@9
    int-to-byte v2, v2

    #@a
    aput-byte v2, v1, v0

    #@c
    .line 247
    :goto_0
    const-wide/16 v2, 0x80

    #@e
    cmp-long v2, p2, v2

    #@10
    if-ltz v2, :cond_0

    #@12
    .line 249
    const/4 v2, 0x7

    #@13
    shr-long/2addr p2, v2

    #@14
    .line 250
    add-int/lit8 v0, v0, -0x1

    #@16
    long-to-int v2, p2

    #@17
    and-int/lit8 v2, v2, 0x7f

    #@19
    or-int/lit16 v2, v2, 0x80

    #@1b
    int-to-byte v2, v2

    #@1c
    aput-byte v2, v1, v0

    #@1e
    goto :goto_0

    #@1f
    .line 252
    :cond_0
    rsub-int/lit8 v2, v0, 0x9

    #@21
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@24
    .line 242
    return-void
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .locals 7
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "fieldValue"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 259
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    #@4
    move-result v4

    #@5
    add-int/lit8 v4, v4, 0x6

    #@7
    div-int/lit8 v0, v4, 0x7

    #@9
    .line 260
    .local v0, "byteCount":I
    if-nez v0, :cond_0

    #@b
    .line 262
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@e
    .line 257
    :goto_0
    return-void

    #@f
    .line 266
    :cond_0
    move-object v3, p2

    #@10
    .line 267
    .local v3, "tmpValue":Ljava/math/BigInteger;
    new-array v2, v0, [B

    #@12
    .line 268
    .local v2, "tmp":[B
    add-int/lit8 v1, v0, -0x1

    #@14
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    #@16
    .line 270
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    #@19
    move-result v4

    #@1a
    and-int/lit8 v4, v4, 0x7f

    #@1c
    or-int/lit16 v4, v4, 0x80

    #@1e
    int-to-byte v4, v4

    #@1f
    aput-byte v4, v2, v1

    #@21
    .line 271
    const/4 v4, 0x7

    #@22
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@25
    move-result-object v3

    #@26
    .line 268
    add-int/lit8 v1, v1, -0x1

    #@28
    goto :goto_1

    #@29
    .line 273
    :cond_1
    add-int/lit8 v4, v0, -0x1

    #@2b
    aget-byte v5, v2, v4

    #@2d
    and-int/lit8 v5, v5, 0x7f

    #@2f
    int-to-byte v5, v5

    #@30
    aput-byte v5, v2, v4

    #@32
    .line 274
    array-length v4, v2

    #@33
    invoke-virtual {p1, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@36
    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 2
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 353
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 355
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .end local p1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p1, "branchID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 225
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    #@3
    move-result-object v0

    #@4
    .line 340
    .local v0, "enc":[B
    const/4 v1, 0x6

    #@5
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@8
    .line 341
    array-length v1, v0

    #@9
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    #@c
    .line 342
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([B)V

    #@f
    .line 336
    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    #@3
    move-result-object v1

    #@4
    array-length v0, v1

    #@5
    .line 331
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@8
    move-result v1

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    add-int/2addr v1, v0

    #@c
    return v1
.end method

.method protected declared-synchronized getBody()[B
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B

    #@3
    if-nez v1, :cond_0

    #@5
    .line 311
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@7
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@a
    .line 313
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    #@d
    .line 315
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B

    #@13
    .line 318
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    return-object v1

    #@17
    :catchall_0
    move-exception v1

    #@18
    monitor-exit p0

    #@19
    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 323
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public on(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 4
    .param p1, "stem"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 237
    .local v1, "stemId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@f
    move-result v3

    #@10
    if-le v2, v3, :cond_0

    #@12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@15
    move-result v2

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v2

    #@1a
    const/16 v3, 0x2e

    #@1c
    if-ne v2, v3, :cond_0

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@21
    move-result v2

    #@22
    :goto_0
    return v2

    #@23
    :cond_0
    const/4 v2, 0x0

    #@24
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
