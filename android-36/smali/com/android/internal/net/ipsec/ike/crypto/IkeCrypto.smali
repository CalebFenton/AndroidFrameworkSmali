.class abstract Lcom/android/internal/net/ipsec/ike/crypto/IkeCrypto;
.super Ljava/lang/Object;
.source "IkeCrypto.java"


# static fields
.field protected static final blacklist ALGO_NAME_JCE_UNSUPPORTED:Ljava/lang/String; = "ALGO_NAME_JCE_UNSUPPORTED"


# instance fields
.field private final blacklist mAlgorithmId:I

.field private final blacklist mAlgorithmName:Ljava/lang/String;

.field private final blacklist mKeyLength:I


# direct methods
.method protected constructor blacklist <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "algorithmId"    # I
    .param p2, "keyLength"    # I
    .param p3, "algorithmName"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCrypto;->mAlgorithmId:I

    .line 33
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCrypto;->mKeyLength:I

    .line 34
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCrypto;->mAlgorithmName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method protected blacklist getAlgorithmId()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCrypto;->mAlgorithmId:I

    return v0
.end method

.method protected blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCrypto;->mAlgorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKeyLength()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeCrypto;->mKeyLength:I

    return v0
.end method

.method public abstract blacklist getTypeString()Ljava/lang/String;
.end method
