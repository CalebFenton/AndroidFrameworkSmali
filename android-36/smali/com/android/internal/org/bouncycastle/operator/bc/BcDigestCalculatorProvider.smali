.class public Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider;
.super Ljava/lang/Object;
.source "BcDigestCalculatorProvider.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;
    }
.end annotation


# instance fields
.field private blacklist digestProvider:Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    .registers 5
    .param p1, "algorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;

    move-result-object v0

    .line 26
    .local v0, "dig":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 28
    .local v1, "stream":Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;
    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$1;-><init>(Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;)V

    return-object v2
.end method
