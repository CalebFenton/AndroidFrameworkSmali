.class final Lsun/security/ssl/AbstractKeyManagerWrapper;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SSLContextImpl.java"


# instance fields
.field private final km:Ljavax/net/ssl/X509KeyManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509KeyManager;)V
    .locals 0
    .param p1, "km"    # Ljavax/net/ssl/X509KeyManager;

    #@0
    .prologue
    .line 1036
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    #@3
    .line 1037
    iput-object p1, p0, Lsun/security/ssl/AbstractKeyManagerWrapper;->km:Ljavax/net/ssl/X509KeyManager;

    #@5
    .line 1036
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 1046
    iget-object v0, p0, Lsun/security/ssl/AbstractKeyManagerWrapper;->km:Ljavax/net/ssl/X509KeyManager;

    #@2
    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 1055
    iget-object v0, p0, Lsun/security/ssl/AbstractKeyManagerWrapper;->km:Ljavax/net/ssl/X509KeyManager;

    #@2
    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1059
    iget-object v0, p0, Lsun/security/ssl/AbstractKeyManagerWrapper;->km:Ljavax/net/ssl/X509KeyManager;

    #@2
    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    #@0
    .prologue
    .line 1041
    iget-object v0, p0, Lsun/security/ssl/AbstractKeyManagerWrapper;->km:Ljavax/net/ssl/X509KeyManager;

    #@2
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1063
    iget-object v0, p0, Lsun/security/ssl/AbstractKeyManagerWrapper;->km:Ljavax/net/ssl/X509KeyManager;

    #@2
    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    #@0
    .prologue
    .line 1050
    iget-object v0, p0, Lsun/security/ssl/AbstractKeyManagerWrapper;->km:Ljavax/net/ssl/X509KeyManager;

    #@2
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
