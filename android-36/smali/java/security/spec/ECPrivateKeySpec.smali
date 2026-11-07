.class public Ljava/security/spec/ECPrivateKeySpec;
.super Ljava/lang/Object;
.source "ECPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private greylist-max-o params:Ljava/security/spec/ECParameterSpec;

.field private greylist-max-o s:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V
    .registers 5
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "params"    # Ljava/security/spec/ECParameterSpec;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_14

    .line 58
    if-eqz p2, :cond_c

    .line 61
    iput-object p1, p0, Ljava/security/spec/ECPrivateKeySpec;->s:Ljava/math/BigInteger;

    .line 62
    iput-object p2, p0, Ljava/security/spec/ECPrivateKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    .line 63
    return-void

    .line 59
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "s is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .line 79
    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getS()Ljava/math/BigInteger;
    .registers 2

    .line 70
    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->s:Ljava/math/BigInteger;

    return-object v0
.end method
