.class public Ljavax/net/ssl/SSLParameters;
.super Ljava/lang/Object;
.source "SSLParameters.java"


# instance fields
.field private cipherSuites:[Ljava/lang/String;

.field private endpointIdentificationAlgorithm:Ljava/lang/String;

.field private needClientAuth:Z

.field private protocols:[Ljava/lang/String;

.field private wantClientAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    #@6
    .line 47
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherSuites"    # [Ljava/lang/String;
    .param p2, "protocols"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    #@6
    .line 64
    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@9
    .line 62
    return-void
.end method


# virtual methods
.method public getCipherSuites()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 72
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 73
    return-object v1

    #@6
    .line 75
    :cond_0
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Ljava/lang/String;

    #@e
    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    #@0
    .prologue
    .line 113
    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    #@2
    return v0
.end method

.method public getProtocols()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 92
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 93
    return-object v1

    #@6
    .line 95
    :cond_0
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Ljava/lang/String;

    #@e
    return-object v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    #@0
    .prologue
    .line 131
    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    #@2
    return v0
.end method

.method public setCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 82
    if-nez p1, :cond_0

    #@3
    :goto_0
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    #@5
    .line 81
    return-void

    #@6
    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/lang/String;

    #@c
    goto :goto_0
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "needClientAuth"    # Z

    #@0
    .prologue
    .line 121
    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    #@2
    .line 122
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    #@5
    .line 120
    return-void
.end method

.method public setProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 102
    if-nez p1, :cond_0

    #@3
    :goto_0
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    #@5
    .line 101
    return-void

    #@6
    .line 104
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/lang/String;

    #@c
    goto :goto_0
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "wantClientAuth"    # Z

    #@0
    .prologue
    .line 139
    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    #@2
    .line 140
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    #@5
    .line 138
    return-void
.end method
