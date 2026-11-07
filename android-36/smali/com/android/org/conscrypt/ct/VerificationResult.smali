.class public Lcom/android/org/conscrypt/ct/VerificationResult;
.super Ljava/lang/Object;
.source "VerificationResult.java"


# instance fields
.field private final blacklist count:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist invalidSCTs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist validSCTs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/VerificationResult;->validSCTs:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/VerificationResult;->invalidSCTs:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/VerificationResult;->count:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V
    .registers 7
    .param p1, "result"    # Lcom/android/org/conscrypt/ct/VerifiedSCT;

    .line 44
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/VerifiedSCT;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 45
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/VerificationResult;->validSCTs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 47
    :cond_c
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/VerificationResult;->invalidSCTs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_11
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/VerifiedSCT;->getSct()Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getOrigin()Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    move-result-object v0

    .line 50
    .local v0, "origin":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/VerificationResult;->count:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 51
    .local v1, "value":Ljava/lang/Integer;
    const/4 v2, 0x1

    if-nez v1, :cond_2e

    .line 52
    iget-object v3, p0, Lcom/android/org/conscrypt/ct/VerificationResult;->count:Ljava/util/EnumMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 54
    :cond_2e
    iget-object v3, p0, Lcom/android/org/conscrypt/ct/VerificationResult;->count:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :goto_3c
    return-void
.end method

.method public blacklist getInvalidSCTs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/VerificationResult;->invalidSCTs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getValidSCTs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/VerificationResult;->validSCTs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist numCertSCTs()I
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/VerificationResult;->count:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 68
    .local v0, "num":Ljava/lang/Integer;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_12
    return v1
.end method

.method public blacklist numOCSPSCTs()I
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/VerificationResult;->count:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 73
    .local v0, "num":Ljava/lang/Integer;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_12
    return v1
.end method

.method public blacklist numTlsSCTs()I
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/VerificationResult;->count:Ljava/util/EnumMap;

    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 77
    .local v0, "num":Ljava/lang/Integer;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_12
    return v1
.end method
