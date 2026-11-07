.class public Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
.super Ljava/lang/Object;
.source "PKIXNameConstraintValidator.java"


# instance fields
.field blacklist validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist addExcludedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 3
    .param p1, "subtree"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 132
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    .line 133
    return-void
.end method

.method public blacklist checkExcluded(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 5
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_5} :catch_7

    .line 100
    nop

    .line 101
    return-void

    .line 97
    :catch_7
    move-exception v0

    .line 99
    .local v0, "e":Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist checkExcludedDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "dns"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    :try_end_9
    .catch Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_9} :catch_b

    .line 59
    nop

    .line 60
    return-void

    .line 56
    :catch_b
    move-exception v0

    .line 58
    .local v0, "e":Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist checkPermitted(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 5
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_5} :catch_7

    .line 79
    nop

    .line 80
    return-void

    .line 76
    :catch_7
    move-exception v0

    .line 78
    .local v0, "e":Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist checkPermittedDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "dns"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    :try_end_9
    .catch Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_9} :catch_b

    .line 46
    nop

    .line 47
    return-void

    .line 43
    :catch_b
    move-exception v0

    .line 45
    .local v0, "e":Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 28
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    if-nez v0, :cond_6

    .line 30
    const/4 v0, 0x0

    return v0

    .line 32
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    .line 33
    .local v0, "constraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist intersectEmptyPermittedSubtree(I)V
    .registers 3
    .param p1, "nameType"    # I

    .line 122
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectEmptyPermittedSubtree(I)V

    .line 123
    return-void
.end method

.method public blacklist intersectPermittedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 3
    .param p1, "permitted"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 105
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectPermittedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    .line 106
    return-void
.end method

.method public blacklist intersectPermittedSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 3
    .param p1, "permitted"    # [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    .line 118
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
