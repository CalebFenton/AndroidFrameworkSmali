.class Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;
.super Ljava/lang/Object;
.source "JcaSignerInfoVerifierBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Helper"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist createContentVerifierProvider(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .registers 3
    .param p1, "certHolder"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v0

    return-object v0
.end method

.method blacklist createContentVerifierProvider(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .registers 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v0

    return-object v0
.end method

.method blacklist createContentVerifierProvider(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .registers 3
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v0

    return-object v0
.end method

.method blacklist createDigestCalculatorProvider()Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v0

    return-object v0
.end method
