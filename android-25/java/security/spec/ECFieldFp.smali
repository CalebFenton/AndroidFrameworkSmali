.class public Ljava/security/spec/ECFieldFp;
.super Ljava/lang/Object;
.source "ECFieldFp.java"

# interfaces
.implements Ljava/security/spec/ECField;


# instance fields
.field private p:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "p is not positive"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 56
    :cond_0
    iput-object p1, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    #@15
    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 84
    if-ne p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 85
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECFieldFp;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 86
    iget-object v0, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    #@a
    check-cast p1, Ljava/security/spec/ECFieldFp;

    #@c
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    #@e
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 88
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Ljava/security/spec/ECFieldFp;->p:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method
