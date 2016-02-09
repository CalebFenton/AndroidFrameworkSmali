.class public Ljava/security/spec/RSAKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "RSAKeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final F0:Ljava/math/BigInteger;

.field public static final F4:Ljava/math/BigInteger;


# instance fields
.field private final keysize:I

.field private final publicExponent:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 30
    const-wide/16 v0, 0x3

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Ljava/security/spec/RSAKeyGenParameterSpec;->F0:Ljava/math/BigInteger;

    #@8
    .line 35
    const-wide/32 v0, 0x10001

    #@b
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    #@11
    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 0
    .param p1, "keysize"    # I
    .param p2, "publicExponent"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput p1, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->keysize:I

    #@5
    .line 53
    iput-object p2, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->publicExponent:Ljava/math/BigInteger;

    #@7
    .line 51
    return-void
.end method


# virtual methods
.method public getKeysize()I
    .locals 1

    #@0
    .prologue
    .line 62
    iget v0, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->keysize:I

    #@2
    return v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->publicExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
