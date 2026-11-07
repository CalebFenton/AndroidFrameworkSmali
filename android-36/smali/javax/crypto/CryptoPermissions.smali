.class final Ljavax/crypto/CryptoPermissions;
.super Ljava/security/PermissionCollection;
.source "CryptoPermissions.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/security/Permission;)V
    .registers 2
    .param p1, "permission"    # Ljava/security/Permission;

    .line 51
    return-void
.end method

.method public whitelist test-api elements()Ljava/util/Enumeration;
    .registers 2

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getMinimum(Ljavax/crypto/CryptoPermissions;)Ljavax/crypto/CryptoPermissions;
    .registers 3
    .param p1, "other"    # Ljavax/crypto/CryptoPermissions;

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getPermissionCollection(Ljava/lang/String;)Ljava/security/PermissionCollection;
    .registers 3
    .param p1, "alg"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "permission"    # Ljava/security/Permission;

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method blacklist isEmpty()Z
    .registers 2

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method blacklist load(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/CryptoPolicyParser$ParsingException;
        }
    .end annotation

    .line 45
    return-void
.end method
