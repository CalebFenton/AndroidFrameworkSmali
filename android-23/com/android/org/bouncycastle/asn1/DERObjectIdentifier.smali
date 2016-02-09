.class public Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.source "DERObjectIdentifier.java"


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 0
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "branch"    # Ljava/lang/String;

    #@0
    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@3
    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@3
    .line 10
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    #@3
    .line 15
    return-void
.end method
