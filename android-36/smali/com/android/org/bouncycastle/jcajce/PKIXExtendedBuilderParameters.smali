.class public Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
.super Ljava/lang/Object;
.source "PKIXExtendedBuilderParameters.java"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# instance fields
.field private final blacklist baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

.field private final blacklist excludedCerts:Ljava/util/Set;

.field private final blacklist maxPathLength:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->-$$Nest$fgetbaseParameters(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 103
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->-$$Nest$fgetexcludedCerts(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->excludedCerts:Ljava/util/Set;

    .line 104
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->-$$Nest$fgetmaxPathLength(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->maxPathLength:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 1

    .line 0
    return-object p0
.end method

.method public blacklist getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    return-object p0
.end method

.method public blacklist getExcludedCerts()Ljava/util/Set;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->excludedCerts:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist getMaxPathLength()I
    .registers 1

    .line 133
    iget p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->maxPathLength:I

    return p0
.end method
