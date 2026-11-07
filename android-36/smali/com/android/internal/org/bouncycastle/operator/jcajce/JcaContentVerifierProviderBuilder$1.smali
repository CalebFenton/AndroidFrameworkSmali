.class Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;
.super Ljava/lang/Object;
.source "JcaContentVerifierProviderBuilder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

.field final synthetic blacklist val$certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

.field final synthetic blacklist val$certificate:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;->val$certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;->val$certificate:Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    .registers 6
    .param p1, "algorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_alg_composite:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 96
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;->val$certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->-$$Nest$mcreateCompositeVerifier(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object v0

    return-object v0

    .line 103
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->-$$Nest$fgethelper(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;)Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;->createSignature(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/Signature;

    move-result-object v0

    .line 105
    .local v0, "sig":Ljava/security/Signature;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;->val$certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_2c
    .catch Ljava/security/GeneralSecurityException; {:try_start_19 .. :try_end_2c} :catch_47

    .line 110
    nop

    .line 112
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;->val$certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->-$$Nest$mcreateRawSig(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v1

    .line 114
    .local v1, "rawSig":Ljava/security/Signature;
    if-eqz v1, :cond_41

    .line 116
    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;Ljava/security/Signature;)V

    return-object v2

    .line 120
    :cond_41
    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;)V

    return-object v2

    .line 107
    .end local v0    # "sig":Ljava/security/Signature;
    .end local v1    # "rawSig":Ljava/security/Signature;
    :catch_47
    move-exception v0

    .line 109
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

.method public blacklist getAssociatedCertificate()Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$1;->val$certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public blacklist hasAssociatedCertificate()Z
    .registers 2

    .line 83
    const/4 v0, 0x1

    return v0
.end method
