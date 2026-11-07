.class public Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
.super Ljava/lang/Object;
.source "JcaDigestCalculatorProviderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;
    }
.end annotation


# instance fields
.field private blacklist helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgethelper(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;)Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;-><init>(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;)V

    return-object v0
.end method

.method public blacklist setHelper(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
    .registers 3
    .param p1, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    .line 35
    return-object p0
.end method

.method public blacklist setProvider(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
    .registers 4
    .param p1, "providerName"    # Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    .line 49
    return-object p0
.end method

.method public blacklist setProvider(Ljava/security/Provider;)Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
    .registers 4
    .param p1, "provider"    # Ljava/security/Provider;

    .line 40
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    .line 42
    return-object p0
.end method
