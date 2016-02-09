.class public Ljavax/crypto/spec/DHParameterSpec;
.super Ljava/lang/Object;
.source "DHParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final g:Ljava/math/BigInteger;

.field private final l:I

.field private final p:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    #@5
    .line 43
    iput-object p2, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    #@7
    .line 44
    const/4 v0, 0x0

    #@8
    iput v0, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    #@a
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "l"    # I

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    #@5
    .line 61
    iput-object p2, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    #@7
    .line 62
    iput p3, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    #@9
    .line 59
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getL()I
    .locals 1

    #@0
    .prologue
    .line 89
    iget v0, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    #@2
    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
