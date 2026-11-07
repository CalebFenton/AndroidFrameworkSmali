.class public Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "RectangularRegion.java"


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 21
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 23
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 27
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    if-eqz v0, :cond_8

    .line 29
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    return-object v0

    .line 31
    :cond_8
    if-eqz p0, :cond_14

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/RectangularRegion;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 36
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
