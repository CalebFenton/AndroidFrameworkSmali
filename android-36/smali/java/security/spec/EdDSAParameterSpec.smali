.class public Ljava/security/spec/EdDSAParameterSpec;
.super Ljava/lang/Object;
.source "EdDSAParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final blacklist context:[B

.field private final blacklist prehash:Z


# direct methods
.method public constructor whitelist test-api <init>(Z)V
    .registers 3
    .param p1, "prehash"    # Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Ljava/security/spec/EdDSAParameterSpec;->prehash:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/spec/EdDSAParameterSpec;->context:[B

    .line 63
    return-void
.end method

.method public constructor whitelist test-api <init>(Z[B)V
    .registers 5
    .param p1, "prehash"    # Z
    .param p2, "context"    # [B

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "context may not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    array-length v0, p2

    const/16 v1, 0xff

    if-gt v0, v1, :cond_18

    .line 84
    iput-boolean p1, p0, Ljava/security/spec/EdDSAParameterSpec;->prehash:Z

    .line 85
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/spec/EdDSAParameterSpec;->context:[B

    .line 86
    return-void

    .line 80
    :cond_18
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "context length cannot be greater than 255"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getContext()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "[B>;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Ljava/security/spec/EdDSAParameterSpec;->context:[B

    if-nez v0, :cond_9

    .line 105
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 107
    :cond_9
    iget-object v0, p0, Ljava/security/spec/EdDSAParameterSpec;->context:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isPrehash()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Ljava/security/spec/EdDSAParameterSpec;->prehash:Z

    return v0
.end method
