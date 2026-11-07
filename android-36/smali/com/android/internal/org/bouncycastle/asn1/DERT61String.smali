.class public Lcom/android/internal/org/bouncycastle/asn1/DERT61String;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1T61String;
.source "DERT61String.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1T61String;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "string"    # [B

    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERT61String;-><init>([BZ)V

    .line 30
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1T61String;-><init>([BZ)V

    .line 35
    return-void
.end method
