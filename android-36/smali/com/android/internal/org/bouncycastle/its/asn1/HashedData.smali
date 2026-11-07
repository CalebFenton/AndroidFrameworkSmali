.class public Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "HashedData.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private blacklist hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 2
    .param p1, "hashData"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 30
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 32
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "digest"    # [B

    .line 25
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist getHashData()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public blacklist setHashData(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 2
    .param p1, "hashData"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 46
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 47
    return-void
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method
