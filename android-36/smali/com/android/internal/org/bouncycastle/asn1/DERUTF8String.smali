.class public Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;
.source "DERUTF8String.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;-><init>([BZ)V

    .line 24
    return-void
.end method
