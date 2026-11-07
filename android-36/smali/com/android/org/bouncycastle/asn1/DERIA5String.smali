.class public Lcom/android/org/bouncycastle/asn1/DERIA5String;
.super Lcom/android/org/bouncycastle/asn1/ASN1IA5String;
.source "DERIA5String.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;-><init>([BZ)V

    return-void
.end method
