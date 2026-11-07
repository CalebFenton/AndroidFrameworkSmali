.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1UniversalString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

.field private static final blacklist table:[C


# instance fields
.field final blacklist contents:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    const/16 v0, 0x10

    .line 25
    new-array v0, v0, [C

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->table:[C

    return-void

    nop

    :array_16
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3

    .line 81
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p2, :cond_9

    .line 82
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    :cond_9
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;
    .registers 3

    .line 144
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;-><init>([BZ)V

    return-object v0
.end method

.method private static blacklist encodeHexByte(Ljava/lang/StringBuffer;I)V
    .registers 4

    .line 149
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->table:[C

    ushr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 p1, p1, 0xf

    .line 150
    aget-char p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static blacklist encodeHexDL(Ljava/lang/StringBuffer;I)V
    .registers 8

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 157
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->encodeHexByte(Ljava/lang/StringBuffer;I)V

    return-void

    :cond_8
    const/4 v1, 0x5

    .line 161
    new-array v2, v1, [B

    move v3, v1

    :goto_c
    add-int/lit8 v4, v3, -0x1

    int-to-byte v5, p1

    .line 166
    aput-byte v5, v2, v4

    ushr-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_29

    rsub-int/lit8 p1, v4, 0x5

    add-int/lit8 v3, v3, -0x2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 172
    aput-byte p1, v2, v3

    :goto_1d
    add-int/lit8 p1, v3, 0x1

    .line 176
    aget-byte v0, v2, v3

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->encodeHexByte(Ljava/lang/StringBuffer;I)V

    if-lt p1, v1, :cond_27

    return-void

    :cond_27
    move v3, p1

    goto :goto_1d

    :cond_29
    move v3, v4

    goto :goto_c
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 127
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 132
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;

    .line 134
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method final blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/16 v0, 0x1c

    .line 122
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

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

    .line 117
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method public final blacklist getString()Ljava/lang/String;
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    array-length v0, v0

    .line 88
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfDL(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 89
    const-string v2, "#1C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->encodeHexDL(Ljava/lang/StringBuffer;I)V

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_26

    .line 94
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    aget-byte v3, v3, v2

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->encodeHexByte(Ljava/lang/StringBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 97
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api hashCode()I
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 102
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
