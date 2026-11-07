.class Lcom/android/org/bouncycastle/asn1/ASN1Set$1;
.super Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;
.source "ASN1Set.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;I)V
    .registers 3

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method blacklist fromImplicitConstructed(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 107
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toASN1Set()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    return-object p0
.end method
