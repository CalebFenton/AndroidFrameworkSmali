.class public Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Ieee1609Dot2Content.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;
    .registers 2
    .param p0, "src"    # Ljava/lang/Object;

    .line 29
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;

    if-eqz v0, :cond_8

    .line 31
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;

    return-object v0

    .line 33
    :cond_8
    if-eqz p0, :cond_13

    .line 36
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/Ieee1609Dot2Content;

    move-result-object v0

    return-object v0

    .line 39
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 44
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 46
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
