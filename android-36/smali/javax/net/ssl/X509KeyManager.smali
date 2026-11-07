.class public interface abstract Ljavax/net/ssl/X509KeyManager;
.super Ljava/lang/Object;
.source "X509KeyManager.java"

# interfaces
.implements Ljavax/net/ssl/KeyManager;


# virtual methods
.method public abstract whitelist test-api chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
.end method

.method public abstract whitelist test-api getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
.end method

.method public abstract whitelist test-api getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
.end method
