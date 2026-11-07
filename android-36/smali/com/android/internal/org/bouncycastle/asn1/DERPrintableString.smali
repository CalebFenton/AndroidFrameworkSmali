.class public Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;
.source "DERPrintableString.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validate"    # Z

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;-><init>(Ljava/lang/String;Z)V

    .line 56
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;-><init>([BZ)V

    .line 61
    return-void
.end method
