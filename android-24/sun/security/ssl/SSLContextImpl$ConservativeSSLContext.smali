.class Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;
.super Lsun/security/ssl/SSLContextImpl;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConservativeSSLContext"
.end annotation


# static fields
.field private static defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

.field private static defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

.field private static supportedSSLParams:Ljavax/net/ssl/SSLParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 431
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 432
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@c
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@f
    sput-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@11
    .line 433
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@13
    new-array v1, v3, [Ljava/lang/String;

    #@15
    .line 434
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@17
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@19
    aput-object v2, v1, v4

    #@1b
    .line 435
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@1d
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@1f
    aput-object v2, v1, v5

    #@21
    .line 436
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@23
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@25
    aput-object v2, v1, v6

    #@27
    .line 433
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@2a
    .line 439
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2c
    sput-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2e
    .line 441
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@30
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@33
    sput-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@35
    .line 442
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@37
    new-array v1, v5, [Ljava/lang/String;

    #@39
    .line 443
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@3b
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@3d
    aput-object v2, v1, v4

    #@3f
    .line 442
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@42
    .line 424
    :goto_0
    return-void

    #@43
    .line 447
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@45
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@48
    sput-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@4a
    .line 448
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@4c
    const/4 v1, 0x5

    #@4d
    new-array v1, v1, [Ljava/lang/String;

    #@4f
    .line 449
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@51
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@53
    aput-object v2, v1, v4

    #@55
    .line 450
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@57
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@59
    aput-object v2, v1, v5

    #@5b
    .line 451
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@5d
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@5f
    aput-object v2, v1, v6

    #@61
    .line 452
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@63
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@65
    aput-object v2, v1, v3

    #@67
    .line 453
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@69
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@6b
    const/4 v3, 0x4

    #@6c
    aput-object v2, v1, v3

    #@6e
    .line 448
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@71
    .line 456
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@73
    sput-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    #@75
    .line 458
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@77
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@7a
    sput-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@7c
    .line 459
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@7e
    new-array v1, v6, [Ljava/lang/String;

    #@80
    .line 460
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@82
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@84
    aput-object v2, v1, v4

    #@86
    .line 461
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@88
    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@8a
    aput-object v2, v1, v5

    #@8c
    .line 459
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@8f
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 424
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getDefaultClientSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    #@0
    .prologue
    .line 471
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2
    return-object v0
.end method

.method getDefaultServerSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    #@0
    .prologue
    .line 467
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2
    return-object v0
.end method

.method getSupportedSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    #@0
    .prologue
    .line 475
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    #@2
    return-object v0
.end method
