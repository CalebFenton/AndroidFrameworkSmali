.class public Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
.super Ljava/lang/Object;
.source "PKIXCertStoreSelector.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/Certificate;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/org/bouncycastle/util/Selector",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final baseSelector:Ljava/security/cert/CertSelector;


# direct methods
.method private constructor <init>(Ljava/security/cert/CertSelector;)V
    .locals 0
    .param p1, "baseSelector"    # Ljava/security/cert/CertSelector;

    #@0
    .prologue
    .line 36
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    #@5
    .line 36
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/cert/CertSelector;Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)V
    .locals 0
    .param p1, "baseSelector"    # Ljava/security/cert/CertSelector;

    #@0
    .prologue
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;)V

    #@3
    return-void
.end method

.method public static getCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;
    .locals 1
    .param p0, "selector"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .param p1, "certStore"    # Ljava/security/cert/CertStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;",
            "Ljava/security/cert/CertStore;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$1;

    #@2
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$1;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)V

    #@5
    invoke-virtual {p1, v0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 48
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;)V

    #@7
    return-object v0
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "cert"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 41
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    check-cast p1, Ljava/security/cert/Certificate;

    #@2
    .end local p1    # "cert":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 43
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    #@2
    invoke-interface {v0, p1}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
