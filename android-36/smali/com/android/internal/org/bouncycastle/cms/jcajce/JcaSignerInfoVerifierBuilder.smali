.class public Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;
.super Ljava/lang/Object;
.source "JcaSignerInfoVerifierBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;,
        Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$ProviderHelper;,
        Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$NamedHelper;
    }
.end annotation


# instance fields
.field private blacklist digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

.field private blacklist helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;

.field private blacklist sigAlgIDFinder:Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

.field private blacklist sigAlgNameGen:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)V
    .registers 4
    .param p1, "digestProvider"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;-><init>(Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder-IA;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;

    .line 28
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->sigAlgNameGen:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    .line 29
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->sigAlgIDFinder:Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    .line 33
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    .line 34
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

    .line 73
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->sigAlgNameGen:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->sigAlgIDFinder:Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;->createContentVerifierProvider(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

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

    .line 85
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->sigAlgNameGen:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->sigAlgIDFinder:Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;->createContentVerifierProvider(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

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

    .line 79
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->sigAlgNameGen:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->sigAlgIDFinder:Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;->createContentVerifierProvider(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method

.method public blacklist setProvider(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;
    .registers 3
    .param p1, "providerName"    # Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$NamedHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$NamedHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;

    .line 47
    return-object p0
.end method

.method public blacklist setProvider(Ljava/security/Provider;)Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;
    .registers 3
    .param p1, "provider"    # Ljava/security/Provider;

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$ProviderHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$ProviderHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->helper:Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder$Helper;

    .line 40
    return-object p0
.end method

.method public blacklist setSignatureAlgorithmFinder(Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;
    .registers 2
    .param p1, "sigAlgIDFinder"    # Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    .line 65
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->sigAlgIDFinder:Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    .line 67
    return-object p0
.end method

.method public blacklist setSignatureAlgorithmNameGenerator(Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;)Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;
    .registers 2
    .param p1, "sigAlgNameGen"    # Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    .line 58
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JcaSignerInfoVerifierBuilder;->sigAlgNameGen:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    .line 60
    return-object p0
.end method
