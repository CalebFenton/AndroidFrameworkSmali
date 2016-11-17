.class public final Lsun/security/ssl/SSLContextImpl$TLS12Context;
.super Lsun/security/ssl/SSLContextImpl;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TLS12Context"
.end annotation


# static fields
.field private static defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

.field private static defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

.field private static supportedSSLParams:Ljavax/net/ssl/SSLParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 721
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 722
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@d
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@10
    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@12
    .line 723
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@14
    new-array v1, v6, [Ljava/lang/String;

    #@16
    .line 724
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@18
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 725
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@1e
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@20
    aput-object v2, v1, v4

    #@22
    .line 726
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@24
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@26
    aput-object v2, v1, v5

    #@28
    .line 723
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@2b
    .line 729
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2d
    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2f
    .line 731
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@31
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@34
    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@36
    .line 732
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@38
    new-array v1, v6, [Ljava/lang/String;

    #@3a
    .line 733
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@3c
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@3e
    aput-object v2, v1, v3

    #@40
    .line 734
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@42
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@44
    aput-object v2, v1, v4

    #@46
    .line 735
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@48
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@4a
    aput-object v2, v1, v5

    #@4c
    .line 732
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@4f
    .line 714
    :goto_0
    return-void

    #@50
    .line 739
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@52
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@55
    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@57
    .line 740
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@59
    const/4 v1, 0x5

    #@5a
    new-array v1, v1, [Ljava/lang/String;

    #@5c
    .line 741
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@5e
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@60
    aput-object v2, v1, v3

    #@62
    .line 742
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@64
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@66
    aput-object v2, v1, v4

    #@68
    .line 743
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@6a
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@6c
    aput-object v2, v1, v5

    #@6e
    .line 744
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@70
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@72
    aput-object v2, v1, v6

    #@74
    .line 745
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@76
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@78
    aput-object v2, v1, v7

    #@7a
    .line 740
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@7d
    .line 748
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@7f
    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    #@81
    .line 750
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@83
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@86
    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@88
    .line 751
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@8a
    new-array v1, v7, [Ljava/lang/String;

    #@8c
    .line 752
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@8e
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@90
    aput-object v2, v1, v3

    #@92
    .line 753
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@94
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@96
    aput-object v2, v1, v4

    #@98
    .line 754
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@9a
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@9c
    aput-object v2, v1, v5

    #@9e
    .line 755
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@a0
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@a2
    aput-object v2, v1, v6

    #@a4
    .line 751
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@a7
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 714
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getDefaultClientSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    #@0
    .prologue
    .line 765
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2
    return-object v0
.end method

.method getDefaultServerSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    #@0
    .prologue
    .line 761
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2
    return-object v0
.end method

.method getSupportedSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    #@0
    .prologue
    .line 769
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2
    return-object v0
.end method
