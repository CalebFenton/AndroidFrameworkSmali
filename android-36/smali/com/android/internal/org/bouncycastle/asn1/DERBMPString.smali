.class public Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
.source "DERBMPString.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method constructor blacklist <init>([B)V
    .registers 2
    .param p1, "contents"    # [B

    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;-><init>([B)V

    .line 32
    return-void
.end method

.method constructor blacklist <init>([C)V
    .registers 2
    .param p1, "string"    # [C

    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;-><init>([C)V

    .line 37
    return-void
.end method
