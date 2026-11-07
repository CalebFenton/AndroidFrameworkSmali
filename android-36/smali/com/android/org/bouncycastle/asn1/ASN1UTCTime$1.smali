.class Lcom/android/org/bouncycastle/asn1/ASN1UTCTime$1;
.super Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;
.source "ASN1UTCTime.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;I)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method blacklist fromImplicitPrimitive(Lcom/android/org/bouncycastle/asn1/DEROctetString;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 45
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    move-result-object p0

    return-object p0
.end method
