.class public final Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;
.super Ljava/lang/Object;
.source "SecretKeyWithEncapsulation.java"

# interfaces
.implements Ljavax/crypto/SecretKey;


# instance fields
.field private final blacklist encapsulation:[B

.field private final blacklist secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor blacklist <init>(Ljavax/crypto/SecretKey;[B)V
    .registers 4
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "encapsulation"    # [B

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    .line 27
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->encapsulation:[B

    .line 28
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0, p1}, Ljavax/crypto/SecretKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncapsulation()[B
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->encapsulation:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->hashCode()I

    move-result v0

    return v0
.end method
