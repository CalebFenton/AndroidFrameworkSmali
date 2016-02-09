.class public Lcom/android/org/conscrypt/OpenSSLRandom;
.super Ljava/security/SecureRandomSpi;
.source "OpenSSLRandom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x760c2179bb8f6dacL


# instance fields
.field private mSeeded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    #@3
    return-void
.end method

.method public static seedOpenSSLPRNGFromLinuxRNG()V
    .locals 6

    #@0
    .prologue
    .line 76
    const/16 v1, 0x400

    #@2
    .line 77
    .local v1, "seedLengthInBytes":I
    const-string/jumbo v2, "/dev/urandom"

    #@5
    const-wide/16 v4, 0x400

    #@7
    invoke-static {v2, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_load_file(Ljava/lang/String;J)I

    #@a
    move-result v0

    #@b
    .line 76
    .local v0, "bytesRead":I
    const/16 v2, 0x400

    #@d
    .line 78
    if-eq v0, v2, :cond_0

    #@f
    .line 79
    new-instance v2, Ljava/lang/SecurityException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Failed to read sufficient bytes from /dev/urandom. Expected: "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    .line 80
    const-string/jumbo v4, ", actual: "

    #@24
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 75
    :cond_0
    return-void
.end method

.method private selfSeedIfNotSeeded()V
    .locals 1

    #@0
    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRandom;->mSeeded:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 62
    return-void

    #@5
    .line 65
    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLRandom;->seedOpenSSLPRNGFromLinuxRNG()V

    #@8
    .line 66
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRandom;->mSeeded:Z

    #@b
    .line 57
    return-void
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 1
    .param p1, "numBytes"    # I

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRandom;->selfSeedIfNotSeeded()V

    #@3
    .line 48
    new-array v0, p1, [B

    #@5
    .line 49
    .local v0, "output":[B
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    #@8
    .line 50
    return-object v0
.end method

.method protected engineNextBytes([B)V
    .locals 0
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRandom;->selfSeedIfNotSeeded()V

    #@3
    .line 42
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    #@6
    .line 40
    return-void
.end method

.method protected engineSetSeed([B)V
    .locals 2
    .param p1, "seed"    # [B

    #@0
    .prologue
    .line 29
    if-nez p1, :cond_0

    #@2
    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "seed == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRandom;->selfSeedIfNotSeeded()V

    #@e
    .line 36
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_seed([B)V

    #@11
    .line 28
    return-void
.end method
