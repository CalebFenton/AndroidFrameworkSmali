.class public Landroid/security/keystore2/AndroidKeyStoreXDHPrivateKey;
.super Landroid/security/keystore2/AndroidKeyStorePrivateKey;
.source "AndroidKeyStoreXDHPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/XECPrivateKey;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .registers 7
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "keyId"    # J
    .param p4, "authorizations"    # [Landroid/system/keystore2/Authorization;
    .param p5, "algorithm"    # Ljava/lang/String;
    .param p6, "securityLevel"    # Landroid/security/KeyStoreSecurityLevel;

    .line 42
    invoke-direct/range {p0 .. p6}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api getParams()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 35
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPrivateKey;->getParams()Ljava/security/spec/NamedParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getParams()Ljava/security/spec/NamedParameterSpec;
    .registers 2

    .line 47
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getScalar()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "[B>;"
        }
    .end annotation

    .line 55
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
