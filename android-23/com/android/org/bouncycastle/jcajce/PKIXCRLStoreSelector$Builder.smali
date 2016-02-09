.class public Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
.super Ljava/lang/Object;
.source "PKIXCRLStoreSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseSelector:Ljava/security/cert/CRLSelector;

.field private completeCRLEnabled:Z

.field private deltaCRLIndicator:Z

.field private issuingDistributionPoint:[B

.field private issuingDistributionPointEnabled:Z

.field private maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method static synthetic -get0(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/security/cert/CRLSelector;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/math/BigInteger;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/security/cert/CRLSelector;)V
    .locals 2
    .param p1, "certSelector"    # Ljava/security/cert/CRLSelector;

    #@0
    .prologue
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>.Builder;"
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 32
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    #@7
    .line 33
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    #@9
    .line 34
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@b
    .line 35
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    #@d
    .line 36
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    #@f
    .line 40
    invoke-interface {p1}, Ljava/security/cert/CRLSelector;->clone()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/security/cert/CRLSelector;

    #@15
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    #@17
    .line 38
    return-void
.end method


# virtual methods
.method public build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 129
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>.Builder;"
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)V

    #@6
    return-object v0
.end method

.method public setCompleteCRLEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .locals 0
    .param p1, "completeCRLEnabled"    # Z

    #@0
    .prologue
    .line 55
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>.Builder;"
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    #@2
    .line 57
    return-object p0
.end method

.method public setDeltaCRLIndicatorEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .locals 0
    .param p1, "deltaCRLIndicator"    # Z

    #@0
    .prologue
    .line 72
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>.Builder;"
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    #@2
    .line 74
    return-object p0
.end method

.method public setIssuingDistributionPoint([B)V
    .locals 1
    .param p1, "issuingDistributionPoint"    # [B

    #@0
    .prologue
    .line 124
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>.Builder;"
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    #@6
    .line 122
    return-void
.end method

.method public setIssuingDistributionPointEnabled(Z)V
    .locals 0
    .param p1, "issuingDistributionPointEnabled"    # Z

    #@0
    .prologue
    .line 101
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>.Builder;"
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    #@2
    .line 99
    return-void
.end method

.method public setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "maxBaseCRLNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 89
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>.Builder;"
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    #@2
    .line 87
    return-void
.end method
