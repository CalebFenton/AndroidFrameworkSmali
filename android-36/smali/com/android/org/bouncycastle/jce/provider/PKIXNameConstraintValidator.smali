.class public Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
.super Ljava/lang/Object;
.source "PKIXNameConstraintValidator.java"


# instance fields
.field blacklist validator:Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    return-void
.end method


# virtual methods
.method public blacklist addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 2

    .line 132
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public blacklist checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 3

    .line 95
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 99
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist checkExcludedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    :try_end_9
    .catch Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 58
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 3

    .line 74
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 78
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist checkPermittedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    .line 41
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    :try_end_9
    .catch Lcom/android/org/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 45
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 28
    instance-of v0, p1, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 32
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    .line 33
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    iget-object p1, p1, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist intersectPermittedSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/PKIXNameConstraintValidator;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
