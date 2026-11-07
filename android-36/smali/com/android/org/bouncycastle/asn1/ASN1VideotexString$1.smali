.class Lcom/android/org/bouncycastle/asn1/ASN1VideotexString$1;
.super Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;
.source "ASN1VideotexString.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;I)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method blacklist fromImplicitPrimitive(Lcom/android/org/bouncycastle/asn1/DEROctetString;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 20
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1VideotexString;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1VideotexString;

    move-result-object p0

    return-object p0
.end method
