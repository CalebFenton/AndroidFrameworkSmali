.class final Ljavax/crypto/CryptoPermissions;
.super Ljava/security/PermissionCollection;
.source "CryptoPermissions.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .locals 0
    .param p1, "permission"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 49
    return-void
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method getMinimum(Ljavax/crypto/CryptoPermissions;)Ljavax/crypto/CryptoPermissions;
    .locals 1
    .param p1, "other"    # Ljavax/crypto/CryptoPermissions;

    #@0
    .prologue
    .line 55
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method getPermissionCollection(Ljava/lang/String;)Ljava/security/PermissionCollection;
    .locals 1
    .param p1, "alg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1
    .param p1, "permission"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 51
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 46
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method load(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/CryptoPolicyParser$ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    return-void
.end method
