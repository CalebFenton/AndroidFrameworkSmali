.class public Lorg/apache/http/auth/UsernamePasswordCredentials;
.super Ljava/lang/Object;
.source "UsernamePasswordCredentials.java"

# interfaces
.implements Lorg/apache/http/auth/Credentials;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final password:Ljava/lang/String;

.field private final principal:Lorg/apache/http/auth/BasicUserPrincipal;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "usernamePassword"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 66
    if-nez p1, :cond_0

    #@7
    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v2, "Username:password string may not be null"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 69
    :cond_0
    const/16 v1, 0x3a

    #@12
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@15
    move-result v0

    #@16
    .line 70
    .local v0, "atColon":I
    if-ltz v0, :cond_1

    #@18
    .line 71
    new-instance v1, Lorg/apache/http/auth/BasicUserPrincipal;

    #@1a
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Lorg/apache/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    #@21
    iput-object v1, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    #@23
    .line 72
    add-int/lit8 v1, v0, 0x1

    #@25
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    iput-object v1, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    #@2b
    .line 64
    :goto_0
    return-void

    #@2c
    .line 74
    :cond_1
    new-instance v1, Lorg/apache/http/auth/BasicUserPrincipal;

    #@2e
    invoke-direct {v1, p1}, Lorg/apache/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    #@31
    iput-object v1, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    #@33
    .line 75
    iput-object v3, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    #@35
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    if-nez p1, :cond_0

    #@5
    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Username may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 91
    :cond_0
    new-instance v0, Lorg/apache/http/auth/BasicUserPrincipal;

    #@10
    invoke-direct {v0, p1}, Lorg/apache/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    #@15
    .line 92
    iput-object p2, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    #@17
    .line 86
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 114
    if-nez p1, :cond_0

    #@4
    return v3

    #@5
    .line 115
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    return v4

    #@8
    .line 116
    :cond_1
    instance-of v1, p1, Lorg/apache/http/auth/UsernamePasswordCredentials;

    #@a
    if-eqz v1, :cond_2

    #@c
    move-object v0, p1

    #@d
    .line 117
    check-cast v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    #@f
    .line 118
    .local v0, "that":Lorg/apache/http/auth/UsernamePasswordCredentials;
    iget-object v1, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    #@11
    iget-object v2, v0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    #@13
    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 119
    return v4

    #@1a
    .line 122
    .end local v0    # "that":Lorg/apache/http/auth/UsernamePasswordCredentials;
    :cond_2
    return v3
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    #@2
    invoke-virtual {v0}, Lorg/apache/http/auth/BasicUserPrincipal;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    #@2
    invoke-virtual {v0}, Lorg/apache/http/auth/BasicUserPrincipal;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    #@2
    invoke-virtual {v0}, Lorg/apache/http/auth/BasicUserPrincipal;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
