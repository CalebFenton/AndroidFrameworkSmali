.class public Lcom/android/internal/org/bouncycastle/its/asn1/EncryptedData;
.super Ljava/lang/Object;
.source "EncryptedData.java"


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/EncryptedData;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 24
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/EncryptedData;

    if-eqz v0, :cond_8

    .line 26
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/EncryptedData;

    return-object v0

    .line 28
    :cond_8
    if-eqz p0, :cond_14

    .line 30
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/EncryptedData;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/EncryptedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 33
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method
