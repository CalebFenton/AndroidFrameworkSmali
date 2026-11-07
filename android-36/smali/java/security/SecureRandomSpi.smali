.class public abstract Ljava/security/SecureRandomSpi;
.super Ljava/lang/Object;
.source "SecureRandomSpi.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = -0x2985338206ba2b96L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/security/SecureRandomParameters;)V
    .registers 2
    .param p1, "params"    # Ljava/security/SecureRandomParameters;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method


# virtual methods
.method protected abstract whitelist test-api engineGenerateSeed(I)[B
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/SecureRandomParameters;
    .registers 2

    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract whitelist test-api engineNextBytes([B)V
.end method

.method protected whitelist test-api engineNextBytes([BLjava/security/SecureRandomParameters;)V
    .registers 4
    .param p1, "bytes"    # [B
    .param p2, "params"    # Ljava/security/SecureRandomParameters;

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api engineReseed(Ljava/security/SecureRandomParameters;)V
    .registers 3
    .param p1, "params"    # Ljava/security/SecureRandomParameters;

    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract whitelist test-api engineSetSeed([B)V
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
