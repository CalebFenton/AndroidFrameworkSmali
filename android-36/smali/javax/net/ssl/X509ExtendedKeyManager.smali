.class public abstract Ljavax/net/ssl/X509ExtendedKeyManager;
.super Ljava/lang/Object;
.source "X509ExtendedKeyManager.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist test-api chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 5
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 5
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method
