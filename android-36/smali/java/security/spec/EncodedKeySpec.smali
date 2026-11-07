.class public abstract Ljava/security/spec/EncodedKeySpec;
.super Ljava/lang/Object;
.source "EncodedKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private blacklist algorithmName:Ljava/lang/String;

.field private greylist-max-o encodedKey:[B


# direct methods
.method public constructor whitelist test-api <init>([B)V
    .registers 3
    .param p1, "encodedKey"    # [B

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    .line 71
    return-void
.end method

.method protected constructor whitelist test-api <init>([BLjava/lang/String;)V
    .registers 5
    .param p1, "encodedKey"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    if-eqz p2, :cond_1e

    .line 96
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 100
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    .line 101
    iput-object p2, p0, Ljava/security/spec/EncodedKeySpec;->algorithmName:Ljava/lang/String;

    .line 103
    return-void

    .line 97
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm name may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithm name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist clear()V
    .registers 3

    .line 146
    iget-object v0, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 147
    return-void
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Ljava/security/spec/EncodedKeySpec;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 122
    iget-object v0, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public abstract whitelist test-api getFormat()Ljava/lang/String;
.end method
