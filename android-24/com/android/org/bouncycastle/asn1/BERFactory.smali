.class Lcom/android/org/bouncycastle/asn1/BERFactory;
.super Ljava/lang/Object;
.source "BERFactory.java"


# static fields
.field static final EMPTY_SEQUENCE:Lcom/android/org/bouncycastle/asn1/BERSequence;

.field static final EMPTY_SET:Lcom/android/org/bouncycastle/asn1/BERSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 5
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/asn1/BERFactory;->EMPTY_SEQUENCE:Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@7
    .line 6
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSet;

    #@9
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/BERSet;-><init>()V

    #@c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/BERFactory;->EMPTY_SET:Lcom/android/org/bouncycastle/asn1/BERSet;

    #@e
    .line 3
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/BERSequence;
    .locals 2
    .param p0, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    sget-object v0, Lcom/android/org/bouncycastle/asn1/BERFactory;->EMPTY_SEQUENCE:Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@9
    :goto_0
    return-object v0

    #@a
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@c
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@f
    goto :goto_0
.end method

.method static createSet(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/BERSet;
    .locals 2
    .param p0, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    sget-object v0, Lcom/android/org/bouncycastle/asn1/BERFactory;->EMPTY_SET:Lcom/android/org/bouncycastle/asn1/BERSet;

    #@9
    :goto_0
    return-object v0

    #@a
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSet;

    #@c
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@f
    goto :goto_0
.end method
