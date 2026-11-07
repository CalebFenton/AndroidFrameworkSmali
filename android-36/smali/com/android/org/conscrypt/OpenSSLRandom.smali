.class public final Lcom/android/org/conscrypt/OpenSSLRandom;
.super Ljava/security/SecureRandomSpi;
.source "OpenSSLRandom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = 0x760c2179bb8f6dadL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSeed(I)[B
    .registers 3
    .param p1, "numBytes"    # I

    .line 50
    new-array v0, p1, [B

    .line 51
    .local v0, "output":[B
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    .line 52
    return-object v0
.end method

.method protected whitelist test-api engineNextBytes([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .line 45
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    .line 46
    return-void
.end method

.method protected whitelist test-api engineSetSeed([B)V
    .registers 4
    .param p1, "seed"    # [B

    .line 38
    if-eqz p1, :cond_3

    .line 41
    return-void

    .line 39
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "seed == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
