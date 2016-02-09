.class public Lgov/nist/javax/sip/header/Via;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Via.java"

# interfaces
.implements Ljavax/sip/header/ViaHeader;
.implements Lgov/nist/javax/sip/header/ViaHeaderExt;


# static fields
.field public static final BRANCH:Ljava/lang/String; = "branch"

.field public static final MADDR:Ljava/lang/String; = "maddr"

.field public static final RECEIVED:Ljava/lang/String; = "received"

.field public static final RPORT:Ljava/lang/String; = "rport"

.field public static final TTL:Ljava/lang/String; = "ttl"

.field private static final serialVersionUID:J = 0x494c77f8c8b074d2L


# instance fields
.field protected comment:Ljava/lang/String;

.field private rPortFlag:Z

.field protected sentBy:Lgov/nist/core/HostPort;

.field protected sentProtocol:Lgov/nist/javax/sip/header/Protocol;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 104
    const-string/jumbo v0, "Via"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 99
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lgov/nist/javax/sip/header/Via;->rPortFlag:Z

    #@9
    .line 105
    new-instance v0, Lgov/nist/javax/sip/header/Protocol;

    #@b
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    #@e
    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@10
    .line 103
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 534
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/Via;

    #@6
    .line 535
    .local v0, "retval":Lgov/nist/javax/sip/header/Via;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 536
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Protocol;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/header/Protocol;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@14
    .line 537
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 538
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@1a
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->clone()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lgov/nist/core/HostPort;

    #@20
    iput-object v1, v0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@22
    .line 539
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    #@25
    move-result v1

    #@26
    const/4 v2, -0x1

    #@27
    if-eq v1, v2, :cond_2

    #@29
    .line 540
    const-string/jumbo v1, "rport"

    #@2c
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    #@2f
    move-result v2

    #@30
    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;I)V

    #@33
    .line 541
    :cond_2
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Via;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Protocol;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@5
    .line 261
    const-string/jumbo v0, " "

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 262
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@10
    .line 263
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->parameters:Lgov/nist/core/NameValueList;

    #@12
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_0

    #@18
    .line 264
    const-string/jumbo v0, ";"

    #@1b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    .line 265
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->parameters:Lgov/nist/core/NameValueList;

    #@20
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@23
    .line 267
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 268
    const-string/jumbo v0, " "

    #@2a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    move-result-object v0

    #@2e
    const-string/jumbo v1, "("

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    move-result-object v0

    #@35
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    move-result-object v0

    #@3b
    const-string/jumbo v1, ")"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    .line 270
    :cond_1
    iget-boolean v0, p0, Lgov/nist/javax/sip/header/Via;->rPortFlag:Z

    #@43
    if-eqz v0, :cond_2

    #@45
    const-string/jumbo v0, ";rport"

    #@48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4b
    .line 271
    :cond_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 110
    if-ne p1, p0, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 112
    :cond_0
    instance-of v2, p1, Ljavax/sip/header/ViaHeader;

    #@7
    if-eqz v2, :cond_2

    #@9
    move-object v0, p1

    #@a
    .line 113
    check-cast v0, Ljavax/sip/header/ViaHeader;

    #@c
    .line 114
    .local v0, "o":Ljavax/sip/header/ViaHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getProtocol()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v0}, Ljavax/sip/header/ViaHeader;->getProtocol()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 115
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v0}, Ljavax/sip/header/ViaHeader;->getTransport()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v2

    #@26
    .line 114
    if-eqz v2, :cond_1

    #@28
    .line 116
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v0}, Ljavax/sip/header/ViaHeader;->getHost()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@33
    move-result v2

    #@34
    .line 114
    if-eqz v2, :cond_1

    #@36
    .line 117
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getPort()I

    #@39
    move-result v2

    #@3a
    invoke-interface {v0}, Ljavax/sip/header/ViaHeader;->getPort()I

    #@3d
    move-result v3

    #@3e
    if-ne v2, v3, :cond_1

    #@40
    .line 118
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Via;->equalParameters(Ljavax/sip/header/Parameters;)Z

    #@43
    move-result v1

    #@44
    .line 114
    :cond_1
    return v1

    #@45
    .line 120
    .end local v0    # "o":Ljavax/sip/header/ViaHeader;
    :cond_2
    return v1
.end method

.method public getBranch()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 513
    const-string/jumbo v0, "branch"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHop()Ljavax/sip/address/Hop;
    .locals 4

    #@0
    .prologue
    .line 157
    new-instance v0, Lgov/nist/javax/sip/stack/HopImpl;

    #@2
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@4
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 158
    iget-object v2, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@e
    invoke-virtual {v2}, Lgov/nist/core/HostPort;->getPort()I

    #@11
    move-result v2

    #@12
    iget-object v3, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@14
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Protocol;->getTransport()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 157
    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1b
    .line 159
    .local v0, "hop":Lgov/nist/javax/sip/stack/HopImpl;
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 298
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 299
    return-object v2

    #@6
    .line 301
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@8
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    #@b
    move-result-object v0

    #@c
    .line 302
    .local v0, "host":Lgov/nist/core/Host;
    if-nez v0, :cond_1

    #@e
    .line 303
    return-object v2

    #@f
    .line 305
    :cond_1
    invoke-virtual {v0}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method public getMAddr()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 454
    const-string/jumbo v0, "maddr"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 340
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 341
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@8
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getPort()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 396
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 397
    return-object v1

    #@6
    .line 398
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Protocol;->getProtocol()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 128
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 129
    return-object v1

    #@6
    .line 131
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Protocol;->getProtocolVersion()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getRPort()I
    .locals 2

    #@0
    .prologue
    .line 351
    const-string/jumbo v1, "rport"

    #@3
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 352
    .local v0, "strRport":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    const-string/jumbo v1, ""

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 355
    :cond_0
    const/4 v1, -0x1

    #@13
    return v1

    #@14
    .line 353
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v1

    #@1c
    return v1
.end method

.method public getReceived()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 486
    const-string/jumbo v0, "received"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getSentBy()Lgov/nist/core/HostPort;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@2
    return-object v0
.end method

.method public getSentByField()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 549
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 550
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@7
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 551
    :cond_0
    return-object v1
.end method

.method public getSentProtocol()Lgov/nist/javax/sip/header/Protocol;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@2
    return-object v0
.end method

.method public getSentProtocolField()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 558
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 559
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@7
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Protocol;->encode()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 560
    :cond_0
    return-object v1
.end method

.method public getTTL()I
    .locals 2

    #@0
    .prologue
    .line 427
    const-string/jumbo v1, "ttl"

    #@3
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/Via;->getParameterAsInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    .line 428
    .local v0, "ttl":I
    return v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 365
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 366
    return-object v1

    #@6
    .line 367
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Protocol;->getTransport()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getViaParms()Lgov/nist/core/NameValueList;
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->parameters:Lgov/nist/core/NameValueList;

    #@2
    return-object v0
.end method

.method public hasComment()Z
    .locals 1

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public hasPort()Z
    .locals 1

    #@0
    .prologue
    .line 185
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->hasPort()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public removeComment()V
    .locals 1

    #@0
    .prologue
    .line 205
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    #@3
    .line 204
    return-void
.end method

.method public removePort()V
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->removePort()V

    #@5
    .line 198
    return-void
.end method

.method public setBranch(Ljava/lang/String;)V
    .locals 2
    .param p1, "branch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 525
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 526
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    .line 527
    const-string/jumbo v1, "JAIN-SIP Exception, Via, setBranch(), the branch parameter is null or length 0."

    #@d
    .line 526
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 530
    :cond_1
    const-string/jumbo v0, "branch"

    #@14
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 524
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Ljava/lang/String;

    #@0
    .prologue
    .line 249
    iput-object p1, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    #@2
    .line 248
    return-void
.end method

.method public setHost(Lgov/nist/core/Host;)V
    .locals 1
    .param p1, "host"    # Lgov/nist/core/Host;

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 222
    new-instance v0, Lgov/nist/core/HostPort;

    #@6
    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@b
    .line 224
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    #@10
    .line 220
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    iget-object v2, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 283
    new-instance v2, Lgov/nist/core/HostPort;

    #@6
    invoke-direct {v2}, Lgov/nist/core/HostPort;-><init>()V

    #@9
    iput-object v2, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@b
    .line 285
    :cond_0
    :try_start_0
    new-instance v1, Lgov/nist/core/Host;

    #@d
    invoke-direct {v1, p1}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    #@10
    .line 286
    .local v1, "h":Lgov/nist/core/Host;
    iget-object v2, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@12
    invoke-virtual {v2, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 281
    return-void

    #@16
    .line 287
    .end local v1    # "h":Lgov/nist/core/Host;
    :catch_0
    move-exception v0

    #@17
    .line 288
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/NullPointerException;

    #@19
    const-string/jumbo v3, " host parameter is null"

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2
.end method

.method public setMAddr(Ljava/lang/String;)V
    .locals 4
    .param p1, "mAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 467
    if-nez p1, :cond_0

    #@2
    .line 468
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    .line 469
    const-string/jumbo v3, "JAIN-SIP Exception, Via, setMAddr(), the mAddr parameter is null."

    #@7
    .line 468
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 472
    :cond_0
    new-instance v0, Lgov/nist/core/Host;

    #@d
    invoke-direct {v0}, Lgov/nist/core/Host;-><init>()V

    #@10
    .line 473
    .local v0, "host":Lgov/nist/core/Host;
    invoke-virtual {v0, p1}, Lgov/nist/core/Host;->setAddress(Ljava/lang/String;)V

    #@13
    .line 474
    new-instance v1, Lgov/nist/core/NameValue;

    #@15
    const-string/jumbo v2, "maddr"

    #@18
    invoke-direct {v1, v2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@1b
    .line 475
    .local v1, "nameValue":Lgov/nist/core/NameValue;
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/Via;->setParameter(Lgov/nist/core/NameValue;)V

    #@1e
    .line 466
    return-void
.end method

.method public setPort(I)V
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_1

    #@3
    const/4 v0, 0x1

    #@4
    if-lt p1, v0, :cond_0

    #@6
    const v0, 0xffff

    #@9
    if-le p1, v0, :cond_1

    #@b
    .line 318
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@d
    const-string/jumbo v1, "Port value out of range -1, [1..65535]"

    #@10
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 321
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@16
    if-nez v0, :cond_2

    #@18
    .line 322
    new-instance v0, Lgov/nist/core/HostPort;

    #@1a
    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    #@1d
    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@1f
    .line 323
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@21
    invoke-virtual {v0, p1}, Lgov/nist/core/HostPort;->setPort(I)V

    #@24
    .line 315
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 410
    if-nez p1, :cond_0

    #@2
    .line 411
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 412
    const-string/jumbo v1, "JAIN-SIP Exception, Via, setProtocol(), the protocol parameter is null."

    #@7
    .line 411
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 415
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 416
    new-instance v0, Lgov/nist/javax/sip/header/Protocol;

    #@11
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    #@14
    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@16
    .line 418
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@18
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Protocol;->setProtocol(Ljava/lang/String;)V

    #@1b
    .line 409
    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocolVersion"    # Ljava/lang/String;

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 213
    new-instance v0, Lgov/nist/javax/sip/header/Protocol;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@b
    .line 214
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Protocol;->setProtocolVersion(Ljava/lang/String;)V

    #@10
    .line 211
    return-void
.end method

.method public setRPort()V
    .locals 1

    #@0
    .prologue
    .line 330
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/javax/sip/header/Via;->rPortFlag:Z

    #@3
    .line 329
    return-void
.end method

.method public setReceived(Ljava/lang/String;)V
    .locals 2
    .param p1, "received"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 497
    if-nez p1, :cond_0

    #@2
    .line 498
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 499
    const-string/jumbo v1, "JAIN-SIP Exception, Via, setReceived(), the received parameter is null."

    #@7
    .line 498
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 502
    :cond_0
    const-string/jumbo v0, "received"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 496
    return-void
.end method

.method public setSentBy(Lgov/nist/core/HostPort;)V
    .locals 0
    .param p1, "s"    # Lgov/nist/core/HostPort;

    #@0
    .prologue
    .line 240
    iput-object p1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    #@2
    .line 239
    return-void
.end method

.method public setSentProtocol(Lgov/nist/javax/sip/header/Protocol;)V
    .locals 0
    .param p1, "s"    # Lgov/nist/javax/sip/header/Protocol;

    #@0
    .prologue
    .line 232
    iput-object p1, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@2
    .line 231
    return-void
.end method

.method public setTTL(I)V
    .locals 3
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    if-gez p1, :cond_0

    #@2
    const/4 v0, -0x1

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 441
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@7
    .line 442
    const-string/jumbo v1, "JAIN-SIP Exception, Via, setTTL(), the ttl parameter is < 0"

    #@a
    .line 441
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 444
    :cond_0
    new-instance v0, Lgov/nist/core/NameValue;

    #@10
    const-string/jumbo v1, "ttl"

    #@13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@1a
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Via;->setParameter(Lgov/nist/core/NameValue;)V

    #@1d
    .line 439
    return-void
.end method

.method public setTransport(Ljava/lang/String;)V
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 381
    if-nez p1, :cond_0

    #@2
    .line 382
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 383
    const-string/jumbo v1, "JAIN-SIP Exception, Via, setTransport(), the transport parameter is null."

    #@7
    .line 382
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 385
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 386
    new-instance v0, Lgov/nist/javax/sip/header/Protocol;

    #@11
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    #@14
    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@16
    .line 387
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    #@18
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Protocol;->setTransport(Ljava/lang/String;)V

    #@1b
    .line 380
    return-void
.end method
