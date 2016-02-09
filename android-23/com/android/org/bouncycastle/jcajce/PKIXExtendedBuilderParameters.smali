.class public Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
.super Ljava/lang/Object;
.source "PKIXExtendedBuilderParameters.java"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    }
.end annotation


# instance fields
.field private final baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

.field private final excludedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final maxPathLength:I


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->-get0(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@9
    .line 97
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->-get1(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->excludedCerts:Ljava/util/Set;

    #@13
    .line 98
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->-get2(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->maxPathLength:I

    #@19
    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)V

    #@3
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    #@0
    .prologue
    .line 135
    return-object p0
.end method

.method public getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@2
    return-object v0
.end method

.method public getExcludedCerts()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->excludedCerts:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getMaxPathLength()I
    .locals 1

    #@0
    .prologue
    .line 127
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->maxPathLength:I

    #@2
    return v0
.end method
