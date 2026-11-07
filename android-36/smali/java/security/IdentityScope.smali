.class public abstract Ljava/security/IdentityScope;
.super Ljava/security/Identity;
.source "IdentityScope.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "1.2"
.end annotation


# static fields
.field private static greylist-max-o scope:Ljava/security/IdentityScope; = null

.field private static final whitelist serialVersionUID:J = -0x206fec0f17658ffeL


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 109
    const-string v0, "restoring..."

    invoke-direct {p0, v0}, Ljava/security/IdentityScope;-><init>(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/security/Identity;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

    .line 133
    return-void
.end method

.method private static greylist-max-o check(Ljava/lang/String;)V
    .registers 2
    .param p0, "directive"    # Ljava/lang/String;

    .line 257
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 258
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 259
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 261
    :cond_9
    return-void
.end method

.method public static whitelist test-api getSystemScope()Ljava/security/IdentityScope;
    .registers 1

    .line 144
    sget-object v0, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;

    if-nez v0, :cond_7

    .line 145
    invoke-static {}, Ljava/security/IdentityScope;->initializeSystemScope()V

    .line 147
    :cond_7
    sget-object v0, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;

    return-object v0
.end method

.method private static greylist-max-o initializeSystemScope()V
    .registers 5

    .line 80
    new-instance v0, Ljava/security/IdentityScope$1;

    invoke-direct {v0}, Ljava/security/IdentityScope$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "classname":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 88
    return-void

    .line 95
    :cond_e
    :try_start_e
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/IdentityScope;

    sput-object v1, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1b

    .line 100
    goto :goto_37

    .line 96
    :catch_1b
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to establish a system scope from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_37
    return-void
.end method

.method protected static whitelist test-api setSystemScope(Ljava/security/IdentityScope;)V
    .registers 2
    .param p0, "scope"    # Ljava/security/IdentityScope;

    .line 169
    const-string v0, "setSystemScope"

    invoke-static {v0}, Ljava/security/IdentityScope;->check(Ljava/lang/String;)V

    .line 170
    sput-object p0, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;

    .line 171
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api addIdentity(Ljava/security/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getIdentity(Ljava/lang/String;)Ljava/security/Identity;
.end method

.method public whitelist test-api getIdentity(Ljava/security/Principal;)Ljava/security/Identity;
    .registers 3
    .param p1, "principal"    # Ljava/security/Principal;

    .line 202
    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/IdentityScope;->getIdentity(Ljava/lang/String;)Ljava/security/Identity;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;
.end method

.method public abstract whitelist test-api identities()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/security/Identity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api removeIdentity(Ljava/security/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api size()I
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/IdentityScope;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
