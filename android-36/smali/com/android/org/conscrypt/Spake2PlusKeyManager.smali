.class public Lcom/android/org/conscrypt/Spake2PlusKeyManager;
.super Ljava/lang/Object;
.source "Spake2PlusKeyManager.java"

# interfaces
.implements Ljavax/net/ssl/KeyManager;


# instance fields
.field private final blacklist context:[B

.field private final blacklist handshakeLimit:I

.field private final blacklist idProver:[B

.field private final blacklist idVerifier:[B

.field private final blacklist isClient:Z

.field private final blacklist password:[B


# direct methods
.method constructor blacklist <init>([B[B[B[BZI)V
    .registers 9
    .param p1, "context"    # [B
    .param p2, "password"    # [B
    .param p3, "idProver"    # [B
    .param p4, "idVerifier"    # [B
    .param p5, "isClient"    # Z
    .param p6, "handshakeLimit"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    if-nez p1, :cond_9

    new-array v1, v0, [B

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    iput-object v1, p0, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->context:[B

    .line 42
    iput-object p2, p0, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->password:[B

    .line 43
    if-nez p3, :cond_13

    new-array v1, v0, [B

    goto :goto_14

    :cond_13
    move-object v1, p3

    :goto_14
    iput-object v1, p0, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->idProver:[B

    .line 44
    if-nez p4, :cond_1b

    new-array v0, v0, [B

    goto :goto_1c

    :cond_1b
    move-object v0, p4

    :goto_1c
    iput-object v0, p0, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->idVerifier:[B

    .line 45
    iput-boolean p5, p0, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->isClient:Z

    .line 46
    iput p6, p0, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->handshakeLimit:I

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist chooseEngineAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 6
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 6
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getContext()[B
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->context:[B

    return-object v0
.end method

.method public blacklist getHandshakeLimit()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->handshakeLimit:I

    return v0
.end method

.method public blacklist getIdProver()[B
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->idProver:[B

    return-object v0
.end method

.method public blacklist getIdVerifier()[B
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->idVerifier:[B

    return-object v0
.end method

.method public blacklist getPassword()[B
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->password:[B

    return-object v0
.end method

.method public blacklist isClient()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/android/org/conscrypt/Spake2PlusKeyManager;->isClient:Z

    return v0
.end method
