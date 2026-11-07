.class public abstract Ljava/security/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Policy$UnsupportedEmptyCollection;,
        Ljava/security/Policy$Parameters;
    }
.end annotation


# static fields
.field public static final whitelist test-api UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/security/Policy$UnsupportedEmptyCollection;

    invoke-direct {v0}, Ljava/security/Policy$UnsupportedEmptyCollection;-><init>()V

    sput-object v0, Ljava/security/Policy;->UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Policy$Parameters;)Ljava/security/Policy;
    .registers 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/Policy$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Policy$Parameters;Ljava/lang/String;)Ljava/security/Policy;
    .registers 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/Policy$Parameters;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Policy$Parameters;Ljava/security/Provider;)Ljava/security/Policy;
    .registers 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/Policy$Parameters;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist test-api getPolicy()Ljava/security/Policy;
    .registers 1

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist test-api setPolicy(Ljava/security/Policy;)V
    .registers 1
    .param p0, "p"    # Ljava/security/Policy;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api getParameters()Ljava/security/Policy$Parameters;
    .registers 2

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .registers 3
    .param p1, "codesource"    # Ljava/security/CodeSource;

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;
    .registers 3
    .param p1, "domain"    # Ljava/security/ProtectionDomain;

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api implies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z
    .registers 4
    .param p1, "domain"    # Ljava/security/ProtectionDomain;
    .param p2, "permission"    # Ljava/security/Permission;

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api refresh()V
    .registers 1

    .line 95
    return-void
.end method
