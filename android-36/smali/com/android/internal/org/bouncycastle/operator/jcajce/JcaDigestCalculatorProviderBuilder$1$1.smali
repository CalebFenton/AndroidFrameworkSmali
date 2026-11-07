.class Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1$1;
.super Ljava/lang/Object;
.source "JcaDigestCalculatorProviderBuilder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$algorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic blacklist val$stream:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;
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

    .line 74
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1$1;->val$algorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1$1;->val$stream:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1$1;->val$algorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getDigest()[B
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1$1;->val$stream:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;->getDigest()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1$1;->val$stream:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;

    return-object v0
.end method
