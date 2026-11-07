.class public Ljavax/crypto/spec/PBEParameterSpec;
.super Ljava/lang/Object;
.source "PBEParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private greylist-max-o iterationCount:I

.field private greylist-max-o paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private greylist-max-o salt:[B


# direct methods
.method public constructor whitelist test-api <init>([BI)V
    .registers 4
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 56
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    .line 57
    iput p2, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    .line 58
    return-void
.end method

.method public constructor whitelist test-api <init>([BILjava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I
    .param p3, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 75
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    .line 76
    iput p2, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    .line 77
    iput-object p3, p0, Ljavax/crypto/spec/PBEParameterSpec;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 78
    return-void
.end method


# virtual methods
.method public whitelist test-api getIterationCount()I
    .registers 2

    .line 96
    iget v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    return v0
.end method

.method public whitelist test-api getParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 107
    iget-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getSalt()[B
    .registers 2

    .line 87
    iget-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
