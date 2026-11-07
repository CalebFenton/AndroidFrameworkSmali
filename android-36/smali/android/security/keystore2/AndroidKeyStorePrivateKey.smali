.class public Landroid/security/keystore2/AndroidKeyStorePrivateKey;
.super Landroid/security/keystore2/AndroidKeyStoreKey;
.source "AndroidKeyStorePrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .registers 7
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "keyId"    # J
    .param p4, "authorizations"    # [Landroid/system/keystore2/Authorization;
    .param p5, "algorithm"    # Ljava/lang/String;
    .param p6, "securityLevel"    # Landroid/security/KeyStoreSecurityLevel;

    .line 36
    invoke-direct/range {p0 .. p6}, Landroid/security/keystore2/AndroidKeyStoreKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 37
    return-void
.end method
