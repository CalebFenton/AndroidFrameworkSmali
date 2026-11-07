.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1VisibleString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final blacklist contents:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3

    .line 88
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p2, :cond_9

    .line 89
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    :cond_9
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;->contents:[B

    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;
    .registers 3

    .line 141
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/DERVisibleString;-><init>([BZ)V

    return-object v0
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 124
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;

    .line 131
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;->contents:[B

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;->contents:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method final blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/16 v0, 0x1a

    .line 119
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;->contents:[B

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

    .line 114
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;->contents:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method public final blacklist getString()Ljava/lang/String;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;->contents:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api hashCode()I
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;->contents:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
