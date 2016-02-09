.class final Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$1;
.super Ljava/lang/Object;
.source "PKIXCRLStoreSelector.java"

# interfaces
.implements Ljava/security/cert/CRLSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->getCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$selector:Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)V
    .locals 0
    .param p1, "val$selector"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    #@0
    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$1;->val$selector:Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

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
    .line 309
    return-object p0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 1
    .param p1, "crl"    # Ljava/security/cert/CRL;

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$1;->val$selector:Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->match(Ljava/security/cert/CRL;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
