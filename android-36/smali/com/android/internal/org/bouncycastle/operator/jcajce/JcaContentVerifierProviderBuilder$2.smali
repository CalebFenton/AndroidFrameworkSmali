.class Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;
.super Ljava/lang/Object;
.source "JcaContentVerifierProviderBuilder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

.field final synthetic blacklist val$publicKey:Ljava/security/PublicKey;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->val$publicKey:Ljava/security/PublicKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    .registers 7
    .param p1, "algorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_alg_composite:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->val$publicKey:Ljava/security/PublicKey;

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->-$$Nest$mcreateCompositeVerifier(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object v0

    return-object v0

    .line 150
    :cond_15
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->val$publicKey:Ljava/security/PublicKey;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    if-eqz v0, :cond_5c

    .line 152
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->val$publicKey:Ljava/security/PublicKey;

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->getPublicKeys()Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_54

    .line 158
    :try_start_2a
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    invoke-static {v2, p1, v3}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->-$$Nest$mcreateSignature(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v2

    .line 160
    .local v2, "sig":Ljava/security/Signature;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    invoke-static {v3, p1, v4}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->-$$Nest$mcreateRawSig(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v3

    .line 162
    .local v3, "rawSig":Ljava/security/Signature;
    if-eqz v3, :cond_4a

    .line 164
    new-instance v4, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;

    invoke-direct {v4, p1, v2, v3}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;Ljava/security/Signature;)V

    return-object v4

    .line 168
    :cond_4a
    new-instance v4, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;

    invoke-direct {v4, p1, v2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;)V
    :try_end_4f
    .catch Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException; {:try_start_2a .. :try_end_4f} :catch_50

    return-object v4

    .line 171
    .end local v2    # "sig":Ljava/security/Signature;
    .end local v3    # "rawSig":Ljava/security/Signature;
    :catch_50
    move-exception v2

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 177
    .end local v1    # "i":I
    :cond_54
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;

    const-string v2, "no matching algorithm found for key"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    :cond_5c
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->val$publicKey:Ljava/security/PublicKey;

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->-$$Nest$mcreateSignature(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v0

    .line 183
    .local v0, "sig":Ljava/security/Signature;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->val$publicKey:Ljava/security/PublicKey;

    invoke-static {v1, p1, v2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->-$$Nest$mcreateRawSig(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v1

    .line 185
    .local v1, "rawSig":Ljava/security/Signature;
    if-eqz v1, :cond_74

    .line 187
    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;Ljava/security/Signature;)V

    return-object v2

    .line 191
    :cond_74
    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;)V

    return-object v2
.end method

.method public blacklist getAssociatedCertificate()Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .registers 2

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasAssociatedCertificate()Z
    .registers 2

    .line 134
    const/4 v0, 0x0

    return v0
.end method
