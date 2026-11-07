.class public final Ljava/security/KeyPair;
.super Ljava/lang/Object;
.source "KeyPair.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = -0x68fcf3c52d32ed6dL


# instance fields
.field private greylist-max-o privateKey:Ljava/security/PrivateKey;

.field private greylist-max-o publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "privateKey"    # Ljava/security/PrivateKey;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Ljava/security/KeyPair;->publicKey:Ljava/security/PublicKey;

    .line 62
    iput-object p2, p0, Ljava/security/KeyPair;->privateKey:Ljava/security/PrivateKey;

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist test-api getPrivate()Ljava/security/PrivateKey;
    .registers 2

    .line 80
    iget-object v0, p0, Ljava/security/KeyPair;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public whitelist test-api getPublic()Ljava/security/PublicKey;
    .registers 2

    .line 71
    iget-object v0, p0, Ljava/security/KeyPair;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method
