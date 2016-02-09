.class public Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;
.super Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;
.source "BERApplicationSpecific.java"


# direct methods
.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 0
    .param p1, "tagNo"    # I
    .param p2, "vec"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@3
    .line 6
    return-void
.end method
