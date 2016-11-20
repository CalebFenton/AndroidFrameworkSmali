.class public abstract Ljava/security/Signer;
.super Ljava/security/Identity;
.source "Signer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18791541fd710b48L


# instance fields
.field private privateKey:Ljava/security/PrivateKey;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/security/Identity;-><init>()V

    #@3
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    #@3
    .line 73
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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/security/Identity;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

    #@3
    .line 88
    return-void
.end method

.method private static check(Ljava/lang/String;)V
    .locals 1
    .param p0, "directive"    # Ljava/lang/String;

    #@0
    .prologue
    .line 177
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 178
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    #@9
    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    #@0
    .prologue
    .line 109
    const-string/jumbo v0, "getSignerPrivateKey"

    #@3
    invoke-static {v0}, Ljava/security/Signer;->check(Ljava/lang/String;)V

    #@6
    .line 110
    iget-object v0, p0, Ljava/security/Signer;->privateKey:Ljava/security/PrivateKey;

    #@8
    return-object v0
.end method

.method printKeys()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 156
    const-string/jumbo v0, ""

    #@3
    .line 157
    .local v0, "keys":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/security/Identity;->getPublicKey()Ljava/security/PublicKey;

    #@6
    move-result-object v1

    #@7
    .line 158
    .local v1, "publicKey":Ljava/security/PublicKey;
    if-eqz v1, :cond_0

    #@9
    iget-object v2, p0, Ljava/security/Signer;->privateKey:Ljava/security/PrivateKey;

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 159
    const-string/jumbo v0, "\tpublic and private keys initialized"

    #@10
    .line 164
    :goto_0
    return-object v0

    #@11
    .line 162
    :cond_0
    const-string/jumbo v0, "\tno keys"

    #@14
    goto :goto_0
.end method

.method public final setKeyPair(Ljava/security/KeyPair;)V
    .locals 4
    .param p1, "pair"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;,
            Ljava/security/KeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    const-string/jumbo v3, "setSignerKeyPair"

    #@3
    invoke-static {v3}, Ljava/security/Signer;->check(Ljava/lang/String;)V

    #@6
    .line 135
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    #@9
    move-result-object v2

    #@a
    .line 136
    .local v2, "pub":Ljava/security/PublicKey;
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@d
    move-result-object v1

    #@e
    .line 138
    .local v1, "priv":Ljava/security/PrivateKey;
    if-eqz v2, :cond_0

    #@10
    if-nez v1, :cond_1

    #@12
    .line 139
    :cond_0
    new-instance v3, Ljava/security/InvalidParameterException;

    #@14
    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    #@17
    throw v3

    #@18
    .line 143
    :cond_1
    :try_start_0
    new-instance v3, Ljava/security/Signer$1;

    #@1a
    invoke-direct {v3, p0, v2}, Ljava/security/Signer$1;-><init>(Ljava/security/Signer;Ljava/security/PublicKey;)V

    #@1d
    .line 142
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 152
    iput-object v1, p0, Ljava/security/Signer;->privateKey:Ljava/security/PrivateKey;

    #@22
    .line 133
    return-void

    #@23
    .line 149
    :catch_0
    move-exception v0

    #@24
    .line 150
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Ljava/security/KeyManagementException;

    #@2a
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[Signer]"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-super {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method
