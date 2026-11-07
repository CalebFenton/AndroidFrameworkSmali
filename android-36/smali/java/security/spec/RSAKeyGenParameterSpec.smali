.class public Ljava/security/spec/RSAKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "RSAKeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final whitelist test-api F0:Ljava/math/BigInteger;

.field public static final whitelist test-api F4:Ljava/math/BigInteger;


# instance fields
.field private blacklist keyParams:Ljava/security/spec/AlgorithmParameterSpec;

.field private greylist-max-o keysize:I

.field private greylist-max-o publicExponent:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 51
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljava/security/spec/RSAKeyGenParameterSpec;->F0:Ljava/math/BigInteger;

    .line 56
    const-wide/32 v0, 0x10001

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/math/BigInteger;)V
    .registers 4
    .param p1, "keysize"    # I
    .param p2, "publicExponent"    # Ljava/math/BigInteger;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 67
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "keysize"    # I
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "keyParams"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->keysize:I

    .line 81
    iput-object p2, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->publicExponent:Ljava/math/BigInteger;

    .line 82
    iput-object p3, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->keyParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 83
    return-void
.end method


# virtual methods
.method public whitelist test-api getKeyParams()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 111
    iget-object v0, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->keyParams:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getKeysize()I
    .registers 2

    .line 91
    iget v0, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->keysize:I

    return v0
.end method

.method public whitelist test-api getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 100
    iget-object v0, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
