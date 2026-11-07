.class public Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;
.super Ljava/lang/Object;
.source "JcaContentVerifierProviderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;,
        Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;,
        Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;
    }
.end annotation


# instance fields
.field private blacklist helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgethelper(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;)Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateCompositeVerifier(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->createCompositeVerifier(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateRawSig(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->createRawSig(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateSignature(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->createSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    .line 43
    return-void
.end method

.method private blacklist createCompositeVerifier(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    .registers 10
    .param p1, "compAlgId"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 207
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    .line 209
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->getPublicKeys()Ljava/util/List;

    move-result-object v0

    .line 210
    .local v0, "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 211
    .local v2, "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/Signature;

    .line 212
    .local v3, "sigs":[Ljava/security/Signature;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-eq v4, v5, :cond_41

    .line 214
    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    .line 215
    .local v5, "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3c

    .line 217
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PublicKey;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->createSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v6

    aput-object v6, v3, v4

    goto :goto_3e

    .line 221
    :cond_3c
    aput-object v1, v3, v4

    .line 212
    .end local v5    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 225
    .end local v4    # "i":I
    :cond_41
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;

    invoke-direct {v1, v3}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;-><init>([Ljava/security/Signature;)V

    return-object v1

    .line 229
    .end local v0    # "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v2    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "sigs":[Ljava/security/Signature;
    :cond_47
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 230
    .local v0, "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/Signature;

    .line 231
    .local v2, "sigs":[Ljava/security/Signature;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_56
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v3, v4, :cond_71

    .line 233
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 236
    .local v4, "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_64
    invoke-direct {p0, v4, p2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->createSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v5

    aput-object v5, v2, v3
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6a} :catch_6b

    .line 242
    goto :goto_6e

    .line 238
    :catch_6b
    move-exception v5

    .line 240
    .local v5, "e":Ljava/lang/Exception;
    aput-object v1, v2, v3

    .line 231
    .end local v4    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 245
    .end local v3    # "i":I
    :cond_71
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;-><init>([Ljava/security/Signature;)V

    return-object v1
.end method

.method private blacklist createRawSig(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;
    .registers 5
    .param p1, "algorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "publicKey"    # Ljava/security/PublicKey;

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;->createRawSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/Signature;

    move-result-object v0

    .line 273
    .local v0, "rawSig":Ljava/security/Signature;
    if-eqz v0, :cond_b

    .line 275
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 281
    :cond_b
    goto :goto_f

    .line 278
    .end local v0    # "rawSig":Ljava/security/Signature;
    :catch_c
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v0, v1

    .line 282
    .local v0, "rawSig":Ljava/security/Signature;
    :goto_f
    return-object v0
.end method

.method private blacklist createSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;
    .registers 7
    .param p1, "algorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;->createSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/Signature;

    move-result-object v0

    .line 256
    .local v0, "sig":Ljava/security/Signature;
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_9
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_9} :catch_a

    .line 258
    return-object v0

    .line 260
    .end local v0    # "sig":Ljava/security/Signature;
    :catch_a
    move-exception v0

    .line 262
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception on setup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist build(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .registers 3
    .param p1, "publicKey"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;->convertPublicKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .registers 3
    .param p1, "certHolder"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;->convertCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .registers 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;-><init>(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Ljava/security/PublicKey;)V

    return-object v0
.end method

.method public blacklist build(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .registers 6
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 72
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_5} :catch_c

    .line 77
    .local v0, "certHolder":Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    nop

    .line 79
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;-><init>(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/security/cert/X509Certificate;)V

    return-object v1

    .line 74
    .end local v0    # "certHolder":Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    :catch_c
    move-exception v0

    .line 76
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot process certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setProvider(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;
    .registers 4
    .param p1, "providerName"    # Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    .line 56
    return-object p0
.end method

.method public blacklist setProvider(Ljava/security/Provider;)Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;
    .registers 4
    .param p1, "provider"    # Ljava/security/Provider;

    .line 47
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    .line 49
    return-object p0
.end method
