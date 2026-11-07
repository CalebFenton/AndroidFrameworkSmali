.class Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;
.super Ljava/lang/Object;
.source "JcaContentVerifierProviderBuilder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeVerifier"
.end annotation


# instance fields
.field private blacklist sigs:[Ljava/security/Signature;

.field private blacklist stream:Ljava/io/OutputStream;


# direct methods
.method public constructor blacklist <init>([Ljava/security/Signature;)V
    .registers 7
    .param p1, "sigs"    # [Ljava/security/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;->sigs:[Ljava/security/Signature;

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "start":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_10

    aget-object v1, p1, v0

    if-nez v1, :cond_10

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 406
    :cond_10
    array-length v1, p1

    if-eq v0, v1, :cond_37

    .line 410
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;->stream:Ljava/io/OutputStream;

    .line 411
    add-int/lit8 v1, v0, 0x1

    .local v1, "i":I
    :goto_1d
    array-length v2, p1

    if-eq v1, v2, :cond_36

    .line 413
    aget-object v2, p1, v1

    if-eqz v2, :cond_33

    .line 415
    new-instance v2, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;->stream:Ljava/io/OutputStream;

    aget-object v4, p1, v1

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;->stream:Ljava/io/OutputStream;

    .line 411
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 418
    .end local v1    # "i":I
    :cond_36
    return-void

    .line 408
    :cond_37
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;

    const-string v2, "no matching signature found in composite"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 3

    .line 422
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_alg_composite:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v0
.end method

.method public blacklist getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;->stream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public blacklist verify([B)Z
    .registers 7
    .param p1, "expected"    # [B

    .line 434
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 435
    .local v0, "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x0

    .line 436
    .local v1, "failed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_2c

    .line 438
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;->sigs:[Ljava/security/Signature;

    aget-object v3, v3, v2

    if-eqz v3, :cond_29

    .line 440
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;->sigs:[Ljava/security/Signature;

    aget-object v3, v3, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v3
    :try_end_26
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_26} :catch_2f

    if-nez v3, :cond_29

    .line 442
    const/4 v1, 0x1

    .line 436
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 446
    .end local v2    # "i":I
    :cond_2c
    xor-int/lit8 v2, v1, 0x1

    return v2

    .line 448
    .end local v0    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v1    # "failed":Z
    :catch_2f
    move-exception v0

    .line 450
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception obtaining signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
