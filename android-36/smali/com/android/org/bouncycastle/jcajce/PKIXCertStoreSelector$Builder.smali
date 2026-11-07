.class public Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;
.super Ljava/lang/Object;
.source "PKIXCertStoreSelector.java"


# instance fields
.field private final blacklist baseSelector:Ljava/security/cert/CertSelector;


# direct methods
.method public constructor blacklist <init>(Ljava/security/cert/CertSelector;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-interface {p1}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/CertSelector;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->baseSelector:Ljava/security/cert/CertSelector;

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .registers 3

    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->baseSelector:Ljava/security/cert/CertSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector-IA;)V

    return-object v0
.end method
