.class public Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;
.source "DERUniversalString.java"


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "string"    # [B

    .line 19
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;-><init>([BZ)V

    .line 20
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;-><init>([BZ)V

    .line 25
    return-void
.end method
