.class Lcom/android/org/bouncycastle/asn1/ASN1External$1;
.super Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;
.source "ASN1External.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;I)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method blacklist fromImplicitConstructed(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 20
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toASN1External()Lcom/android/org/bouncycastle/asn1/ASN1External;

    move-result-object p0

    return-object p0
.end method
