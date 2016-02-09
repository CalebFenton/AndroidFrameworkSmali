.class public final Lgov/nist/core/HostPort;
.super Lgov/nist/core/GenericObject;
.source "HostPort.java"


# static fields
.field private static final serialVersionUID:J = -0x629463c90d3e66ebL


# instance fields
.field protected host:Lgov/nist/core/Host;

.field protected port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    #@3
    .line 61
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    #@6
    .line 62
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lgov/nist/core/HostPort;->port:I

    #@9
    .line 59
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 157
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/core/HostPort;

    #@6
    .line 158
    .local v0, "retval":Lgov/nist/core/HostPort;
    iget-object v1, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 159
    iget-object v1, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    #@c
    invoke-virtual {v1}, Lgov/nist/core/Host;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/core/Host;

    #@12
    iput-object v1, v0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    #@14
    .line 160
    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/Host;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@5
    .line 77
    iget v0, p0, Lgov/nist/core/HostPort;->port:I

    #@7
    const/4 v1, -0x1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 78
    const-string/jumbo v0, ":"

    #@d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Lgov/nist/core/HostPort;->port:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@16
    .line 79
    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 87
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 88
    :cond_0
    invoke-virtual {p0}, Lgov/nist/core/HostPort;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    if-eq v2, v3, :cond_1

    #@e
    .line 89
    return v1

    #@f
    :cond_1
    move-object v0, p1

    #@10
    .line 91
    check-cast v0, Lgov/nist/core/HostPort;

    #@12
    .line 92
    .local v0, "that":Lgov/nist/core/HostPort;
    iget v2, p0, Lgov/nist/core/HostPort;->port:I

    #@14
    iget v3, v0, Lgov/nist/core/HostPort;->port:I

    #@16
    if-ne v2, v3, :cond_2

    #@18
    iget-object v1, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    #@1a
    iget-object v2, v0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    #@1c
    invoke-virtual {v1, v2}, Lgov/nist/core/Host;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    :cond_2
    return v1
.end method

.method public getHost()Lgov/nist/core/Host;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    #@2
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 144
    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 145
    return-object v1

    #@6
    .line 147
    :cond_0
    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    #@8
    invoke-virtual {v0}, Lgov/nist/core/Host;->getInetAddress()Ljava/net/InetAddress;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 106
    iget v0, p0, Lgov/nist/core/HostPort;->port:I

    #@2
    return v0
.end method

.method public hasPort()Z
    .locals 2

    #@0
    .prologue
    .line 114
    iget v0, p0, Lgov/nist/core/HostPort;->port:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/Host;->hashCode()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lgov/nist/core/HostPort;->port:I

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 2
    .param p1, "mergeObject"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 151
    invoke-super {p0, p1}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    #@3
    .line 152
    iget v0, p0, Lgov/nist/core/HostPort;->port:I

    #@5
    const/4 v1, -0x1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 153
    check-cast p1, Lgov/nist/core/HostPort;

    #@a
    .end local p1    # "mergeObject":Ljava/lang/Object;
    iget v0, p1, Lgov/nist/core/HostPort;->port:I

    #@c
    iput v0, p0, Lgov/nist/core/HostPort;->port:I

    #@e
    .line 150
    :cond_0
    return-void
.end method

.method public removePort()V
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, -0x1

    #@1
    iput v0, p0, Lgov/nist/core/HostPort;->port:I

    #@3
    .line 119
    return-void
.end method

.method public setHost(Lgov/nist/core/Host;)V
    .locals 0
    .param p1, "h"    # Lgov/nist/core/Host;

    #@0
    .prologue
    .line 128
    iput-object p1, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    #@2
    .line 127
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "p"    # I

    #@0
    .prologue
    .line 136
    iput p1, p0, Lgov/nist/core/HostPort;->port:I

    #@2
    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 164
    invoke-virtual {p0}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
