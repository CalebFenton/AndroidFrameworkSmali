.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1BMPString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1BMPString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final blacklist string:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1BMPString$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1BMPString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_c

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    return-void

    .line 85
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'string\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor blacklist <init>([B)V
    .registers 7

    .line 92
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_2f

    .line 98
    array-length v0, p1

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_27

    .line 104
    div-int/lit8 v0, v0, 0x2

    .line 105
    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_f
    if-eq v2, v0, :cond_24

    mul-int/lit8 v3, v2, 0x2

    .line 109
    aget-byte v4, p1, v3

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 112
    :cond_24
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    return-void

    .line 101
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "malformed BMPString encoding encountered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_2f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'string\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor blacklist <init>([C)V
    .registers 2

    .line 116
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_8

    .line 122
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    return-void

    .line 119
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'string\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1BMPString;
    .registers 2

    .line 207
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>([B)V

    return-object v0
.end method

.method static blacklist createPrimitive([C)Lcom/android/org/bouncycastle/asn1/ASN1BMPString;
    .registers 2

    .line 213
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 137
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 142
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;

    .line 144
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([C[C)Z

    move-result p0

    return p0
.end method

.method final blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 15

    .line 164
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    array-length v0, v0

    const/16 v1, 0x1e

    .line 166
    invoke-virtual {p1, p2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    mul-int/lit8 p2, v0, 0x2

    .line 167
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    const/16 p2, 0x8

    .line 169
    new-array v1, p2, [B

    and-int/lit8 v2, v0, -0x4

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ge v4, v2, :cond_54

    .line 174
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    aget-char v8, v7, v4

    add-int/lit8 v9, v4, 0x1

    aget-char v9, v7, v9

    add-int/lit8 v10, v4, 0x2

    aget-char v10, v7, v10

    add-int/lit8 v11, v4, 0x3

    aget-char v7, v7, v11

    add-int/lit8 v4, v4, 0x4

    shr-int/lit8 v11, v8, 0x8

    int-to-byte v11, v11

    .line 177
    aput-byte v11, v1, v3

    int-to-byte v8, v8

    .line 178
    aput-byte v8, v1, v5

    shr-int/lit8 v5, v9, 0x8

    int-to-byte v5, v5

    .line 179
    aput-byte v5, v1, v6

    int-to-byte v5, v9

    const/4 v6, 0x3

    .line 180
    aput-byte v5, v1, v6

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x4

    .line 181
    aput-byte v5, v1, v6

    const/4 v5, 0x5

    int-to-byte v6, v10

    .line 182
    aput-byte v6, v1, v5

    shr-int/lit8 v5, v7, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x6

    .line 183
    aput-byte v5, v1, v6

    const/4 v5, 0x7

    int-to-byte v6, v7

    .line 184
    aput-byte v6, v1, v5

    .line 186
    invoke-virtual {p1, v1, v3, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    goto :goto_15

    :cond_54
    if-ge v4, v0, :cond_6c

    move p2, v3

    .line 193
    :cond_57
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    aget-char v2, v2, v4

    add-int/2addr v4, v5

    add-int/lit8 v7, p2, 0x1

    shr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    .line 196
    aput-byte v8, v1, p2

    add-int/2addr p2, v6

    int-to-byte v2, v2

    .line 197
    aput-byte v2, v1, v7

    if-lt v4, v0, :cond_57

    .line 201
    invoke-virtual {p1, v1, v3, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    :cond_6c
    return-void
.end method

.method final blacklist encodeConstructed()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method final blacklist encodedLength(Z)I
    .registers 2

    .line 159
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method public final blacklist getString()Ljava/lang/String;
    .registers 2

    .line 127
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([C)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 132
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
