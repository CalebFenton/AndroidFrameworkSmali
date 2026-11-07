.class public Landroid/security/keystore2/AndroidKeyStoreECPrivateKey;
.super Landroid/security/keystore2/AndroidKeyStorePrivateKey;
.source "AndroidKeyStoreECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECKey;


# instance fields
.field private final blacklist mParams:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Landroid/security/KeyStoreSecurityLevel;Ljava/security/spec/ECParameterSpec;)V
    .registers 14
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "keyId"    # J
    .param p4, "authorizations"    # [Landroid/system/keystore2/Authorization;
    .param p5, "securityLevel"    # Landroid/security/KeyStoreSecurityLevel;
    .param p6, "params"    # Ljava/security/spec/ECParameterSpec;

    .line 42
    const-string v5, "EC"

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

    .line 43
    iput-object p6, v0, Landroid/security/keystore2/AndroidKeyStoreECPrivateKey;->mParams:Ljava/security/spec/ECParameterSpec;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECPrivateKey;->mParams:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method
