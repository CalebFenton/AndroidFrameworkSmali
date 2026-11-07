.class public Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "KeyUsage.java"


# instance fields
.field private blacklist bitString:Lcom/android/org/bouncycastle/asn1/ASN1BitString;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1BitString;)V
    .registers 2

    .line 76
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;
    .registers 2

    .line 44
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    if-eqz v0, :cond_7

    .line 46
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1BitString;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 103
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p0

    .line 105
    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, "KeyUsage: 0x"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_25

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
