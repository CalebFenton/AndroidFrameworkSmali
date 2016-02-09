.class public Lgov/nist/javax/sip/address/Authority;
.super Lgov/nist/javax/sip/address/NetObject;
.source "Authority.java"


# static fields
.field private static final serialVersionUID:J = -0x318c6e34baa9fca6L


# instance fields
.field protected hostPort:Lgov/nist/core/HostPort;

.field protected userInfo:Lgov/nist/javax/sip/address/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 223
    invoke-super {p0}, Lgov/nist/javax/sip/address/NetObject;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/address/Authority;

    #@6
    .line 224
    .local v0, "retval":Lgov/nist/javax/sip/address/Authority;
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 225
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@c
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/core/HostPort;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@14
    .line 226
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 227
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@1a
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/UserInfo;->clone()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lgov/nist/javax/sip/address/UserInfo;

    #@20
    iput-object v1, v0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@22
    .line 228
    :cond_1
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 64
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@6
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/UserInfo;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@9
    .line 65
    const-string/jumbo v0, "@"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 66
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@11
    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@14
    .line 70
    :goto_0
    return-object p1

    #@15
    .line 68
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@17
    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@1a
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 79
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/Authority;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    if-eq v1, v2, :cond_1

    #@e
    .line 81
    return v3

    #@f
    :cond_1
    move-object v0, p1

    #@10
    .line 83
    check-cast v0, Lgov/nist/javax/sip/address/Authority;

    #@12
    .line 84
    .local v0, "otherAuth":Lgov/nist/javax/sip/address/Authority;
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@14
    iget-object v2, v0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@16
    invoke-virtual {v1, v2}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_2

    #@1c
    .line 85
    return v3

    #@1d
    .line 87
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@1f
    if-eqz v1, :cond_3

    #@21
    iget-object v1, v0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 88
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@27
    iget-object v2, v0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@29
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/address/UserInfo;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    if-nez v1, :cond_3

    #@2f
    .line 89
    return v3

    #@30
    .line 92
    :cond_3
    const/4 v1, 0x1

    #@31
    return v1
.end method

.method public getHost()Lgov/nist/core/Host;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 135
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 136
    return-object v1

    #@6
    .line 138
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@8
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@2
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 117
    return-object v1

    #@6
    .line 119
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@8
    iget-object v0, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 147
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 149
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@8
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getPort()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 127
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@7
    iget-object v0, v0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    #@9
    :cond_0
    return-object v0
.end method

.method public getUserInfo()Lgov/nist/javax/sip/address/UserInfo;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    const-string/jumbo v1, "Null hostPort cannot compute hashcode"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 234
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@f
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public removePort()V
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 156
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@6
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->removePort()V

    #@9
    .line 154
    :cond_0
    return-void
.end method

.method public removeUserInfo()V
    .locals 1

    #@0
    .prologue
    .line 219
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@3
    .line 218
    return-void
.end method

.method public setHost(Lgov/nist/core/Host;)V
    .locals 1
    .param p1, "host"    # Lgov/nist/core/Host;

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 185
    new-instance v0, Lgov/nist/core/HostPort;

    #@6
    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@b
    .line 186
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    #@10
    .line 183
    return-void
.end method

.method public setHostPort(Lgov/nist/core/HostPort;)V
    .locals 0
    .param p1, "h"    # Lgov/nist/core/HostPort;

    #@0
    .prologue
    .line 204
    iput-object p1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@2
    .line 203
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "passwd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 165
    new-instance v0, Lgov/nist/javax/sip/address/UserInfo;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/address/UserInfo;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@b
    .line 166
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/UserInfo;->setPassword(Ljava/lang/String;)V

    #@10
    .line 163
    return-void
.end method

.method public setPort(I)V
    .locals 1
    .param p1, "port"    # I

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 195
    new-instance v0, Lgov/nist/core/HostPort;

    #@6
    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@b
    .line 196
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->setPort(I)V

    #@10
    .line 193
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 175
    new-instance v0, Lgov/nist/javax/sip/address/UserInfo;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/address/UserInfo;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@b
    .line 176
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/UserInfo;->setUser(Ljava/lang/String;)V

    #@10
    .line 173
    return-void
.end method

.method public setUserInfo(Lgov/nist/javax/sip/address/UserInfo;)V
    .locals 0
    .param p1, "u"    # Lgov/nist/javax/sip/address/UserInfo;

    #@0
    .prologue
    .line 212
    iput-object p1, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    #@2
    .line 211
    return-void
.end method
