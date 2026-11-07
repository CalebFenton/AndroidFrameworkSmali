.class public Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
.super Ljava/lang/Object;
.source "PKIXExtendedBuilderParameters.java"


# instance fields
.field private final blacklist baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

.field private blacklist excludedCerts:Ljava/util/Set;

.field private blacklist maxPathLength:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbaseParameters(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetexcludedCerts(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmaxPathLength(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 29
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 29
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 35
    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .registers 3

    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters-IA;)V

    return-object v0
.end method
