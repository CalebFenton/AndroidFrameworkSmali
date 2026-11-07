.class public final Ljava/security/spec/EdECPrivateKeySpec;
.super Ljava/lang/Object;
.source "EdECPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final blacklist bytes:[B

.field private final blacklist params:Ljava/security/spec/NamedParameterSpec;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/spec/NamedParameterSpec;[B)V
    .registers 4
    .param p1, "params"    # Ljava/security/spec/NamedParameterSpec;
    .param p2, "bytes"    # [B

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "params must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    const-string v0, "bytes must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Ljava/security/spec/EdECPrivateKeySpec;->params:Ljava/security/spec/NamedParameterSpec;

    .line 60
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/spec/EdECPrivateKeySpec;->bytes:[B

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist test-api getBytes()[B
    .registers 2

    .line 79
    iget-object v0, p0, Ljava/security/spec/EdECPrivateKeySpec;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/NamedParameterSpec;
    .registers 2

    .line 69
    iget-object v0, p0, Ljava/security/spec/EdECPrivateKeySpec;->params:Ljava/security/spec/NamedParameterSpec;

    return-object v0
.end method
