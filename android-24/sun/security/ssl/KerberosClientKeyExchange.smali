.class public Lsun/security/ssl/KerberosClientKeyExchange;
.super Lsun/security/ssl/HandshakeMessage;
.source "KerberosClientKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/KerberosClientKeyExchange$1;
    }
.end annotation


# static fields
.field private static final IMPL_CLASS:Ljava/lang/String; = "sun.security.ssl.krb5.KerberosClientKeyExchangeImpl"

.field private static final implClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final impl:Lsun/security/ssl/KerberosClientKeyExchange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    new-instance v0, Lsun/security/ssl/KerberosClientKeyExchange$1;

    #@2
    invoke-direct {v0}, Lsun/security/ssl/KerberosClientKeyExchange$1;-><init>()V

    #@5
    .line 45
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Class;

    #@b
    sput-object v0, Lsun/security/ssl/KerberosClientKeyExchange;->implClass:Ljava/lang/Class;

    #@d
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 56
    invoke-direct {p0}, Lsun/security/ssl/KerberosClientKeyExchange;->createImpl()Lsun/security/ssl/KerberosClientKeyExchange;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@9
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/security/AccessControlContext;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "serverName"    # Ljava/lang/String;
    .param p2, "isLoopback"    # Z
    .param p3, "acc"    # Ljava/security/AccessControlContext;
    .param p4, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p5, "rand"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 56
    invoke-direct {p0}, Lsun/security/ssl/KerberosClientKeyExchange;->createImpl()Lsun/security/ssl/KerberosClientKeyExchange;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@9
    .line 79
    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 80
    invoke-virtual/range {p0 .. p5}, Lsun/security/ssl/KerberosClientKeyExchange;->init(Ljava/lang/String;ZLjava/security/AccessControlContext;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;)V

    #@10
    .line 77
    return-void

    #@11
    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "Kerberos is unavailable"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method public constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;[Ljavax/crypto/SecretKey;)V
    .locals 2
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "clientVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "rand"    # Ljava/security/SecureRandom;
    .param p4, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p5, "serverKeys"    # [Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 56
    invoke-direct {p0}, Lsun/security/ssl/KerberosClientKeyExchange;->createImpl()Lsun/security/ssl/KerberosClientKeyExchange;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@9
    .line 90
    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 91
    invoke-virtual/range {p0 .. p5}, Lsun/security/ssl/KerberosClientKeyExchange;->init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;[Ljavax/crypto/SecretKey;)V

    #@10
    .line 88
    return-void

    #@11
    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "Kerberos is unavailable"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method private createImpl()Lsun/security/ssl/KerberosClientKeyExchange;
    .locals 4

    #@0
    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v2

    #@4
    const-class v3, Lsun/security/ssl/KerberosClientKeyExchange;

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 61
    :try_start_0
    sget-object v2, Lsun/security/ssl/KerberosClientKeyExchange;->implClass:Ljava/lang/Class;

    #@a
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Lsun/security/ssl/KerberosClientKeyExchange;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    return-object v2

    #@11
    .line 64
    :catch_0
    move-exception v0

    #@12
    .line 65
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@17
    throw v2

    #@18
    .line 62
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@19
    .line 63
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/AssertionError;

    #@1b
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1e
    throw v2

    #@1f
    .line 68
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :cond_0
    const/4 v2, 0x0

    #@20
    return-object v2
.end method


# virtual methods
.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/KerberosClientKeyExchange;->getLocalPrincipal()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/KerberosClientKeyExchange;->getPeerPrincipal()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUnencryptedPreMasterSecret()[B
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/KerberosClientKeyExchange;->getUnencryptedPreMasterSecret()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public init(Ljava/lang/String;ZLjava/security/AccessControlContext;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "serverName"    # Ljava/lang/String;
    .param p2, "isLoopback"    # Z
    .param p3, "acc"    # Ljava/security/AccessControlContext;
    .param p4, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p5, "rand"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 122
    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@6
    move-object v1, p1

    #@7
    move v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v4, p4

    #@a
    move-object v5, p5

    #@b
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/KerberosClientKeyExchange;->init(Ljava/lang/String;ZLjava/security/AccessControlContext;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;)V

    #@e
    .line 119
    :cond_0
    return-void
.end method

.method public init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;[Ljavax/crypto/SecretKey;)V
    .locals 6
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "clientVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "rand"    # Ljava/security/SecureRandom;
    .param p4, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p5, "serverKeys"    # [Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 131
    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v4, p4

    #@a
    move-object v5, p5

    #@b
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/KerberosClientKeyExchange;->init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;[Ljavax/crypto/SecretKey;)V

    #@e
    .line 128
    :cond_0
    return-void
.end method

.method public messageLength()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/KerberosClientKeyExchange;->messageLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method messageType()I
    .locals 1

    #@0
    .prologue
    .line 99
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "p"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@2
    invoke-virtual {v0, p1}, Lsun/security/ssl/KerberosClientKeyExchange;->print(Ljava/io/PrintStream;)V

    #@5
    .line 113
    return-void
.end method

.method public send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lsun/security/ssl/KerberosClientKeyExchange;->impl:Lsun/security/ssl/KerberosClientKeyExchange;

    #@2
    invoke-virtual {v0, p1}, Lsun/security/ssl/KerberosClientKeyExchange;->send(Lsun/security/ssl/HandshakeOutStream;)V

    #@5
    .line 108
    return-void
.end method
