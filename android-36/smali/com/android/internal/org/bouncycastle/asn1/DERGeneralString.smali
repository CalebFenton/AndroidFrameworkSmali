.class public Lcom/android/internal/org/bouncycastle/asn1/DERGeneralString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralString;
.source "DERGeneralString.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralString;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralString;-><init>([BZ)V

    .line 28
    return-void
.end method
