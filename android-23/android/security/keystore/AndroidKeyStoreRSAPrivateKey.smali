.class public Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;
.super Landroid/security/keystore/AndroidKeyStorePrivateKey;
.source "AndroidKeyStoreRSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAKey;


# instance fields
.field private final mModulus:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "modulus"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 33
    const-string/jumbo v0, "RSA"

    #@3
    invoke-direct {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 34
    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    #@8
    .line 32
    return-void
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
