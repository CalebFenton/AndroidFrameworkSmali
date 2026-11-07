.class public Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
.super Ljava/lang/Object;
.source "JcaContentSignerBuilder.java"


# static fields
.field private static final blacklist isAlgIdFromPrivate:Ljava/util/Set;


# instance fields
.field private blacklist helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist sigAlgSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final blacklist signatureAlgorithm:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetsigAlgId(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->isAlgIdFromPrivate:Ljava/util/Set;

    .line 56
    sget-object v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->isAlgIdFromPrivate:Ljava/util/Set;

    const-string v1, "DILITHIUM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->isAlgIdFromPrivate:Ljava/util/Set;

    const-string v1, "SPHINCS+"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->isAlgIdFromPrivate:Ljava/util/Set;

    const-string v1, "SPHINCSPlus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    .line 71
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->signatureAlgorithm:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 7
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;
    .param p2, "sigParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    .line 76
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->signatureAlgorithm:Ljava/lang/String;

    .line 78
    instance-of v0, p2, Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_28

    .line 80
    move-object v0, p2

    check-cast v0, Ljava/security/spec/PSSParameterSpec;

    .line 82
    .local v0, "pssSpec":Ljava/security/spec/PSSParameterSpec;
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 83
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->createPSSParams(Ljava/security/spec/PSSParameterSpec;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 85
    .end local v0    # "pssSpec":Ljava/security/spec/PSSParameterSpec;
    goto :goto_3f

    .line 86
    :cond_28
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;

    if-eqz v0, :cond_40

    .line 88
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;

    .line 90
    .local v0, "compSpec":Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 91
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_alg_composite:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->createCompParams(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 93
    .end local v0    # "compSpec":Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;
    nop

    .line 99
    :goto_3f
    return-void

    .line 96
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown sigParamSpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 97
    if-nez p2, :cond_53

    const-string v2, "null"

    goto :goto_5b

    :cond_53
    invoke-interface {p2}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist buildComposite(Lcom/android/internal/org/bouncycastle/jcajce/CompositePrivateKey;)Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .registers 9
    .param p1, "privateKey"    # Lcom/android/internal/org/bouncycastle/jcajce/CompositePrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 195
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/CompositePrivateKey;->getPrivateKeys()Ljava/util/List;

    move-result-object v0

    .line 196
    .local v0, "privateKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PrivateKey;>;"
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 197
    .local v1, "sigAlgIds":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/Signature;

    .line 199
    .local v2, "sigs":[Ljava/security/Signature;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v3, v4, :cond_4b

    .line 201
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;->createSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/Signature;

    move-result-object v4

    aput-object v4, v2, v3

    .line 203
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    if-eqz v4, :cond_3d

    .line 205
    aget-object v4, v2, v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/PrivateKey;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v6}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_48

    .line 209
    :cond_3d
    aget-object v4, v2, v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/PrivateKey;

    invoke-virtual {v4, v5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 199
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 213
    .end local v3    # "i":I
    :cond_4b
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v3

    .line 214
    .local v3, "sStream":Ljava/io/OutputStream;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_53
    array-length v5, v2

    if-eq v4, v5, :cond_65

    .line 216
    new-instance v5, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    aget-object v6, v2, v4

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v3, v5

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 219
    .end local v4    # "i":I
    :cond_65
    move-object v4, v3

    .line 221
    .local v4, "sigStream":Ljava/io/OutputStream;
    new-instance v5, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;

    invoke-direct {v5, p0, v4, v2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;-><init>(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/io/OutputStream;[Ljava/security/Signature;)V
    :try_end_6b
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_6b} :catch_6c

    return-object v5

    .line 259
    .end local v0    # "privateKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PrivateKey;>;"
    .end local v1    # "sigAlgIds":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "sigs":[Ljava/security/Signature;
    .end local v3    # "sStream":Ljava/io/OutputStream;
    .end local v4    # "sigStream":Ljava/io/OutputStream;
    :catch_6c
    move-exception v0

    .line 261
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot create signer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist createCompParams(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 9
    .param p0, "compSpec"    # Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;

    .line 288
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    .line 289
    .local v0, "algFinder":Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 291
    .local v1, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->getAlgorithmNames()Ljava/util/List;

    move-result-object v2

    .line 292
    .local v2, "algorithmNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->getParameterSpecs()Ljava/util/List;

    move-result-object v3

    .line 294
    .local v3, "algorithmSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/security/spec/AlgorithmParameterSpec;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_49

    .line 296
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/spec/AlgorithmParameterSpec;

    .line 297
    .local v5, "sigSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-nez v5, :cond_2f

    .line 299
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v6}, Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_3d

    .line 301
    :cond_2f
    instance-of v6, v5, Ljava/security/spec/PSSParameterSpec;

    if-eqz v6, :cond_40

    .line 303
    move-object v6, v5

    check-cast v6, Ljava/security/spec/PSSParameterSpec;

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->createPSSParams(Ljava/security/spec/PSSParameterSpec;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 294
    .end local v5    # "sigSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 307
    .restart local v5    # "sigSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_40
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "unrecognized parameterSpec"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 311
    .end local v4    # "i":I
    .end local v5    # "sigSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_49
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v4
.end method

.method private static blacklist createPSSParams(Ljava/security/spec/PSSParameterSpec;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .registers 10
    .param p0, "pssSpec"    # Ljava/security/spec/PSSParameterSpec;

    .line 267
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    .line 268
    .local v0, "digFinder":Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;
    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 269
    .local v1, "digId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 271
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object v1, v2

    .line 273
    :cond_1f
    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 274
    .local v2, "mgfDig":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 276
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object v2, v3

    .line 279
    :cond_3f
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v4, v5, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 282
    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 283
    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v7

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    .line 279
    return-object v3
.end method


# virtual methods
.method public blacklist build(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .registers 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 125
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/CompositePrivateKey;

    if-eqz v0, :cond_c

    .line 127
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/CompositePrivateKey;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->buildComposite(Lcom/android/internal/org/bouncycastle/jcajce/CompositePrivateKey;)Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    move-result-object v0

    return-object v0

    .line 132
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-nez v0, :cond_3f

    .line 134
    sget-object v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->isAlgIdFromPrivate:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 136
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 137
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgSpec:Ljava/security/spec/AlgorithmParameterSpec;

    goto :goto_3f

    .line 141
    :cond_30
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->signatureAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 142
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 145
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 146
    .local v0, "signatureAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;->createSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/Signature;

    move-result-object v1

    .line 148
    .local v1, "sig":Ljava/security/Signature;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_53

    .line 150
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, p1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_56

    .line 154
    :cond_53
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 157
    :goto_56
    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;-><init>(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    :try_end_5b
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_5b} :catch_5c

    return-object v2

    .line 184
    .end local v0    # "signatureAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_5c
    move-exception v0

    .line 186
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot create signer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setProvider(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
    .registers 4
    .param p1, "providerName"    # Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    .line 112
    return-object p0
.end method

.method public blacklist setProvider(Ljava/security/Provider;)Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
    .registers 4
    .param p1, "provider"    # Ljava/security/Provider;

    .line 103
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    .line 105
    return-object p0
.end method

.method public blacklist setSecureRandom(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
    .registers 2
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 117
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    .line 119
    return-object p0
.end method
