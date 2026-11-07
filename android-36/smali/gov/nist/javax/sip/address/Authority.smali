.class public Lgov/nist/javax/sip/address/Authority;
.super Lgov/nist/javax/sip/address/NetObject;
.source "Authority.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x318c6e34baa9fca6L


# instance fields
.field protected greylist hostPort:Lgov/nist/core/HostPort;

.field protected greylist userInfo:Lgov/nist/javax/sip/address/UserInfo;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 223
    invoke-super {p0}, Lgov/nist/javax/sip/address/NetObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/Authority;

    .line 224
    .local v0, "retval":Lgov/nist/javax/sip/address/Authority;
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-eqz v1, :cond_14

    .line 225
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v1}, Lgov/nist/core/HostPort;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/HostPort;

    iput-object v1, v0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 226
    :cond_14
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz v1, :cond_22

    .line 227
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/UserInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/UserInfo;

    iput-object v1, v0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 228
    :cond_22
    return-object v0
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 63
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz v0, :cond_14

    .line 64
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/UserInfo;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 65
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 68
    :cond_14
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 70
    :goto_19
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 80
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    .line 81
    return v0

    .line 83
    :cond_f
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/address/Authority;

    .line 84
    .local v1, "otherAuth":Lgov/nist/javax/sip/address/Authority;
    iget-object v2, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    iget-object v3, v1, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v2, v3}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 85
    return v0

    .line 87
    :cond_1d
    iget-object v2, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz v2, :cond_30

    iget-object v2, v1, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz v2, :cond_30

    .line 88
    iget-object v2, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    iget-object v3, v1, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/UserInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 89
    return v0

    .line 92
    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getHost()Lgov/nist/core/Host;
    .registers 2

    .line 135
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez v0, :cond_6

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    return-object v0
.end method

.method public greylist getHostPort()Lgov/nist/core/HostPort;
    .registers 2

    .line 100
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    return-object v0
.end method

.method public greylist getPassword()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-nez v0, :cond_6

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    iget-object v0, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPort()I
    .registers 2

    .line 146
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez v0, :cond_6

    .line 147
    const/4 v0, -0x1

    return v0

    .line 149
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getPort()I

    move-result v0

    return v0
.end method

.method public greylist getUser()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    iget-object v0, v0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public greylist getUserInfo()Lgov/nist/javax/sip/address/UserInfo;
    .registers 2

    .line 108
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 233
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-eqz v0, :cond_f

    .line 234
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 233
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Null hostPort cannot compute hashcode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removePort()V
    .registers 2

    .line 155
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-eqz v0, :cond_9

    .line 156
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->removePort()V

    .line 157
    :cond_9
    return-void
.end method

.method public greylist removeUserInfo()V
    .registers 2

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 220
    return-void
.end method

.method public greylist setHost(Lgov/nist/core/Host;)V
    .registers 3
    .param p1, "host"    # Lgov/nist/core/Host;

    .line 184
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez v0, :cond_b

    .line 185
    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 186
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 187
    return-void
.end method

.method public greylist setHostPort(Lgov/nist/core/HostPort;)V
    .registers 2
    .param p1, "h"    # Lgov/nist/core/HostPort;

    .line 204
    iput-object p1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 205
    return-void
.end method

.method public greylist setPassword(Ljava/lang/String;)V
    .registers 3
    .param p1, "passwd"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-nez v0, :cond_b

    .line 165
    new-instance v0, Lgov/nist/javax/sip/address/UserInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/UserInfo;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 166
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/UserInfo;->setPassword(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public greylist setPort(I)V
    .registers 3
    .param p1, "port"    # I

    .line 194
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez v0, :cond_b

    .line 195
    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 196
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 197
    return-void
.end method

.method public greylist setUser(Ljava/lang/String;)V
    .registers 3
    .param p1, "user"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-nez v0, :cond_b

    .line 175
    new-instance v0, Lgov/nist/javax/sip/address/UserInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/UserInfo;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 176
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/UserInfo;->setUser(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public greylist setUserInfo(Lgov/nist/javax/sip/address/UserInfo;)V
    .registers 2
    .param p1, "u"    # Lgov/nist/javax/sip/address/UserInfo;

    .line 212
    iput-object p1, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 213
    return-void
.end method
