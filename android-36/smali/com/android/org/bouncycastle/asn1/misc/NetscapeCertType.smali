.class public Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;
.super Lcom/android/org/bouncycastle/asn1/DERBitString;
.source "NetscapeCertType.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1BitString;)V
    .registers 3

    .line 50
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetscapeCertType: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
