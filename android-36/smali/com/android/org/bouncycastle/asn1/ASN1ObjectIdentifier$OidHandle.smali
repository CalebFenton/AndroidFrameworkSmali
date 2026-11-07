.class Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
.super Ljava/lang/Object;
.source "ASN1ObjectIdentifier.java"


# instance fields
.field private final blacklist contents:[B

.field private final blacklist key:I


# direct methods
.method constructor blacklist <init>([B)V
    .registers 3

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->key:I

    .line 398
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->contents:[B

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 408
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    if-eqz v0, :cond_f

    .line 410
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->contents:[B

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->contents:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 403
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->key:I

    return p0
.end method
