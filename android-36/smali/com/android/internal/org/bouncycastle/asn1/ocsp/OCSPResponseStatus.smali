.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "OCSPResponseStatus.java"


# static fields
.field public static final blacklist INTERNAL_ERROR:I = 0x2

.field public static final blacklist MALFORMED_REQUEST:I = 0x1

.field public static final blacklist SIG_REQUIRED:I = 0x5

.field public static final blacklist SUCCESSFUL:I = 0x0

.field public static final blacklist TRY_LATER:I = 0x3

.field public static final blacklist UNAUTHORIZED:I = 0x6


# instance fields
.field private blacklist value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "value"    # I

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V

    .line 60
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V
    .registers 2
    .param p1, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 66
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 71
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    if-eqz v0, :cond_8

    .line 73
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    return-object v0

    .line 75
    :cond_8
    if-eqz p0, :cond_14

    .line 77
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V

    return-object v0

    .line 80
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getIntValue()I
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v0

    return v0
.end method

.method public blacklist getValue()Ljava/math/BigInteger;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method
