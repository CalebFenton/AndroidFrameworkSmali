.class public Lcom/android/internal/org/bouncycastle/asn1/DERVisibleString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1VisibleString;
.source "DERVisibleString.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1VisibleString;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1VisibleString;-><init>([BZ)V

    .line 27
    return-void
.end method
