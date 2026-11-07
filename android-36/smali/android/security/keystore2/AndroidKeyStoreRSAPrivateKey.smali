.class public Landroid/security/keystore2/AndroidKeyStoreRSAPrivateKey;
.super Landroid/security/keystore2/AndroidKeyStorePrivateKey;
.source "AndroidKeyStoreRSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAKey;


# instance fields
.field private final blacklist mModulus:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Landroid/security/KeyStoreSecurityLevel;Ljava/math/BigInteger;)V
    .registers 14
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "keyId"    # J
    .param p4, "authorizations"    # [Landroid/system/keystore2/Authorization;
    .param p5, "securityLevel"    # Landroid/security/KeyStoreSecurityLevel;
    .param p6, "modulus"    # Ljava/math/BigInteger;

    .line 43
    const-string v5, "RSA"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, p5

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "keyId":J
    .end local p4    # "authorizations":[Landroid/system/keystore2/Authorization;
    .end local p5    # "securityLevel":Landroid/security/KeyStoreSecurityLevel;
    .local v1, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v2, "keyId":J
    .local v4, "authorizations":[Landroid/system/keystore2/Authorization;
    .local v6, "securityLevel":Landroid/security/KeyStoreSecurityLevel;
    invoke-direct/range {v0 .. v6}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 44
    iput-object p6, v0, Landroid/security/keystore2/AndroidKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist test-api getModulus()Ljava/math/BigInteger;
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    return-object v0
.end method
