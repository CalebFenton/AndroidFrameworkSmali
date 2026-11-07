.class public Lcom/android/internal/org/bouncycastle/its/asn1/LinkageValue;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "LinkageValue.java"


# instance fields
.field private final blacklist value:[B


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 4
    .param p1, "octs"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 22
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/Utils;->octetStringFixed([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageValue;->value:[B

    .line 24
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/LinkageValue;
    .registers 3
    .param p0, "src"    # Ljava/lang/Object;

    .line 28
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageValue;

    if-eqz v0, :cond_8

    .line 30
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageValue;

    return-object v0

    .line 32
    :cond_8
    if-eqz p0, :cond_14

    .line 34
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageValue;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageValue;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0

    .line 37
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/LinkageValue;->value:[B

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method
