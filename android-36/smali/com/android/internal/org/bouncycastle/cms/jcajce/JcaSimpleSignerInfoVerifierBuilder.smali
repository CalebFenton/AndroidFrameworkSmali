.class public Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;
.super Ljava/lang/Object;
.source "JcaSimpleSignerInfoVerifierBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;,
        Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$ProviderHelper;,
        Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$NamedHelper;
    }
.end annotation


# instance fields
.field private blacklist helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;-><init>(Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder-IA;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    return-void
.end method


# virtual methods
.method public blacklist build(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
    .registers 7
    .param p1, "certHolder"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;

    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;-><init>()V

    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;->createContentVerifierProvider(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;->createDigestCalculatorProvider()Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method

.method public blacklist build(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
    .registers 7
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;

    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;-><init>()V

    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;->createContentVerifierProvider(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;->createDigestCalculatorProvider()Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method

.method public blacklist build(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
    .registers 7
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;

    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;-><init>()V

    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;->createContentVerifierProvider(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;->createDigestCalculatorProvider()Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method

.method public blacklist setProvider(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;
    .registers 3
    .param p1, "providerName"    # Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$NamedHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$NamedHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    .line 37
    return-object p0
.end method

.method public blacklist setProvider(Ljava/security/Provider;)Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;
    .registers 3
    .param p1, "provider"    # Ljava/security/Provider;

    .line 28
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$ProviderHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$ProviderHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder$Helper;

    .line 30
    return-object p0
.end method
