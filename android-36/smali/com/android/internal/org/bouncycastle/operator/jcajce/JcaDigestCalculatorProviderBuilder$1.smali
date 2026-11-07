.class Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;
.super Ljava/lang/Object;
.source "JcaDigestCalculatorProviderBuilder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    .registers 6
    .param p1, "algorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;->this$0:Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->-$$Nest$fgethelper(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;)Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;->createDigest(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 66
    .local v0, "dig":Ljava/security/MessageDigest;
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;-><init>(Ljava/security/MessageDigest;)V
    :try_end_f
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_f} :catch_16

    .line 71
    .end local v0    # "dig":Ljava/security/MessageDigest;
    .local v1, "stream":Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;
    nop

    .line 73
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1$1;-><init>(Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;)V

    return-object v0

    .line 68
    .end local v1    # "stream":Lcom/android/internal/org/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;
    :catch_16
    move-exception v0

    .line 70
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
