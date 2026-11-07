.class public abstract Ljava/security/Signer;
.super Ljava/security/Identity;
.source "Signer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "1.2"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x18791541fd710b48L


# instance fields
.field private greylist-max-o privateKey:Ljava/security/PrivateKey;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/security/Identity;-><init>()V

    .line 67
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 77
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

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/security/Identity;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

    .line 92
    return-void
.end method

.method private static greylist-max-o check(Ljava/lang/String;)V
    .registers 2
    .param p0, "directive"    # Ljava/lang/String;

    .line 179
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 180
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 183
    :cond_9
    return-void
.end method


# virtual methods
.method public whitelist test-api getPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .line 111
    const-string v0, "getSignerPrivateKey"

    invoke-static {v0}, Ljava/security/Signer;->check(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Ljava/security/Signer;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method greylist-max-o printKeys()Ljava/lang/String;
    .registers 4

    .line 158
    const-string v0, ""

    .line 159
    .local v0, "keys":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/security/Signer;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 160
    .local v1, "publicKey":Ljava/security/PublicKey;
    if-eqz v1, :cond_f

    iget-object v2, p0, Ljava/security/Signer;->privateKey:Ljava/security/PrivateKey;

    if-eqz v2, :cond_f

    .line 161
    const-string v0, "\tpublic and private keys initialized"

    goto :goto_11

    .line 164
    :cond_f
    const-string v0, "\tno keys"

    .line 166
    :goto_11
    return-object v0
.end method

.method public final whitelist test-api setKeyPair(Ljava/security/KeyPair;)V
    .registers 6
    .param p1, "pair"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;,
            Ljava/security/KeyException;
        }
    .end annotation

    .line 136
    const-string v0, "setSignerKeyPair"

    invoke-static {v0}, Ljava/security/Signer;->check(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    .line 138
    .local v0, "pub":Ljava/security/PublicKey;
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    .line 140
    .local v1, "priv":Ljava/security/PrivateKey;
    if-eqz v0, :cond_25

    if-eqz v1, :cond_25

    .line 144
    :try_start_11
    new-instance v2, Ljava/security/Signer$1;

    invoke-direct {v2, p0, v0}, Ljava/security/Signer$1;-><init>(Ljava/security/Signer;Ljava/security/PublicKey;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/security/PrivilegedActionException; {:try_start_11 .. :try_end_19} :catch_1d

    .line 153
    nop

    .line 154
    iput-object v1, p0, Ljava/security/Signer;->privateKey:Ljava/security/PrivateKey;

    .line 155
    return-void

    .line 151
    :catch_1d
    move-exception v2

    .line 152
    .local v2, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v2}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    check-cast v3, Ljava/security/KeyManagementException;

    throw v3

    .line 141
    .end local v2    # "pae":Ljava/security/PrivilegedActionException;
    :cond_25
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Signer]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
