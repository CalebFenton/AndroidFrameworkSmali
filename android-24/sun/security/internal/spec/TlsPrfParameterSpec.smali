.class public Lsun/security/internal/spec/TlsPrfParameterSpec;
.super Ljava/lang/Object;
.source "TlsPrfParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final label:Ljava/lang/String;

.field private final outputLength:I

.field private final prfBlockSize:I

.field private final prfHashAlg:Ljava/lang/String;

.field private final prfHashLength:I

.field private final secret:Ljavax/crypto/SecretKey;

.field private final seed:[B


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljava/lang/String;[BILjava/lang/String;II)V
    .locals 2
    .param p1, "secret"    # Ljavax/crypto/SecretKey;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "seed"    # [B
    .param p4, "outputLength"    # I
    .param p5, "prfHashAlg"    # Ljava/lang/String;
    .param p6, "prfHashLength"    # I
    .param p7, "prfBlockSize"    # I

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    if-eqz p2, :cond_0

    #@5
    if-nez p3, :cond_1

    #@7
    .line 76
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v1, "label and seed must not be null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 78
    :cond_1
    if-gtz p4, :cond_2

    #@12
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "outputLength must be positive"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 81
    :cond_2
    iput-object p1, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->secret:Ljavax/crypto/SecretKey;

    #@1d
    .line 82
    iput-object p2, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->label:Ljava/lang/String;

    #@1f
    .line 83
    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, [B

    #@25
    iput-object v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->seed:[B

    #@27
    .line 84
    iput p4, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->outputLength:I

    #@29
    .line 85
    iput-object p5, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->prfHashAlg:Ljava/lang/String;

    #@2b
    .line 86
    iput p6, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->prfHashLength:I

    #@2d
    .line 87
    iput p7, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->prfBlockSize:I

    #@2f
    .line 74
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->label:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOutputLength()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->outputLength:I

    #@2
    return v0
.end method

.method public getPRFBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 155
    iget v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->prfBlockSize:I

    #@2
    return v0
.end method

.method public getPRFHashAlg()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->prfHashAlg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPRFHashLength()I
    .locals 1

    #@0
    .prologue
    .line 146
    iget v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->prfHashLength:I

    #@2
    return v0
.end method

.method public getSecret()Ljavax/crypto/SecretKey;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->secret:Ljavax/crypto/SecretKey;

    #@2
    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->seed:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method
