.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ObjectIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    }
.end annotation


# static fields
.field private static final blacklist LONG_LIMIT:J = 0xffffffffffff80L

.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

.field private static final blacklist pool:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist contents:[B

.field private final blacklist identifier:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 19
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 6
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "branchID"    # Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 216
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->isValidIdentifier(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    .line 222
    return-void

    .line 218
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a valid OID branch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "identifier"    # Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 195
    if-eqz p1, :cond_32

    .line 199
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    .line 206
    return-void

    .line 201
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not an OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'identifier\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([BZ)V
    .registers 20
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 107
    array-length v2, v1

    if-eqz v2, :cond_a7

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v2, "objId":Ljava/lang/StringBuilder;
    const-wide/16 v3, 0x0

    .line 114
    .local v3, "value":J
    const/4 v5, 0x0

    .line 115
    .local v5, "bigValue":Ljava/math/BigInteger;
    const/4 v6, 0x1

    .line 117
    .local v6, "first":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_14
    array-length v8, v1

    if-eq v7, v8, :cond_92

    .line 119
    aget-byte v8, v1, v7

    and-int/lit16 v8, v8, 0xff

    .line 121
    .local v8, "b":I
    const-wide v9, 0xffffffffffff80L

    cmp-long v9, v3, v9

    const/16 v10, 0x32

    const/16 v11, 0x2e

    const/4 v12, 0x7

    if-gtz v9, :cond_5c

    .line 123
    and-int/lit8 v9, v8, 0x7f

    const-wide/16 v15, 0x50

    int-to-long v13, v9

    add-long/2addr v3, v13

    .line 124
    and-int/lit16 v9, v8, 0x80

    if-nez v9, :cond_5a

    .line 126
    if-eqz v6, :cond_51

    .line 128
    const-wide/16 v12, 0x28

    cmp-long v9, v3, v12

    if-gez v9, :cond_41

    .line 130
    const/16 v9, 0x30

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 132
    :cond_41
    cmp-long v9, v3, v15

    if-gez v9, :cond_4c

    .line 134
    const/16 v9, 0x31

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    sub-long/2addr v3, v12

    goto :goto_50

    .line 139
    :cond_4c
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    sub-long/2addr v3, v15

    .line 142
    :goto_50
    const/4 v6, 0x0

    .line 145
    :cond_51
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    const-wide/16 v3, 0x0

    goto :goto_8f

    .line 151
    :cond_5a
    shl-long/2addr v3, v12

    goto :goto_8f

    .line 156
    :cond_5c
    const-wide/16 v15, 0x50

    if-nez v5, :cond_64

    .line 158
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 160
    :cond_64
    and-int/lit8 v9, v8, 0x7f

    int-to-long v13, v9

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 161
    and-int/lit16 v9, v8, 0x80

    if-nez v9, :cond_8b

    .line 163
    if-eqz v6, :cond_81

    .line 165
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 167
    const/4 v6, 0x0

    .line 170
    :cond_81
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    const/4 v5, 0x0

    .line 173
    const-wide/16 v3, 0x0

    goto :goto_8f

    .line 177
    :cond_8b
    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 117
    .end local v8    # "b":I
    :goto_8f
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 183
    .end local v7    # "i":I
    :cond_92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    .line 184
    if-eqz p2, :cond_a3

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v7

    goto :goto_a4

    :cond_a3
    move-object v7, v1

    :goto_a4
    iput-object v7, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->contents:[B

    .line 185
    return-void

    .line 109
    .end local v2    # "objId":Ljava/lang/StringBuilder;
    .end local v3    # "value":J
    .end local v5    # "bigValue":Ljava/math/BigInteger;
    .end local v6    # "first":Z
    :cond_a7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "empty OBJECT IDENTIFIER with no sub-identifiers"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static blacklist createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 5
    .param p0, "contents"    # [B
    .param p1, "clone"    # Z

    .line 419
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;-><init>([B)V

    .line 420
    .local v0, "hdl":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 421
    .local v1, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v1, :cond_15

    .line 423
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([BZ)V

    return-object v2

    .line 425
    :cond_15
    return-object v1
.end method

.method private blacklist doOutput(Ljava/io/ByteArrayOutputStream;)V
    .registers 11
    .param p1, "aOut"    # Ljava/io/ByteArrayOutputStream;

    .line 259
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "tok":Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    .line 262
    .local v1, "first":I
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "secondToken":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    if-gt v3, v4, :cond_27

    .line 265
    int-to-long v5, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {p1, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_38

    .line 269
    :cond_27
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 272
    :goto_38
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 274
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v4, :cond_50

    .line 277
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_58

    .line 281
    :cond_50
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 283
    .end local v3    # "token":Ljava/lang/String;
    :goto_58
    goto :goto_38

    .line 284
    :cond_59
    return-void
.end method

.method public static blacklist fromContents([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2
    .param p0, "contents"    # [B

    .line 29
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized blacklist getContents()[B
    .registers 3

    monitor-enter p0

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->contents:[B

    if-nez v0, :cond_13

    .line 290
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 292
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    .line 294
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->contents:[B

    .line 297
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_13
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->contents:[B
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    .line 287
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 85
    if-nez p1, :cond_29

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isParsed()Z

    move-result v0

    if-nez v0, :cond_29

    const/16 v0, 0x80

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 88
    .local v0, "base":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v1, :cond_29

    .line 90
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromContents([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    return-object v1

    .line 94
    .end local v0    # "base":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_29
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 41
    if-eqz p0, :cond_6a

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_7

    goto :goto_6a

    .line 45
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1b

    .line 47
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 48
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_1a

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v1

    .line 52
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    goto :goto_49

    .line 53
    :cond_1b
    instance-of v0, p0, [B

    if-eqz v0, :cond_49

    .line 57
    :try_start_1f
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2a} :catch_2b

    return-object v0

    .line 59
    :catch_2b
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct object identifier from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :cond_49
    :goto_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_6a
    :goto_6a
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method private static blacklist isValidIdentifier(Ljava/lang/String;)Z
    .registers 4
    .param p0, "identifier"    # Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_26

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_12

    goto :goto_26

    .line 349
    :cond_12
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 350
    .local v0, "first":C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_25

    const/16 v1, 0x32

    if-le v0, v1, :cond_1f

    goto :goto_25

    .line 355
    :cond_1f
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->isValidIdentifier(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 352
    :cond_25
    :goto_25
    return v2

    .line 346
    .end local v0    # "first":C
    :cond_26
    :goto_26
    return v2
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 4
    .param p1, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 323
    if-ne p1, p0, :cond_4

    .line 325
    const/4 v0, 0x1

    return v0

    .line 328
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_a

    .line 330
    const/4 v0, 0x0

    return v0

    .line 333
    :cond_a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3
    .param p1, "branchID"    # Ljava/lang/String;

    .line 242
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-object v0
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getContents()[B

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 313
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z

    .line 307
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getContents()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 5

    .line 370
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;-><init>([B)V

    .line 371
    .local v0, "hdl":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 372
    .local v1, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v1, :cond_32

    .line 374
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v2

    .line 376
    :try_start_16
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 378
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    monitor-exit v2

    return-object p0

    .line 383
    :cond_25
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    monitor-exit v2

    return-object v3

    .line 385
    :catchall_2f
    move-exception v3

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_2f

    throw v3

    .line 387
    :cond_32
    return-object v1
.end method

.method public blacklist on(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 6
    .param p1, "stem"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "stemId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_26

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
