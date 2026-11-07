.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source "BaseAlgorithmParameterGeneratorSpi.java"


# instance fields
.field private final blacklist helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method protected final blacklist createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .registers 2

    .line 27
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0
.end method
