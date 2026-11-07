.class public Landroid/security/keystore2/AndroidKeyStoreSecretKey;
.super Landroid/security/keystore2/AndroidKeyStoreKey;
.source "AndroidKeyStoreSecretKey.java"

# interfaces
.implements Ljavax/crypto/SecretKey;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .registers 13
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "metadata"    # Landroid/system/keystore2/KeyMetadata;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "securityLevel"    # Landroid/security/KeyStoreSecurityLevel;

    .line 36
    iget-object v0, p2, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    iget-wide v3, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iget-object v5, p2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p3    # "algorithm":Ljava/lang/String;
    .end local p4    # "securityLevel":Landroid/security/KeyStoreSecurityLevel;
    .local v2, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v6, "algorithm":Ljava/lang/String;
    .local v7, "securityLevel":Landroid/security/KeyStoreSecurityLevel;
    invoke-direct/range {v1 .. v7}, Landroid/security/keystore2/AndroidKeyStoreKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 37
    return-void
.end method
