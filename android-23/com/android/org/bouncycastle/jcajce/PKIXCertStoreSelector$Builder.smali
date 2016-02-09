.class public Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;
.super Ljava/lang/Object;
.source "PKIXCertStoreSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseSelector:Ljava/security/cert/CertSelector;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertSelector;)V
    .locals 1
    .param p1, "certSelector"    # Ljava/security/cert/CertSelector;

    #@0
    .prologue
    .line 23
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;, "Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>.Builder;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    invoke-interface {p1}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/security/cert/CertSelector;

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->baseSelector:Ljava/security/cert/CertSelector;

    #@b
    .line 23
    return-void
.end method


# virtual methods
.method public build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 30
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;, "Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>.Builder;"
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->baseSelector:Ljava/security/cert/CertSelector;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)V

    #@8
    return-object v0
.end method
