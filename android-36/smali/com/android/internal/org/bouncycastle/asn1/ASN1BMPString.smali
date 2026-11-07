.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1BMPString.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final blacklist string:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "string"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 83
    if-eqz p1, :cond_c

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    .line 89
    return-void

    .line 85
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([B)V
    .registers 8
    .param p1, "string"    # [B

    .line 92
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 93
    if-eqz p1, :cond_31

    .line 98
    array-length v0, p1

    .line 99
    .local v0, "byteLen":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_29

    .line 104
    div-int/lit8 v1, v0, 0x2

    .line 105
    .local v1, "charLen":I
    new-array v2, v1, [C

    .line 107
    .local v2, "cs":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-eq v3, v1, :cond_26

    .line 109
    mul-int/lit8 v4, v3, 0x2

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 112
    .end local v3    # "i":I
    :cond_26
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    .line 113
    return-void

    .line 101
    .end local v1    # "charLen":I
    .end local v2    # "cs":[C
    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "malformed BMPString encoding encountered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v0    # "byteLen":I
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([C)V
    .registers 4
    .param p1, "string"    # [C

    .line 116
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 117
    if-eqz p1, :cond_8

    .line 122
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    .line 123
    return-void

    .line 119
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .registers 2
    .param p0, "contents"    # [B

    .line 207
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>([B)V

    return-object v0
.end method

.method static blacklist createPrimitive([C)Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .registers 2
    .param p0, "string"    # [C

    .line 213
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>([C)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 76
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 38
    if-eqz p0, :cond_69

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    if-eqz v0, :cond_7

    goto :goto_69

    .line 42
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1a

    .line 44
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 45
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    if-eqz v1, :cond_1a

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    return-object v1

    .line 50
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    instance-of v0, p0, [B

    if-eqz v0, :cond_48

    .line 54
    :try_start_1e
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_2a

    return-object v0

    .line 56
    :catch_2a
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_48
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

    .line 40
    :cond_69
    :goto_69
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    return-object v0
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 5
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 137
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    if-nez v0, :cond_6

    .line 139
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    .line 144
    .local v0, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([C[C)Z

    move-result v1

    return v1
.end method

.method final blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 15
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    array-length v0, v0

    .line 166
    .local v0, "count":I
    const/16 v1, 0x1e

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 167
    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 169
    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 171
    .local v2, "buf":[B
    const/4 v3, 0x0

    .local v3, "i":I
    and-int/lit8 v4, v0, -0x4

    .line 172
    .local v4, "limit":I
    :goto_14
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_5a

    .line 174
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    aget-char v7, v7, v3

    .local v7, "c0":C
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    add-int/lit8 v9, v3, 0x1

    aget-char v8, v8, v9

    .local v8, "c1":C
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    add-int/lit8 v10, v3, 0x2

    aget-char v9, v9, v10

    .local v9, "c2":C
    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    add-int/lit8 v11, v3, 0x3

    aget-char v10, v10, v11

    .line 175
    .local v10, "c3":C
    add-int/lit8 v3, v3, 0x4

    .line 177
    shr-int/lit8 v11, v7, 0x8

    int-to-byte v11, v11

    aput-byte v11, v2, v5

    .line 178
    int-to-byte v11, v7

    aput-byte v11, v2, v6

    .line 179
    shr-int/lit8 v6, v8, 0x8

    int-to-byte v6, v6

    const/4 v11, 0x2

    aput-byte v6, v2, v11

    .line 180
    int-to-byte v6, v8

    const/4 v11, 0x3

    aput-byte v6, v2, v11

    .line 181
    shr-int/lit8 v6, v9, 0x8

    int-to-byte v6, v6

    const/4 v11, 0x4

    aput-byte v6, v2, v11

    .line 182
    const/4 v6, 0x5

    int-to-byte v11, v9

    aput-byte v11, v2, v6

    .line 183
    shr-int/lit8 v6, v10, 0x8

    int-to-byte v6, v6

    const/4 v11, 0x6

    aput-byte v6, v2, v11

    .line 184
    const/4 v6, 0x7

    int-to-byte v11, v10

    aput-byte v11, v2, v6

    .line 186
    invoke-virtual {p1, v2, v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 187
    .end local v7    # "c0":C
    .end local v8    # "c1":C
    .end local v9    # "c2":C
    .end local v10    # "c3":C
    goto :goto_14

    .line 188
    :cond_5a
    if-ge v3, v0, :cond_73

    .line 190
    const/4 v1, 0x0

    .line 193
    .local v1, "bufPos":I
    :cond_5d
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    aget-char v7, v7, v3

    .line 194
    .restart local v7    # "c0":C
    add-int/2addr v3, v6

    .line 196
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "bufPos":I
    .local v8, "bufPos":I
    shr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    aput-byte v9, v2, v1

    .line 197
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "bufPos":I
    .restart local v1    # "bufPos":I
    int-to-byte v9, v7

    aput-byte v9, v2, v8

    .line 199
    .end local v7    # "c0":C
    if-lt v3, v0, :cond_5d

    .line 201
    invoke-virtual {p1, v2, v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 203
    .end local v1    # "bufPos":I
    :cond_73
    return-void
.end method

.method final blacklist encodeConstructed()Z
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method final blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z

    .line 159
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method public final blacklist getString()Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
