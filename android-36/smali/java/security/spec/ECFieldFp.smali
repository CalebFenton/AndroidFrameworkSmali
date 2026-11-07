.class public Ljava/security/spec/ECFieldFp;
.super Ljava/lang/Object;
.source "ECFieldFp.java"

# interfaces
.implements Ljava/security/spec/ECField;


# instance fields
.field private greylist-max-o p:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "p"    # Ljava/math/BigInteger;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 56
    iput-object p1, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    .line 57
    return-void

    .line 54
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "p is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 87
    :cond_4
    instance-of v1, p1, Ljava/security/spec/ECFieldFp;

    if-eqz v1, :cond_16

    .line 86
    move-object v1, p1

    check-cast v1, Ljava/security/spec/ECFieldFp;

    .local v1, "other":Ljava/security/spec/ECFieldFp;
    iget-object v2, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    iget-object v3, v1, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    .line 87
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_17

    .end local v1    # "other":Ljava/security/spec/ECFieldFp;
    :cond_16
    const/4 v0, 0x0

    .line 86
    :goto_17
    return v0
.end method

.method public whitelist test-api getFieldSize()I
    .registers 2

    .line 65
    iget-object v0, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getP()Ljava/math/BigInteger;
    .registers 2

    .line 73
    iget-object v0, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 95
    iget-object v0, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method
