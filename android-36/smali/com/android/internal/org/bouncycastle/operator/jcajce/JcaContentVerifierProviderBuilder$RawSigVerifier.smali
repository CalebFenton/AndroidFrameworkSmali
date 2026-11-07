.class Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;
.super Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;
.source "JcaContentVerifierProviderBuilder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawSigVerifier"
.end annotation


# instance fields
.field private blacklist rawSignature:Ljava/security/Signature;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;Ljava/security/Signature;)V
    .registers 4
    .param p1, "algorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "standardSig"    # Ljava/security/Signature;
    .param p3, "rawSignature"    # Ljava/security/Signature;

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;)V

    .line 337
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    .line 338
    return-void
.end method


# virtual methods
.method public blacklist verify([B)Z
    .registers 4
    .param p1, "expected"    # [B

    .line 344
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;->verify([B)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_c

    .line 352
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 357
    goto :goto_b

    .line 354
    :catch_a
    move-exception v1

    .line 344
    :goto_b
    return v0

    .line 350
    :catchall_c
    move-exception v0

    .line 352
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    .line 357
    goto :goto_14

    .line 354
    :catch_13
    move-exception v1

    .line 358
    :goto_14
    throw v0
.end method

.method public blacklist verify([B[B)Z
    .registers 7
    .param p1, "digest"    # [B
    .param p2, "expected"    # [B

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 367
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result v0
    :try_end_b
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_b} :catch_15
    .catchall {:try_start_0 .. :try_end_b} :catchall_13

    .line 379
    :try_start_b
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    invoke-virtual {v1, p2}, Ljava/security/Signature;->verify([B)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_11

    .line 384
    goto :goto_12

    .line 381
    :catch_11
    move-exception v1

    .line 367
    :goto_12
    return v0

    .line 377
    :catchall_13
    move-exception v0

    goto :goto_33

    .line 369
    :catch_15
    move-exception v0

    .line 371
    .local v0, "e":Ljava/security/SignatureException;
    :try_start_16
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception obtaining raw signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;
    .end local p1    # "digest":[B
    .end local p2    # "expected":[B
    throw v1
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_13

    .line 379
    .end local v0    # "e":Ljava/security/SignatureException;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;
    .restart local p1    # "digest":[B
    .restart local p2    # "expected":[B
    :goto_33
    :try_start_33
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    invoke-virtual {v1, p2}, Ljava/security/Signature;->verify([B)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_39

    .line 384
    goto :goto_3a

    .line 381
    :catch_39
    move-exception v1

    .line 385
    :goto_3a
    throw v0
.end method
