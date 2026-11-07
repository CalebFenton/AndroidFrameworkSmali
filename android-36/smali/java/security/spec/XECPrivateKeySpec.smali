.class public Ljava/security/spec/XECPrivateKeySpec;
.super Ljava/lang/Object;
.source "XECPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final blacklist params:Ljava/security/spec/AlgorithmParameterSpec;

.field private final blacklist scalar:[B


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/spec/AlgorithmParameterSpec;[B)V
    .registers 4
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "scalar"    # [B

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "params must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    const-string v0, "scalar must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Ljava/security/spec/XECPrivateKeySpec;->params:Ljava/security/spec/AlgorithmParameterSpec;

    .line 61
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/spec/XECPrivateKeySpec;->scalar:[B

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist test-api getParams()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 70
    iget-object v0, p0, Ljava/security/spec/XECPrivateKeySpec;->params:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getScalar()[B
    .registers 2

    .line 80
    iget-object v0, p0, Ljava/security/spec/XECPrivateKeySpec;->scalar:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
