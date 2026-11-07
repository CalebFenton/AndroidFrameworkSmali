.class public Lcom/android/internal/org/bouncycastle/asn1/DERNumericString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;
.source "DERNumericString.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERNumericString;-><init>(Ljava/lang/String;Z)V

    .line 24
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validate"    # Z

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;-><init>(Ljava/lang/String;Z)V

    .line 37
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;-><init>([BZ)V

    .line 42
    return-void
.end method
