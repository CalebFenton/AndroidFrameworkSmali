.class public Lorg/apache/http/auth/NTCredentials;
.super Ljava/lang/Object;
.source "NTCredentials.java"

# interfaces
.implements Lorg/apache/http/auth/Credentials;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final password:Ljava/lang/String;

.field private final principal:Lorg/apache/http/auth/NTUserPrincipal;

.field private final workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "usernamePassword"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 70
    if-nez p1, :cond_0

    #@7
    .line 71
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v4, "Username:password string may not be null"

    #@c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v3

    #@10
    .line 74
    :cond_0
    const/16 v3, 0x3a

    #@12
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@15
    move-result v0

    #@16
    .line 75
    .local v0, "atColon":I
    if-ltz v0, :cond_1

    #@18
    .line 76
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 77
    .local v2, "username":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    #@1e
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    iput-object v3, p0, Lorg/apache/http/auth/NTCredentials;->password:Ljava/lang/String;

    #@24
    .line 82
    :goto_0
    const/16 v3, 0x2f

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@29
    move-result v1

    #@2a
    .line 83
    .local v1, "atSlash":I
    if-ltz v1, :cond_2

    #@2c
    .line 84
    new-instance v3, Lorg/apache/http/auth/NTUserPrincipal;

    #@2e
    .line 85
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 86
    add-int/lit8 v5, v1, 0x1

    #@3a
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    .line 84
    invoke-direct {v3, v4, v5}, Lorg/apache/http/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    iput-object v3, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    #@43
    .line 92
    :goto_1
    iput-object v6, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    #@45
    .line 68
    return-void

    #@46
    .line 79
    .end local v1    # "atSlash":I
    .end local v2    # "username":Ljava/lang/String;
    :cond_1
    move-object v2, p1

    #@47
    .line 80
    .restart local v2    # "username":Ljava/lang/String;
    iput-object v6, p0, Lorg/apache/http/auth/NTCredentials;->password:Ljava/lang/String;

    #@49
    goto :goto_0

    #@4a
    .line 88
    .restart local v1    # "atSlash":I
    :cond_2
    new-instance v3, Lorg/apache/http/auth/NTUserPrincipal;

    #@4c
    .line 90
    add-int/lit8 v4, v1, 0x1

    #@4e
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    .line 88
    invoke-direct {v3, v6, v4}, Lorg/apache/http/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@55
    iput-object v3, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    #@57
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "workstation"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 110
    if-nez p1, :cond_0

    #@6
    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "User name may not be null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 113
    :cond_0
    new-instance v0, Lorg/apache/http/auth/NTUserPrincipal;

    #@11
    invoke-direct {v0, p4, p1}, Lorg/apache/http/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    iput-object v0, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    #@16
    .line 114
    iput-object p2, p0, Lorg/apache/http/auth/NTCredentials;->password:Ljava/lang/String;

    #@18
    .line 115
    if-eqz p3, :cond_1

    #@1a
    .line 116
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1c
    invoke-virtual {p3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    #@22
    .line 108
    :goto_0
    return-void

    #@23
    .line 118
    :cond_1
    iput-object v1, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    #@25
    goto :goto_0
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
    .line 162
    if-nez p1, :cond_0

    #@4
    return v3

    #@5
    .line 163
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    return v4

    #@8
    .line 164
    :cond_1
    instance-of v1, p1, Lorg/apache/http/auth/NTCredentials;

    #@a
    if-eqz v1, :cond_2

    #@c
    move-object v0, p1

    #@d
    .line 165
    check-cast v0, Lorg/apache/http/auth/NTCredentials;

    #@f
    .line 166
    .local v0, "that":Lorg/apache/http/auth/NTCredentials;
    iget-object v1, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    #@11
    iget-object v2, v0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    #@13
    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 167
    iget-object v1, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    #@1b
    iget-object v2, v0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    #@1d
    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    .line 166
    if-eqz v1, :cond_2

    #@23
    .line 168
    return v4

    #@24
    .line 171
    .end local v0    # "that":Lorg/apache/http/auth/NTCredentials;
    :cond_2
    return v3
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    #@2
    invoke-virtual {v0}, Lorg/apache/http/auth/NTUserPrincipal;->getDomain()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/http/auth/NTCredentials;->password:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    #@2
    invoke-virtual {v0}, Lorg/apache/http/auth/NTUserPrincipal;->getUsername()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    #@2
    return-object v0
.end method

.method public getWorkstation()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 154
    const/16 v0, 0x11

    #@2
    .line 155
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    #@4
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@7
    move-result v0

    #@8
    .line 156
    iget-object v1, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    #@a
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@d
    move-result v0

    #@e
    .line 157
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 177
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[principal: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 178
    iget-object v1, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    .line 179
    const-string/jumbo v1, "][workstation: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 180
    iget-object v1, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 181
    const-string/jumbo v1, "]"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    return-object v1
.end method
