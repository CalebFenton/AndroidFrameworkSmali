.class public final Lgov/nist/javax/sip/stack/HopImpl;
.super Ljava/lang/Object;
.source "HopImpl.java"

# interfaces
.implements Ljavax/sip/address/Hop;
.implements Ljava/io/Serializable;


# instance fields
.field protected defaultRoute:Z

.field protected host:Ljava/lang/String;

.field protected port:I

.field protected transport:Ljava/lang/String;

.field protected uriRoute:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "hop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x13c4

    #@2
    const/4 v8, 0x0

    #@3
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 95
    if-nez p1, :cond_0

    #@8
    .line 96
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v6, "Null arg!"

    #@d
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v5

    #@11
    .line 99
    :cond_0
    const/16 v6, 0x5d

    #@13
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    #@16
    move-result v0

    #@17
    .line 100
    .local v0, "brack":I
    const/16 v6, 0x3a

    #@19
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(II)I

    #@1c
    move-result v1

    #@1d
    .line 101
    .local v1, "colon":I
    const/16 v6, 0x2f

    #@1f
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    #@22
    move-result v4

    #@23
    .line 103
    .local v4, "slash":I
    if-lez v1, :cond_3

    #@25
    .line 104
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@2b
    .line 106
    if-lez v4, :cond_2

    #@2d
    .line 107
    add-int/lit8 v5, v1, 0x1

    #@2f
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 108
    .local v3, "portstr":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    #@35
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@3b
    .line 114
    :goto_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3e
    move-result v5

    #@3f
    iput v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 131
    .end local v3    # "portstr":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@43
    if-eqz v5, :cond_1

    #@45
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@47
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@4a
    move-result v5

    #@4b
    if-nez v5, :cond_6

    #@4d
    .line 132
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4f
    const-string/jumbo v6, "no host!"

    #@52
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@55
    throw v5

    #@56
    .line 110
    :cond_2
    add-int/lit8 v5, v1, 0x1

    #@58
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    .line 111
    .restart local v3    # "portstr":Ljava/lang/String;
    const-string/jumbo v5, "UDP"

    #@5f
    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@61
    goto :goto_0

    #@62
    .line 115
    :catch_0
    move-exception v2

    #@63
    .line 116
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@65
    const-string/jumbo v6, "Bad port spec"

    #@68
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v5

    #@6c
    .line 119
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .end local v3    # "portstr":Ljava/lang/String;
    :cond_3
    if-lez v4, :cond_5

    #@6e
    .line 120
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    iput-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@74
    .line 121
    add-int/lit8 v6, v4, 0x1

    #@76
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    iput-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@7c
    .line 122
    iget-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@7e
    const-string/jumbo v7, "TLS"

    #@81
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@84
    move-result v6

    #@85
    if-eqz v6, :cond_4

    #@87
    const/16 v5, 0x13c5

    #@89
    :cond_4
    iput v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    #@8b
    goto :goto_1

    #@8c
    .line 124
    :cond_5
    iput-object p1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@8e
    .line 125
    const-string/jumbo v6, "UDP"

    #@91
    iput-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@93
    .line 126
    iput v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    #@95
    goto :goto_1

    #@96
    .line 135
    :cond_6
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@98
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@9e
    .line 136
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@a0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a3
    move-result-object v5

    #@a4
    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@a6
    .line 138
    if-lez v0, :cond_7

    #@a8
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@aa
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    #@ad
    move-result v5

    #@ae
    const/16 v6, 0x5b

    #@b0
    if-eq v5, v6, :cond_7

    #@b2
    .line 139
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@b4
    const-string/jumbo v6, "Bad IPv6 reference spec"

    #@b7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v5

    #@bb
    .line 142
    :cond_7
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@bd
    const-string/jumbo v6, "UDP"

    #@c0
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@c3
    move-result v5

    #@c4
    if-eqz v5, :cond_8

    #@c6
    .line 143
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@c8
    const-string/jumbo v6, "TLS"

    #@cb
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@ce
    move-result v5

    #@cf
    if-eqz v5, :cond_8

    #@d1
    .line 144
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@d3
    const-string/jumbo v6, "TCP"

    #@d6
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@d9
    move-result v5

    #@da
    if-eqz v5, :cond_8

    #@dc
    .line 145
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@de
    new-instance v6, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v7, "Bad transport string "

    #@e6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v6

    #@ea
    iget-object v7, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@ec
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v6

    #@f0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v6

    #@f4
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f7
    .line 146
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@f9
    invoke-direct {v5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@fc
    throw v5

    #@fd
    .line 93
    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "portNumber"    # I
    .param p3, "trans"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iput-object p1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@5
    .line 79
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@7
    const-string/jumbo v1, ":"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    if-ltz v0, :cond_0

    #@10
    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@12
    const-string/jumbo v1, "["

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    if-gez v0, :cond_0

    #@1b
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v1, "["

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    const-string/jumbo v1, "]"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@3a
    .line 83
    :cond_0
    iput p2, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    #@3c
    .line 84
    iput-object p3, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@3e
    .line 74
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 163
    iget v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    #@2
    return v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isURIRoute()Z
    .locals 1

    #@0
    .prologue
    .line 177
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->uriRoute:Z

    #@2
    return v0
.end method

.method public setURIRouteFlag()V
    .locals 1

    #@0
    .prologue
    .line 183
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->uriRoute:Z

    #@3
    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ":"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, "/"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method
