.class public Ljava/security/spec/DSAPrivateKeySpec;
.super Ljava/lang/Object;
.source "DSAPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final g:Ljava/math/BigInteger;

.field private final p:Ljava/math/BigInteger;

.field private final q:Ljava/math/BigInteger;

.field private final x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "p"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "g"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Ljava/security/spec/DSAPrivateKeySpec;->x:Ljava/math/BigInteger;

    #@5
    .line 51
    iput-object p2, p0, Ljava/security/spec/DSAPrivateKeySpec;->p:Ljava/math/BigInteger;

    #@7
    .line 52
    iput-object p3, p0, Ljava/security/spec/DSAPrivateKeySpec;->q:Ljava/math/BigInteger;

    #@9
    .line 53
    iput-object p4, p0, Ljava/security/spec/DSAPrivateKeySpec;->g:Ljava/math/BigInteger;

    #@b
    .line 49
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Ljava/security/spec/DSAPrivateKeySpec;->g:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Ljava/security/spec/DSAPrivateKeySpec;->p:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Ljava/security/spec/DSAPrivateKeySpec;->q:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Ljava/security/spec/DSAPrivateKeySpec;->x:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
