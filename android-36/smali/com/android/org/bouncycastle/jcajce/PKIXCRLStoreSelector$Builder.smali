.class public Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
.super Ljava/lang/Object;
.source "PKIXCRLStoreSelector.java"


# instance fields
.field private final blacklist baseSelector:Ljava/security/cert/CRLSelector;

.field private blacklist completeCRLEnabled:Z

.field private blacklist deltaCRLIndicator:Z

.field private blacklist issuingDistributionPoint:[B

.field private blacklist issuingDistributionPointEnabled:Z

.field private blacklist maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbaseSelector(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/security/cert/CRLSelector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcompleteCRLEnabled(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdeltaCRLIndicator(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetissuingDistributionPoint(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetissuingDistributionPointEnabled(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmaxBaseCRLNumber(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/math/BigInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/security/cert/CRLSelector;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 41
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    .line 42
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    .line 51
    invoke-interface {p1}, Ljava/security/cert/CRLSelector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/CRLSelector;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .registers 3

    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector-IA;)V

    return-object v0
.end method

.method public blacklist setCompleteCRLEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .registers 2

    .line 66
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    return-object p0
.end method

.method public blacklist setIssuingDistributionPoint([B)V
    .registers 2

    .line 135
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    return-void
.end method

.method public blacklist setIssuingDistributionPointEnabled(Z)V
    .registers 2

    .line 112
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    return-void
.end method

.method public blacklist setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-void
.end method
