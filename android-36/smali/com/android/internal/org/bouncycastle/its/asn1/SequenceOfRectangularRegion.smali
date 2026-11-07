.class public Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfRectangularRegion;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SequenceOfRectangularRegion.java"


# instance fields
.field private final blacklist sequence:[Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 21
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfRectangularRegion;->sequence:[Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_21

    .line 26
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfRectangularRegion;->sequence:[Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    move-result-object v2

    aput-object v2, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 28
    .end local v0    # "i":I
    :cond_21
    return-void
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 32
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfRectangularRegion;->sequence:[Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
