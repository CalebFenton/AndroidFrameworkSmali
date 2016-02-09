.class public Ljava/security/spec/RSAPublicKeySpec;
.super Ljava/lang/Object;
.source "RSAPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final modulus:Ljava/math/BigInteger;

.field private final publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Ljava/security/spec/RSAPublicKeySpec;->modulus:Ljava/math/BigInteger;

    #@5
    .line 46
    iput-object p2, p0, Ljava/security/spec/RSAPublicKeySpec;->publicExponent:Ljava/math/BigInteger;

    #@7
    .line 44
    return-void
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Ljava/security/spec/RSAPublicKeySpec;->modulus:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Ljava/security/spec/RSAPublicKeySpec;->publicExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
