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
    .line 37
    invoke-direct {p0}, Ljava/security/Identity;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    #@3
    .line 46
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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/security/Identity;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

    #@3
    .line 62
    return-void
.end method


# virtual methods
.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Ljava/security/Signer;->privateKey:Ljava/security/PrivateKey;

    #@2
    return-object v0
.end method

.method public final setKeyPair(Ljava/security/KeyPair;)V
    .locals 2
    .param p1, "pair"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;,
            Ljava/security/KeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    if-nez p1, :cond_0

    #@2
    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "pair == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_1

    #@11
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_2

    #@17
    .line 89
    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    #@19
    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    #@1c
    throw v0

    #@1d
    .line 91
    :cond_2
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p0, v0}, Ljava/security/Signer;->setPublicKey(Ljava/security/PublicKey;)V

    #@24
    .line 92
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Ljava/security/Signer;->privateKey:Ljava/security/PrivateKey;

    #@2a
    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "[Signer]"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Ljava/security/Signer;->getName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 104
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/security/Signer;->getScope()Ljava/security/IdentityScope;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const/16 v2, 0x5b

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p0}, Ljava/security/Signer;->getScope()Ljava/security/IdentityScope;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/security/IdentityScope;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    const/16 v2, 0x5d

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    .line 107
    :cond_0
    return-object v0
.end method
