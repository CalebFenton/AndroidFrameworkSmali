.class public final Lgov/nist/javax/sip/stack/HopImpl;
.super Ljava/lang/Object;
.source "HopImpl.java"

# interfaces
.implements Ljavax/sip/address/Hop;
.implements Ljava/io/Serializable;


# instance fields
.field protected greylist defaultRoute:Z

.field protected greylist host:Ljava/lang/String;

.field protected greylist port:I

.field protected greylist transport:Ljava/lang/String;

.field protected greylist uriRoute:Z


# direct methods
.method constructor greylist <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "hop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-eqz p1, :cond_e8

    .line 99
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 100
    .local v0, "brack":I
    const/16 v1, 0x3a

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 101
    .local v1, "colon":I
    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 103
    .local v2, "slash":I
    const-string v3, "TLS"

    const-string v4, "UDP"

    const/4 v5, 0x0

    if-lez v1, :cond_4e

    .line 104
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 106
    if-lez v2, :cond_35

    .line 107
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "portstr":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    goto :goto_3d

    .line 110
    .end local v6    # "portstr":Ljava/lang/String;
    :cond_35
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 111
    .restart local v6    # "portstr":Ljava/lang/String;
    iput-object v4, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 114
    :goto_3d
    :try_start_3d
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_43} :catch_45

    .line 117
    nop

    .line 118
    .end local v6    # "portstr":Ljava/lang/String;
    goto :goto_73

    .line 115
    .restart local v6    # "portstr":Ljava/lang/String;
    :catch_45
    move-exception v3

    .line 116
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad port spec"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v6    # "portstr":Ljava/lang/String;
    :cond_4e
    const/16 v6, 0x13c4

    if-lez v2, :cond_6d

    .line 120
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 121
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 122
    iget-object v7, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6a

    const/16 v6, 0x13c5

    :cond_6a
    iput v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    goto :goto_73

    .line 124
    :cond_6d
    iput-object p1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 125
    iput-object v4, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 126
    iput v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    .line 131
    :goto_73
    iget-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    if-eqz v6, :cond_e0

    iget-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_e0

    .line 135
    iget-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 136
    iget-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 138
    if-lez v0, :cond_a4

    iget-object v6, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_9c

    goto :goto_a4

    .line 139
    :cond_9c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bad IPv6 reference spec"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_a4
    :goto_a4
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_df

    iget-object v4, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 143
    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_df

    iget-object v3, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 144
    const-string v4, "TCP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_bf

    goto :goto_df

    .line 145
    :cond_bf
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad transport string "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_df
    :goto_df
    return-void

    .line 132
    :cond_e0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "no host!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    .end local v0    # "brack":I
    .end local v1    # "colon":I
    .end local v2    # "slash":I
    :cond_e8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null arg!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "portNumber"    # I
    .param p3, "trans"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_34

    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_34

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 83
    :cond_34
    iput p2, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    .line 84
    iput-object p3, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public greylist getHost()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPort()I
    .registers 2

    .line 163
    iget v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    return v0
.end method

.method public greylist getTransport()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    return-object v0
.end method

.method public greylist isURIRoute()Z
    .registers 2

    .line 177
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->uriRoute:Z

    return v0
.end method

.method public greylist setURIRouteFlag()V
    .registers 2

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->uriRoute:Z

    .line 184
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
