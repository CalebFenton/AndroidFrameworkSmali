.class public Lcom/android/org/bouncycastle/asn1/DERUTCTime;
.super Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;
.source "DERUTCTime.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    #@0
    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;-><init>(Ljava/lang/String;)V

    #@3
    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    #@0
    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;-><init>(Ljava/util/Date;)V

    #@3
    .line 16
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;-><init>([B)V

    #@3
    .line 11
    return-void
.end method
