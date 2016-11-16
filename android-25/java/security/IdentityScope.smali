.class public abstract Ljava/security/IdentityScope;
.super Ljava/security/Identity;
.source "IdentityScope.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static scope:Ljava/security/IdentityScope; = null

.field private static final serialVersionUID:J = -0x206fec0f17658ffeL


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 104
    const-string/jumbo v0, "restoring..."

    #@3
    invoke-direct {p0, v0}, Ljava/security/IdentityScope;-><init>(Ljava/lang/String;)V

    #@6
    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    #@3
    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/security/Identity;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

    #@3
    .line 126
    return-void
.end method

.method private static check(Ljava/lang/String;)V
    .locals 1
    .param p0, "directive"    # Ljava/lang/String;

    #@0
    .prologue
    .line 252
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 253
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    #@9
    .line 251
    :cond_0
    return-void
.end method

.method public static getSystemScope()Ljava/security/IdentityScope;
    .locals 1

    #@0
    .prologue
    .line 139
    sget-object v0, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 140
    invoke-static {}, Ljava/security/IdentityScope;->initializeSystemScope()V

    #@7
    .line 142
    :cond_0
    sget-object v0, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;

    #@9
    return-object v0
.end method

.method private static initializeSystemScope()V
    .locals 3

    #@0
    .prologue
    .line 78
    new-instance v2, Ljava/security/IdentityScope$1;

    #@2
    invoke-direct {v2}, Ljava/security/IdentityScope$1;-><init>()V

    #@5
    .line 77
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    .line 84
    .local v0, "classname":Ljava/lang/String;
    if-nez v0, :cond_0

    #@d
    .line 85
    return-void

    #@e
    .line 90
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/security/IdentityScope;

    #@18
    sput-object v2, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 75
    :goto_0
    return-void

    #@1b
    .line 91
    :catch_0
    move-exception v1

    #@1c
    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    #@1f
    goto :goto_0
.end method

.method protected static setSystemScope(Ljava/security/IdentityScope;)V
    .locals 1
    .param p0, "scope"    # Ljava/security/IdentityScope;

    #@0
    .prologue
    .line 164
    const-string/jumbo v0, "setSystemScope"

    #@3
    invoke-static {v0}, Ljava/security/IdentityScope;->check(Ljava/lang/String;)V

    #@6
    .line 165
    sput-object p0, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;

    #@8
    .line 163
    return-void
.end method


# virtual methods
.method public abstract addIdentity(Ljava/security/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method

.method public abstract getIdentity(Ljava/lang/String;)Ljava/security/Identity;
.end method

.method public getIdentity(Ljava/security/Principal;)Ljava/security/Identity;
    .locals 1
    .param p1, "principal"    # Ljava/security/Principal;

    #@0
    .prologue
    .line 197
    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/security/IdentityScope;->getIdentity(Ljava/lang/String;)Ljava/security/Identity;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public abstract getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;
.end method

.method public abstract identities()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Identity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeIdentity(Ljava/security/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "["

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0}, Ljava/security/IdentityScope;->size()I

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, "]"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method
