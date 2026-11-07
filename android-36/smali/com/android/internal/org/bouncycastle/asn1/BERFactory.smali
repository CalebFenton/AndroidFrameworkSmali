.class Lcom/android/internal/org/bouncycastle/asn1/BERFactory;
.super Ljava/lang/Object;
.source "BERFactory.java"


# static fields
.field static final blacklist EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

.field static final blacklist EMPTY_SET:Lcom/android/internal/org/bouncycastle/asn1/BERSet;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/BERFactory;->EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    .line 7
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/BERSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/BERFactory;->EMPTY_SET:Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/BERSequence;
    .registers 3
    .param p0, "v"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 11
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    .line 13
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/BERFactory;->EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    return-object v0

    .line 16
    :cond_a
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method static blacklist createSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/BERSet;
    .registers 3
    .param p0, "v"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 21
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    .line 23
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/BERFactory;->EMPTY_SET:Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    return-object v0

    .line 26
    :cond_a
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
