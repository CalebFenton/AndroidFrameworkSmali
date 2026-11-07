.class public Lcom/android/internal/org/bouncycastle/asn1/DERUTCTime;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;
.source "DERUTCTime.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "time"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Date;)V
    .registers 2
    .param p1, "time"    # Ljava/util/Date;

    .line 20
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;-><init>(Ljava/util/Date;)V

    .line 21
    return-void
.end method

.method constructor blacklist <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .line 15
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;-><init>([B)V

    .line 16
    return-void
.end method
