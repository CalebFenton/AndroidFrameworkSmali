.class public final Lsun/security/ssl/SSLContextImpl$TLS11Context;
.super Lsun/security/ssl/SSLContextImpl;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TLS11Context"
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
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 659
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 660
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@c
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@f
    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@11
    .line 661
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@13
    new-array v1, v7, [Ljava/lang/String;

    #@15
    .line 662
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@17
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@19
    aput-object v2, v1, v4

    #@1b
    .line 663
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@1d
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@1f
    aput-object v2, v1, v5

    #@21
    .line 664
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@23
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@25
    aput-object v2, v1, v6

    #@27
    .line 661
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@2a
    .line 667
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2c
    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2e
    .line 669
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@30
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@33
    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@35
    .line 670
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@37
    new-array v1, v6, [Ljava/lang/String;

    #@39
    .line 671
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@3b
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@3d
    aput-object v2, v1, v4

    #@3f
    .line 672
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@41
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@43
    aput-object v2, v1, v5

    #@45
    .line 670
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@48
    .line 652
    :goto_0
    return-void

    #@49
    .line 676
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@4b
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@4e
    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@50
    .line 677
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@52
    const/4 v1, 0x5

    #@53
    new-array v1, v1, [Ljava/lang/String;

    #@55
    .line 678
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@57
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@59
    aput-object v2, v1, v4

    #@5b
    .line 679
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@5d
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@5f
    aput-object v2, v1, v5

    #@61
    .line 680
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@63
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@65
    aput-object v2, v1, v6

    #@67
    .line 681
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@69
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@6b
    aput-object v2, v1, v7

    #@6d
    .line 682
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@6f
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@71
    const/4 v3, 0x4

    #@72
    aput-object v2, v1, v3

    #@74
    .line 677
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@77
    .line 685
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@79
    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    #@7b
    .line 687
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@7d
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@80
    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@82
    .line 688
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@84
    new-array v1, v7, [Ljava/lang/String;

    #@86
    .line 689
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@88
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@8a
    aput-object v2, v1, v4

    #@8c
    .line 690
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@8e
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@90
    aput-object v2, v1, v5

    #@92
    .line 691
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@94
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@96
    aput-object v2, v1, v6

    #@98
    .line 688
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@9b
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 652
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getDefaultClientSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    #@0
    .prologue
    .line 701
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2
    return-object v0
.end method

.method getDefaultServerSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    #@0
    .prologue
    .line 697
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2
    return-object v0
.end method

.method getSupportedSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    #@0
    .prologue
    .line 705
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2
    return-object v0
.end method
