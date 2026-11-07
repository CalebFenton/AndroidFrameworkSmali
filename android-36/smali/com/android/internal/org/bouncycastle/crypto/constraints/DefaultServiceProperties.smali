.class public Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;
.super Ljava/lang/Object;
.source "DefaultServiceProperties.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;


# instance fields
.field private final blacklist algorithm:Ljava/lang/String;

.field private final blacklist bitsOfSecurity:I

.field private final blacklist params:Ljava/lang/Object;

.field private final blacklist purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "bitsOfSecurity"    # I

    .line 20
    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "bitsOfSecurity"    # I
    .param p3, "params"    # Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "bitsOfSecurity"    # I
    .param p3, "params"    # Ljava/lang/Object;
    .param p4, "purpose"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;->algorithm:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;->bitsOfSecurity:I

    .line 32
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;->params:Ljava/lang/Object;

    .line 33
    instance-of v0, p3, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    if-nez v0, :cond_10

    .line 37
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 38
    return-void

    .line 35
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params should not be CryptoServicePurpose"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist bitsOfSecurity()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;->bitsOfSecurity:I

    return v0
.end method

.method public blacklist getParams()Ljava/lang/Object;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;->params:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getPurpose()Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0
.end method

.method public blacklist getServiceName()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;->algorithm:Ljava/lang/String;

    return-object v0
.end method
