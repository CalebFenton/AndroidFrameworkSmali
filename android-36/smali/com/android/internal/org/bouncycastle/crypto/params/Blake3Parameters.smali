.class public Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;
.super Ljava/lang/Object;
.source "Blake3Parameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# static fields
.field private static final blacklist KEYLEN:I = 0x20


# instance fields
.field private blacklist theContext:[B

.field private blacklist theKey:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist context([B)Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;
    .registers 3
    .param p0, "pContext"    # [B

    .line 36
    if-eqz p0, :cond_e

    .line 40
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;-><init>()V

    .line 41
    .local v0, "myParams":Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;->theContext:[B

    .line 42
    return-object v0

    .line 38
    .end local v0    # "myParams":Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist key([B)Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;
    .registers 3
    .param p0, "pKey"    # [B

    .line 52
    if-eqz p0, :cond_13

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_13

    .line 56
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;-><init>()V

    .line 57
    .local v0, "myParams":Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;->theKey:[B

    .line 58
    return-object v0

    .line 54
    .end local v0    # "myParams":Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid keyLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist clearKey()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;->theKey:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 76
    return-void
.end method

.method public blacklist getContext()[B
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;->theContext:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey()[B
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/Blake3Parameters;->theKey:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
