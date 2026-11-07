.class Lcom/android/org/bouncycastle/asn1/ASN1OctetString$1;
.super Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;
.source "ASN1OctetString.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;I)V
    .registers 3

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method blacklist fromImplicitConstructed(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 114
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toASN1OctetString()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    return-object p0
.end method

.method blacklist fromImplicitPrimitive(Lcom/android/org/bouncycastle/asn1/DEROctetString;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 0
    return-object p1
.end method
