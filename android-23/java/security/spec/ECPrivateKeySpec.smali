.class public Ljava/security/spec/ECPrivateKeySpec;
.super Ljava/lang/Object;
.source "ECPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final params:Ljava/security/spec/ECParameterSpec;

.field private final s:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V
    .locals 2
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "params"    # Ljava/security/spec/ECParameterSpec;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Ljava/security/spec/ECPrivateKeySpec;->s:Ljava/math/BigInteger;

    #@5
    .line 42
    iput-object p2, p0, Ljava/security/spec/ECPrivateKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    #@7
    .line 44
    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->s:Ljava/math/BigInteger;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v1, "s == null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 47
    :cond_0
    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    #@16
    if-nez v0, :cond_1

    #@18
    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v1, "params == null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    #@2
    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->s:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
