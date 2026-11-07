.class Lcom/android/internal/org/bouncycastle/asn1/DLFactory;
.super Ljava/lang/Object;
.source "DLFactory.java"


# static fields
.field static final blacklist EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

.field static final blacklist EMPTY_SET:Lcom/android/internal/org/bouncycastle/asn1/DLSet;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    .line 7
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->EMPTY_SET:Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/DLSequence;
    .registers 3
    .param p0, "v"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 11
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    .line 13
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    return-object v0

    .line 16
    :cond_a
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method static blacklist createSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/DLSet;
    .registers 3
    .param p0, "v"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 21
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    .line 23
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->EMPTY_SET:Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    return-object v0

    .line 26
    :cond_a
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
