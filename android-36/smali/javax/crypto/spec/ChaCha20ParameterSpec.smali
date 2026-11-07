.class public final Ljavax/crypto/spec/ChaCha20ParameterSpec;
.super Ljava/lang/Object;
.source "ChaCha20ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static final blacklist NONCE_LENGTH:I = 0xc


# instance fields
.field private final blacklist counter:I

.field private final blacklist nonce:[B


# direct methods
.method public constructor whitelist test-api <init>([BI)V
    .registers 5
    .param p1, "nonce"    # [B
    .param p2, "counter"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p2, p0, Ljavax/crypto/spec/ChaCha20ParameterSpec;->counter:I

    .line 66
    const-string v0, "Nonce must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/ChaCha20ParameterSpec;->nonce:[B

    .line 68
    iget-object v0, p0, Ljavax/crypto/spec/ChaCha20ParameterSpec;->nonce:[B

    array-length v0, v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1a

    .line 72
    return-void

    .line 69
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nonce must be 12-bytes in length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getCounter()I
    .registers 2

    .line 90
    iget v0, p0, Ljavax/crypto/spec/ChaCha20ParameterSpec;->counter:I

    return v0
.end method

.method public whitelist test-api getNonce()[B
    .registers 2

    .line 81
    iget-object v0, p0, Ljavax/crypto/spec/ChaCha20ParameterSpec;->nonce:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
