.class abstract Lcom/android/org/bouncycastle/asn1/DLFactory;
.super Ljava/lang/Object;
.source "DLFactory.java"


# static fields
.field static final blacklist EMPTY_SEQUENCE:Lcom/android/org/bouncycastle/asn1/DLSequence;

.field static final blacklist EMPTY_SET:Lcom/android/org/bouncycastle/asn1/DLSet;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSequence;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DLFactory;->EMPTY_SEQUENCE:Lcom/android/org/bouncycastle/asn1/DLSequence;

    .line 7
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSet;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DLFactory;->EMPTY_SET:Lcom/android/org/bouncycastle/asn1/DLSet;

    return-void
.end method

.method static blacklist createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/DLSequence;
    .registers 3

    .line 11
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    .line 13
    sget-object p0, Lcom/android/org/bouncycastle/asn1/DLFactory;->EMPTY_SEQUENCE:Lcom/android/org/bouncycastle/asn1/DLSequence;

    return-object p0

    .line 16
    :cond_a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSequence;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method static blacklist createSet(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/DLSet;
    .registers 3

    .line 21
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    .line 23
    sget-object p0, Lcom/android/org/bouncycastle/asn1/DLFactory;->EMPTY_SET:Lcom/android/org/bouncycastle/asn1/DLSet;

    return-object p0

    .line 26
    :cond_a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSet;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
