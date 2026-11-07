.class public Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;
.super Ljava/lang/Object;
.source "HashAlgorithm.java"


# static fields
.field public static final blacklist sha256:Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;

.field public static final blacklist sha384:Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;


# instance fields
.field private final blacklist enumerated:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;-><init>(I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;->sha256:Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;

    .line 19
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;-><init>(I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;->sha384:Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;

    return-void
.end method

.method protected constructor blacklist <init>(I)V
    .registers 3
    .param p1, "ordinal"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;->enumerated:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 25
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V
    .registers 2
    .param p1, "enumerated"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;->enumerated:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;
    .registers 4
    .param p1, "src"    # Ljava/lang/Object;

    .line 34
    if-nez p1, :cond_4

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;

    if-eqz v0, :cond_c

    .line 40
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;

    return-object v0

    .line 44
    :cond_c
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashAlgorithm;->enumerated:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method
