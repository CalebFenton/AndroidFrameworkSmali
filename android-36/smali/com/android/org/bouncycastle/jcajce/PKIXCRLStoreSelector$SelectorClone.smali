.class Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;
.super Ljava/security/cert/X509CRLSelector;
.source "PKIXCRLStoreSelector.java"


# instance fields
.field private final blacklist selector:Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)V
    .registers 3

    .line 330
    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    .line 333
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->-$$Nest$fgetbaseSelector(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/X509CRLSelector;

    if-eqz v0, :cond_36

    .line 335
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->-$$Nest$fgetbaseSelector(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509CRLSelector;

    .line 337
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 338
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRLSelector;->setDateAndTime(Ljava/util/Date;)V

    .line 339
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRLSelector;->setIssuers(Ljava/util/Collection;)V

    .line 340
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 341
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/cert/X509CRLSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    :cond_36
    return-void
.end method


# virtual methods
.method public whitelist test-api match(Ljava/security/cert/CRL;)Z
    .registers 2

    .line 347
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    if-nez p0, :cond_a

    if-eqz p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->match(Ljava/security/cert/CRL;)Z

    move-result p0

    return p0
.end method
