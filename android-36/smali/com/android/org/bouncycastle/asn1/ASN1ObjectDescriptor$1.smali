.class Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor$1;
.super Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;
.source "ASN1ObjectDescriptor.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;I)V
    .registers 3

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method blacklist fromImplicitConstructed(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 22
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitConstructed(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;)V

    return-object p0
.end method

.method blacklist fromImplicitPrimitive(Lcom/android/org/bouncycastle/asn1/DEROctetString;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 16
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitPrimitive(Lcom/android/org/bouncycastle/asn1/DEROctetString;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;)V

    return-object p0
.end method
