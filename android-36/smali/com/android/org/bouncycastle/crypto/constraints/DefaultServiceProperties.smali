.class public Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;
.super Ljava/lang/Object;
.source "DefaultServiceProperties.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;


# instance fields
.field private final blacklist algorithm:Ljava/lang/String;

.field private final blacklist bitsOfSecurity:I

.field private final blacklist params:Ljava/lang/Object;

.field private final blacklist purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    .line 20
    sget-object v1, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;->algorithm:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;->bitsOfSecurity:I

    .line 32
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;->params:Ljava/lang/Object;

    .line 33
    instance-of p1, p3, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    if-nez p1, :cond_10

    .line 37
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    return-void

    .line 35
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getServiceName()Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;->algorithm:Ljava/lang/String;

    return-object p0
.end method
