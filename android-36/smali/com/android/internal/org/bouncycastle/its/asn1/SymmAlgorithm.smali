.class public Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SymmAlgorithm.java"


# static fields
.field public static blacklist aes128Ccm:Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;


# instance fields
.field private blacklist symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->aes128Ccm:Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "ordinal"    # I

    .line 23
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 25
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V
    .registers 2
    .param p1, "symmAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 18
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 20
    return-void
.end method


# virtual methods
.method public blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;
    .registers 4
    .param p1, "src"    # Ljava/lang/Object;

    .line 29
    if-nez p1, :cond_4

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    if-eqz v0, :cond_c

    .line 35
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    return-object v0

    .line 39
    :cond_c
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V

    return-object v0
.end method

.method public blacklist getSymmAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public blacklist setSymmAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V
    .registers 2
    .param p1, "symmAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 50
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 51
    return-void
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
