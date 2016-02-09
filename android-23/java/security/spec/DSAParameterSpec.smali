.class public Ljava/security/spec/DSAParameterSpec;
.super Ljava/lang/Object;
.source "DSAParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Ljava/security/interfaces/DSAParams;


# instance fields
.field private final g:Ljava/math/BigInteger;

.field private final p:Ljava/math/BigInteger;

.field private final q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Ljava/security/spec/DSAParameterSpec;->p:Ljava/math/BigInteger;

    #@5
    .line 47
    iput-object p2, p0, Ljava/security/spec/DSAParameterSpec;->q:Ljava/math/BigInteger;

    #@7
    .line 48
    iput-object p3, p0, Ljava/security/spec/DSAParameterSpec;->g:Ljava/math/BigInteger;

    #@9
    .line 45
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Ljava/security/spec/DSAParameterSpec;->g:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Ljava/security/spec/DSAParameterSpec;->p:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Ljava/security/spec/DSAParameterSpec;->q:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
