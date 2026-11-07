.class public Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;
.source "DERIA5String.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validate"    # Z

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;-><init>(Ljava/lang/String;Z)V

    .line 34
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;-><init>([BZ)V

    .line 39
    return-void
.end method
