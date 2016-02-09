.class final Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$1;
.super Ljava/lang/Object;
.source "PKIXCertStoreSelector.java"

# interfaces
.implements Ljava/security/cert/CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->getCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$selector:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)V
    .locals 0
    .param p1, "val$selector"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@0
    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$1;->val$selector:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    #@0
    .prologue
    .line 63
    return-object p0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p1, "certificate"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$1;->val$selector:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$1;->val$selector:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method
