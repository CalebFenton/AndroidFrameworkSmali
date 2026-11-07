.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1GraphicString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final blacklist contents:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3

    .line 77
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_e

    if-eqz p2, :cond_b

    .line 83
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    :cond_b
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->contents:[B

    return-void

    .line 80
    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'contents\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;
    .registers 3

    .line 130
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERGraphicString;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/DERGraphicString;-><init>([BZ)V

    return-object v0
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 108
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 113
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    .line 115
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->contents:[B

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->contents:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method final blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/16 v0, 0x19

    .line 103
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->contents:[B

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

    .line 98
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->contents:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method public final blacklist getString()Ljava/lang/String;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->contents:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api hashCode()I
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->contents:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method
