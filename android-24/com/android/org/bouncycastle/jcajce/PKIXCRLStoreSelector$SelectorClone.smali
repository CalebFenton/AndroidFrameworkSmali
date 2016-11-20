.class Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;
.super Ljava/security/cert/X509CRLSelector;
.source "PKIXCRLStoreSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectorClone"
.end annotation


# instance fields
.field private final selector:Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)V
    .locals 2
    .param p1, "selector"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    #@0
    .prologue
    .line 326
    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    #@3
    .line 328
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    #@5
    .line 330
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->-get0(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;

    #@8
    move-result-object v1

    #@9
    instance-of v1, v1, Ljava/security/cert/X509CRLSelector;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 332
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->-get0(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/security/cert/X509CRLSelector;

    #@13
    .line 334
    .local v0, "baseSelector":Ljava/security/cert/X509CRLSelector;
    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0, v1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    #@1a
    .line 335
    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p0, v1}, Ljava/security/cert/X509CRLSelector;->setDateAndTime(Ljava/util/Date;)V

    #@21
    .line 336
    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p0, v1}, Ljava/security/cert/X509CRLSelector;->setIssuers(Ljava/util/Collection;)V

    #@28
    .line 337
    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p0, v1}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    #@2f
    .line 338
    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p0, v1}, Ljava/security/cert/X509CRLSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    #@36
    .line 326
    .end local v0    # "baseSelector":Ljava/security/cert/X509CRLSelector;
    :cond_0
    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/CRL;)Z
    .locals 1
    .param p1, "crl"    # Ljava/security/cert/CRL;

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    #@2
    if-nez v0, :cond_1

    #@4
    if-eqz p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0

    #@a
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->match(Ljava/security/cert/CRL;)Z

    #@f
    move-result v0

    #@10
    goto :goto_0
.end method
