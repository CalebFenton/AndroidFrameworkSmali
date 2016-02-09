.class public final Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$NoPadding;
.super Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 54
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;-><init>(I)V

    #@4
    .line 53
    return-void
.end method


# virtual methods
.method protected adjustConfigForEncryptingWithPrivateKey()Z
    .locals 1

    #@0
    .prologue
    .line 61
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$NoPadding;->setKeymasterPurposeOverride(I)V

    #@4
    .line 62
    const/4 v0, 0x1

    #@5
    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 89
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public bridge synthetic finalize()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->finalize()V

    #@3
    return-void
.end method

.method protected final getAdditionalEntropyAmountForBegin()I
    .locals 1

    #@0
    .prologue
    .line 94
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected final getAdditionalEntropyAmountForFinish()I
    .locals 1

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected initAlgorithmSpecificParameters()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    return-void
.end method

.method protected initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .locals 3
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    if-eqz p1, :cond_0

    #@2
    .line 82
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@4
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Unexpected parameters: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, ". No parameters supported"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 82
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 79
    :cond_0
    return-void
.end method

.method protected initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    if-eqz p1, :cond_0

    #@2
    .line 72
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@4
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Unexpected parameters: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, ". No parameters supported"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 72
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 70
    :cond_0
    return-void
.end method
