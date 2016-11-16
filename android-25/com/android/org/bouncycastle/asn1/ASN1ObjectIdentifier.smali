.class public Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ObjectIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    }
.end annotation


# static fields
.field private static final LONG_LIMIT:J = 0xffffffffffff80L

.field private static final pool:Ljava/util/Map;


# instance fields
.field private body:[B

.field private final identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 452
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/Map;

    #@7
    .line 14
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "branchID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 201
    const/4 v0, 0x0

    #@4
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 203
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
    .line 206
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
    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 175
    if-nez p1, :cond_0

    #@5
    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "\'identifier\' cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 179
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 181
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
    .line 189
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@3b
    .line 173
    return-void
.end method

.method constructor <init>([B)V
    .locals 10
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 87
    new-instance v4, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    .line 88
    .local v4, "objId":Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x0

    #@a
    .line 89
    .local v6, "value":J
    const/4 v1, 0x0

    #@b
    .line 90
    .local v1, "bigValue":Ljava/math/BigInteger;
    const/4 v2, 0x1

    #@c
    .line 92
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
    .line 94
    aget-byte v5, p1, v3

    #@12
    and-int/lit16 v0, v5, 0xff

    #@14
    .line 96
    .local v0, "b":I
    const-wide v8, 0xffffffffffff80L

    #@19
    cmp-long v5, v6, v8

    #@1b
    if-gtz v5, :cond_4

    #@1d
    .line 98
    and-int/lit8 v5, v0, 0x7f

    #@1f
    int-to-long v8, v5

    #@20
    add-long/2addr v6, v8

    #@21
    .line 99
    and-int/lit16 v5, v0, 0x80

    #@23
    if-nez v5, :cond_3

    #@25
    .line 101
    if-eqz v2, :cond_0

    #@27
    .line 103
    const-wide/16 v8, 0x28

    #@29
    cmp-long v5, v6, v8

    #@2b
    if-gez v5, :cond_1

    #@2d
    .line 105
    const/16 v5, 0x30

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@32
    .line 117
    :goto_1
    const/4 v2, 0x0

    #@33
    .line 120
    :cond_0
    const/16 v5, 0x2e

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@38
    .line 121
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@3b
    .line 122
    const-wide/16 v6, 0x0

    #@3d
    .line 92
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 107
    :cond_1
    const-wide/16 v8, 0x50

    #@42
    cmp-long v5, v6, v8

    #@44
    if-gez v5, :cond_2

    #@46
    .line 109
    const/16 v5, 0x31

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4b
    .line 110
    const-wide/16 v8, 0x28

    #@4d
    sub-long/2addr v6, v8

    #@4e
    goto :goto_1

    #@4f
    .line 114
    :cond_2
    const/16 v5, 0x32

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@54
    .line 115
    const-wide/16 v8, 0x50

    #@56
    sub-long/2addr v6, v8

    #@57
    goto :goto_1

    #@58
    .line 126
    :cond_3
    const/4 v5, 0x7

    #@59
    shl-long/2addr v6, v5

    #@5a
    goto :goto_2

    #@5b
    .line 131
    :cond_4
    if-nez v1, :cond_5

    #@5d
    .line 133
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@60
    move-result-object v1

    #@61
    .line 135
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
    .line 136
    .local v1, "bigValue":Ljava/math/BigInteger;
    and-int/lit16 v5, v0, 0x80

    #@6e
    if-nez v5, :cond_7

    #@70
    .line 138
    if-eqz v2, :cond_6

    #@72
    .line 140
    const/16 v5, 0x32

    #@74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@77
    .line 141
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
    .line 142
    const/4 v2, 0x0

    #@82
    .line 145
    :cond_6
    const/16 v5, 0x2e

    #@84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@87
    .line 146
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@8a
    .line 147
    const/4 v1, 0x0

    #@8b
    .line 148
    .local v1, "bigValue":Ljava/math/BigInteger;
    const-wide/16 v6, 0x0

    #@8d
    goto :goto_2

    #@8e
    .line 152
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
    .line 162
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
    .line 164
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@a1
    move-result-object v5

    #@a2
    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B

    #@a4
    .line 85
    return-void
.end method

.method private doOutput(Ljava/io/ByteArrayOutputStream;)V
    .locals 9
    .param p1, "aOut"    # Ljava/io/ByteArrayOutputStream;

    #@0
    .prologue
    const/16 v8, 0x12

    #@2
    .line 282
    new-instance v2, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;

    #@4
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@6
    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    #@9
    .line 283
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
    .line 285
    .local v0, "first":I
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 286
    .local v1, "secondToken":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1a
    move-result v4

    #@1b
    if-gt v4, v8, :cond_0

    #@1d
    .line 288
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
    .line 295
    :goto_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_2

    #@2c
    .line 297
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    .line 298
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@33
    move-result v4

    #@34
    if-gt v4, v8, :cond_1

    #@36
    .line 300
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@39
    move-result-wide v4

    #@3a
    invoke-direct {p0, p1, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    #@3d
    goto :goto_0

    #@3e
    .line 292
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
    .line 304
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
    .line 280
    .end local v3    # "token":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 4
    .param p0, "enc"    # [B

    #@0
    .prologue
    .line 483
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    #@2
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;-><init>([B)V

    #@5
    .line 485
    .local v0, "hdl":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    sget-object v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/Map;

    #@7
    monitor-enter v3

    #@8
    .line 487
    :try_start_0
    sget-object v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/Map;

    #@a
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 488
    .local v1, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v1, :cond_0

    #@12
    monitor-exit v3

    #@13
    .line 490
    return-object v1

    #@14
    :cond_0
    monitor-exit v3

    #@15
    .line 494
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    #@1a
    return-object v2

    #@1b
    .line 485
    .end local v1    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit v3

    #@1d
    throw v2
.end method

.method private declared-synchronized getBody()[B
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B

    #@3
    if-nez v1, :cond_0

    #@5
    .line 313
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@7
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@a
    .line 315
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    #@d
    .line 317
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B

    #@13
    .line 320
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

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    .line 72
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    #@6
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 74
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 78
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
    .line 30
    if-eqz p0, :cond_0

    #@2
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 32
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 35
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
    .line 37
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
    .line 40
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, [B

    #@23
    if-eqz v2, :cond_3

    #@25
    move-object v1, p0

    #@26
    .line 42
    check-cast v1, [B

    #@28
    .line 45
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
    .line 48
    :catch_0
    move-exception v0

    #@30
    .line 49
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
    .line 53
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
    .line 376
    const/4 v1, 0x0

    #@2
    .line 378
    .local v1, "periodAllowed":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    .line 379
    .local v2, "pos":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    #@8
    if-lt v2, p1, :cond_3

    #@a
    .line 381
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    .line 384
    .local v0, "ch":C
    const/16 v3, 0x30

    #@10
    if-gt v3, v0, :cond_0

    #@12
    const/16 v3, 0x39

    #@14
    if-gt v0, v3, :cond_0

    #@16
    .line 386
    const/4 v1, 0x1

    #@17
    .line 387
    goto :goto_0

    #@18
    .line 390
    :cond_0
    const/16 v3, 0x2e

    #@1a
    if-ne v0, v3, :cond_2

    #@1c
    .line 392
    if-nez v1, :cond_1

    #@1e
    .line 394
    return v4

    #@1f
    .line 397
    :cond_1
    const/4 v1, 0x0

    #@20
    .line 398
    goto :goto_0

    #@21
    .line 401
    :cond_2
    return v4

    #@22
    .line 404
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
    .line 410
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
    .line 412
    :cond_0
    return v3

    #@12
    .line 415
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    .line 416
    .local v0, "first":C
    const/16 v1, 0x30

    #@18
    if-lt v0, v1, :cond_2

    #@1a
    const/16 v1, 0x32

    #@1c
    if-le v0, v1, :cond_3

    #@1e
    .line 418
    :cond_2
    return v3

    #@1f
    .line 421
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
    .line 246
    const/16 v2, 0x9

    #@2
    new-array v1, v2, [B

    #@4
    .line 247
    .local v1, "result":[B
    const/16 v0, 0x8

    #@6
    .line 248
    .local v0, "pos":I
    long-to-int v2, p2

    #@7
    and-int/lit8 v2, v2, 0x7f

    #@9
    int-to-byte v2, v2

    #@a
    aput-byte v2, v1, v0

    #@c
    .line 249
    :goto_0
    const-wide/16 v2, 0x80

    #@e
    cmp-long v2, p2, v2

    #@10
    if-ltz v2, :cond_0

    #@12
    .line 251
    const/4 v2, 0x7

    #@13
    shr-long/2addr p2, v2

    #@14
    .line 252
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
    .line 254
    :cond_0
    rsub-int/lit8 v2, v0, 0x9

    #@21
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@24
    .line 244
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
    .line 261
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    #@4
    move-result v4

    #@5
    add-int/lit8 v4, v4, 0x6

    #@7
    div-int/lit8 v0, v4, 0x7

    #@9
    .line 262
    .local v0, "byteCount":I
    if-nez v0, :cond_0

    #@b
    .line 264
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@e
    .line 259
    :goto_0
    return-void

    #@f
    .line 268
    :cond_0
    move-object v3, p2

    #@10
    .line 269
    .local v3, "tmpValue":Ljava/math/BigInteger;
    new-array v2, v0, [B

    #@12
    .line 270
    .local v2, "tmp":[B
    add-int/lit8 v1, v0, -0x1

    #@14
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    #@16
    .line 272
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
    .line 273
    const/4 v4, 0x7

    #@22
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@25
    move-result-object v3

    #@26
    .line 270
    add-int/lit8 v1, v1, -0x1

    #@28
    goto :goto_1

    #@29
    .line 275
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
    .line 276
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
    .line 355
    if-ne p1, p0, :cond_0

    #@2
    .line 357
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 360
    :cond_0
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 362
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 365
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@c
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    .end local p1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p1, "branchID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 227
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
    .line 340
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    #@3
    move-result-object v0

    #@4
    .line 342
    .local v0, "enc":[B
    const/4 v1, 0x6

    #@5
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@8
    .line 343
    array-length v1, v0

    #@9
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    #@c
    .line 344
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([B)V

    #@f
    .line 338
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
    .line 331
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    #@3
    move-result-object v1

    #@4
    array-length v0, v1

    #@5
    .line 333
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

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 4

    #@0
    .prologue
    .line 435
    sget-object v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/Map;

    #@2
    monitor-enter v3

    #@3
    .line 437
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    #@5
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    #@8
    move-result-object v2

    #@9
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;-><init>([B)V

    #@c
    .line 438
    .local v0, "hdl":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    sget-object v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/Map;

    #@e
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 440
    .local v1, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v1, :cond_0

    #@16
    monitor-exit v3

    #@17
    .line 442
    return-object v1

    #@18
    .line 446
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/Map;

    #@1a
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit v3

    #@1e
    .line 447
    return-object p0

    #@1f
    .line 435
    .end local v0    # "hdl":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    .end local v1    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 325
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public on(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 4
    .param p1, "stem"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 239
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
    .line 370
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
