.class public Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
.super Ljava/lang/Object;
.source "PKIXExtendedBuilderParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

.field private excludedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private maxPathLength:I


# direct methods
.method static synthetic -get0(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    #@2
    return v0
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 1
    .param p1, "baseParameters"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 23
    const/4 v0, 0x5

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    #@6
    .line 24
    new-instance v0, Ljava/util/HashSet;

    #@8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    #@d
    .line 34
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@f
    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 1
    .param p1, "baseParameters"    # Ljava/security/cert/PKIXBuilderParameters;

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 23
    const/4 v0, 0x5

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    #@6
    .line 24
    new-instance v0, Ljava/util/HashSet;

    #@8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    #@d
    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@f
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    #@12
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@18
    .line 29
    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    #@1e
    .line 26
    return-void
.end method


# virtual methods
.method public addExcludedCerts(Ljava/util/Set;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;"
        }
    .end annotation

    #@0
    .prologue
    .line 47
    .local p1, "excludedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 49
    return-object p0
.end method

.method public build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .locals 2

    #@0
    .prologue
    .line 86
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;)V

    #@6
    return-object v0
.end method

.method public setMaxPathLength(I)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .locals 2
    .param p1, "maxPathLength"    # I

    #@0
    .prologue
    .line 74
    const/4 v0, -0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 76
    new-instance v0, Ljava/security/InvalidParameterException;

    #@5
    const-string/jumbo v1, "The maximum path length parameter can not be less than -1."

    #@8
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 79
    :cond_0
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    #@e
    .line 81
    return-object p0
.end method
