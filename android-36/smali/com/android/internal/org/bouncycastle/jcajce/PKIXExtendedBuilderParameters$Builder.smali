.class public Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
.super Ljava/lang/Object;
.source "PKIXExtendedBuilderParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist baseParameters:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

.field private blacklist excludedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist maxPathLength:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbaseParameters(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetexcludedCerts(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmaxPathLength(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .registers 3
    .param p1, "baseParameters"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    .line 40
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .registers 3
    .param p1, "baseParameters"    # Ljava/security/cert/PKIXBuilderParameters;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    .line 34
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 35
    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist addExcludedCerts(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;"
        }
    .end annotation

    .line 53
    .local p1, "excludedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 55
    return-object p0
.end method

.method public blacklist build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .registers 3

    .line 92
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters-IA;)V

    return-object v0
.end method

.method public blacklist setMaxPathLength(I)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .registers 4
    .param p1, "maxPathLength"    # I

    .line 80
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    .line 85
    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 87
    return-object p0

    .line 82
    :cond_6
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The maximum path length parameter can not be less than -1."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
