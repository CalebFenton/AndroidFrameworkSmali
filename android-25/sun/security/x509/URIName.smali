.class public Lsun/security/x509/URIName;
.super Ljava/lang/Object;
.source "URIName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# instance fields
.field private host:Ljava/lang/String;

.field private hostDNS:Lsun/security/x509/DNSName;

.field private hostIP:Lsun/security/x509/IPAddressName;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 107
    :try_start_0
    new-instance v4, Ljava/net/URI;

    #@5
    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@8
    iput-object v4, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 112
    iget-object v4, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    #@c
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    if-nez v4, :cond_0

    #@12
    .line 113
    new-instance v4, Ljava/io/IOException;

    #@14
    new-instance v5, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v6, "URI name must include scheme:"

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v4

    #@2c
    .line 108
    :catch_0
    move-exception v3

    #@2d
    .line 109
    .local v3, "use":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/io/IOException;

    #@2f
    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v6, "invalid URI name:"

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 109
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@46
    invoke-virtual {v4, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@49
    move-result-object v4

    #@4a
    check-cast v4, Ljava/io/IOException;

    #@4c
    throw v4

    #@4d
    .line 116
    .end local v3    # "use":Ljava/net/URISyntaxException;
    :cond_0
    iget-object v4, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    #@4f
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    iput-object v4, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    #@55
    .line 121
    iget-object v4, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    #@57
    if-eqz v4, :cond_1

    #@59
    .line 122
    iget-object v4, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    #@5b
    const/4 v5, 0x0

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@5f
    move-result v4

    #@60
    const/16 v5, 0x5b

    #@62
    if-ne v4, v5, :cond_2

    #@64
    .line 124
    iget-object v4, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    #@66
    iget-object v5, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    #@68
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@6b
    move-result v5

    #@6c
    add-int/lit8 v5, v5, -0x1

    #@6e
    const/4 v6, 0x1

    #@6f
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    .line 126
    .local v2, "ipV6Host":Ljava/lang/String;
    :try_start_1
    new-instance v4, Lsun/security/x509/IPAddressName;

    #@75
    invoke-direct {v4, v2}, Lsun/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    #@78
    iput-object v4, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@7a
    .line 105
    .end local v2    # "ipV6Host":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    #@7b
    .line 127
    .restart local v2    # "ipV6Host":Ljava/lang/String;
    :catch_1
    move-exception v0

    #@7c
    .line 128
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/io/IOException;

    #@7e
    new-instance v5, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v6, "invalid URI name (host portion is not a valid IPv6 address):"

    #@86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v5

    #@92
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@95
    throw v4

    #@96
    .line 133
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v2    # "ipV6Host":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v4, Lsun/security/x509/DNSName;

    #@98
    iget-object v5, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    #@9a
    invoke-direct {v4, v5}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    #@9d
    iput-object v4, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@9f
    goto :goto_0

    #@a0
    .line 134
    :catch_2
    move-exception v0

    #@a1
    .line 138
    .restart local v0    # "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lsun/security/x509/IPAddressName;

    #@a3
    iget-object v5, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    #@a5
    invoke-direct {v4, v5}, Lsun/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    #@a8
    iput-object v4, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    #@aa
    goto :goto_0

    #@ab
    .line 139
    :catch_3
    move-exception v1

    #@ac
    .line 140
    .local v1, "ioe2":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    #@ae
    new-instance v5, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v6, "invalid URI name (host portion is not a valid DNS name, IPv4 address, or IPv6 address):"

    #@b6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v5

    #@ba
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v5

    #@be
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v5

    #@c2
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v4
.end method

.method constructor <init>(Ljava/net/URI;Ljava/lang/String;Lsun/security/x509/DNSName;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "hostDNS"    # Lsun/security/x509/DNSName;

    #@0
    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 187
    iput-object p1, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    #@5
    .line 188
    iput-object p2, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    #@7
    .line 189
    iput-object p3, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    #@9
    .line 186
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    #@7
    .line 95
    return-void
.end method

.method public static nameConstraint(Lsun/security/util/DerValue;)Lsun/security/x509/URIName;
    .locals 9
    .param p0, "value"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 161
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URI;

    #@6
    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 166
    .local v4, "uri":Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@c
    move-result-object v6

    #@d
    if-nez v6, :cond_1

    #@f
    .line 167
    invoke-virtual {v4}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 170
    .local v0, "host":Ljava/lang/String;
    const/4 v6, 0x0

    #@14
    :try_start_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v6

    #@18
    const/16 v7, 0x2e

    #@1a
    if-ne v6, v7, :cond_0

    #@1c
    .line 171
    new-instance v1, Lsun/security/x509/DNSName;

    #@1e
    const/4 v6, 0x1

    #@1f
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-direct {v1, v6}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    #@26
    .line 175
    .local v1, "hostDNS":Lsun/security/x509/DNSName;
    :goto_0
    new-instance v6, Lsun/security/x509/URIName;

    #@28
    invoke-direct {v6, v4, v0, v1}, Lsun/security/x509/URIName;-><init>(Ljava/net/URI;Ljava/lang/String;Lsun/security/x509/DNSName;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@2b
    return-object v6

    #@2c
    .line 162
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "hostDNS":Lsun/security/x509/DNSName;
    .end local v4    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v5

    #@2d
    .line 163
    .local v5, "use":Ljava/net/URISyntaxException;
    new-instance v6, Ljava/io/IOException;

    #@2f
    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v8, "invalid URI name constraint:"

    #@37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    .line 163
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@46
    invoke-virtual {v6, v5}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@49
    move-result-object v6

    #@4a
    check-cast v6, Ljava/io/IOException;

    #@4c
    throw v6

    #@4d
    .line 173
    .end local v5    # "use":Ljava/net/URISyntaxException;
    .restart local v0    # "host":Ljava/lang/String;
    .restart local v4    # "uri":Ljava/net/URI;
    :cond_0
    :try_start_2
    new-instance v1, Lsun/security/x509/DNSName;

    #@4f
    invoke-direct {v1, v0}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@52
    .restart local v1    # "hostDNS":Lsun/security/x509/DNSName;
    goto :goto_0

    #@53
    .line 176
    .end local v1    # "hostDNS":Lsun/security/x509/DNSName;
    :catch_1
    move-exception v2

    #@54
    .line 177
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/io/IOException;

    #@56
    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v8, "invalid URI name constraint:"

    #@5e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v7

    #@6a
    .line 177
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6d
    invoke-virtual {v6, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@70
    move-result-object v6

    #@71
    check-cast v6, Ljava/io/IOException;

    #@73
    throw v6

    #@74
    .line 181
    .end local v0    # "host":Ljava/lang/String;
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_1
    new-instance v6, Ljava/io/IOException;

    #@76
    new-instance v7, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v8, "invalid URI name constraint (should not include scheme):"

    #@7e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v7

    #@8a
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v6
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 10
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x2e

    #@2
    const/4 v8, 0x0

    #@3
    .line 323
    if-nez p1, :cond_1

    #@5
    .line 324
    const/4 v0, -0x1

    #@6
    .line 375
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    .local v0, "constraintType":I
    :cond_0
    :goto_0
    return v0

    #@7
    .line 325
    .end local v0    # "constraintType":I
    .restart local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    :cond_1
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@a
    move-result v6

    #@b
    const/4 v7, 0x6

    #@c
    if-eq v6, v7, :cond_2

    #@e
    .line 326
    const/4 v0, -0x1

    #@f
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@10
    .end local v0    # "constraintType":I
    :cond_2
    move-object v6, p1

    #@11
    .line 332
    check-cast v6, Lsun/security/x509/URIName;

    #@13
    invoke-virtual {v6}, Lsun/security/x509/URIName;->getHost()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 335
    .local v3, "otherHost":Ljava/lang/String;
    iget-object v6, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    #@19
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_3

    #@1f
    .line 336
    const/4 v0, 0x0

    #@20
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@21
    .line 338
    .end local v0    # "constraintType":I
    :cond_3
    check-cast p1, Lsun/security/x509/URIName;

    #@23
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/URIName;->getHostObject()Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    .line 340
    .local v4, "otherHostObject":Ljava/lang/Object;
    iget-object v6, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    #@29
    if-eqz v6, :cond_5

    #@2b
    .line 341
    instance-of v6, v4, Lsun/security/x509/DNSName;

    #@2d
    if-eqz v6, :cond_5

    #@2f
    .line 346
    iget-object v6, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    #@31
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v6

    #@35
    if-ne v6, v9, :cond_6

    #@37
    const/4 v5, 0x1

    #@38
    .line 347
    .local v5, "thisDomain":Z
    :goto_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    #@3b
    move-result v6

    #@3c
    if-ne v6, v9, :cond_7

    #@3e
    const/4 v2, 0x1

    #@3f
    .local v2, "otherDomain":Z
    :goto_2
    move-object v1, v4

    #@40
    .line 348
    check-cast v1, Lsun/security/x509/DNSName;

    #@42
    .line 351
    .local v1, "otherDNS":Lsun/security/x509/DNSName;
    iget-object v6, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    #@44
    invoke-virtual {v6, v1}, Lsun/security/x509/DNSName;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    #@47
    move-result v0

    #@48
    .line 354
    .restart local v0    # "constraintType":I
    if-nez v5, :cond_4

    #@4a
    if-eqz v2, :cond_8

    #@4c
    .line 364
    :cond_4
    :goto_3
    if-eq v5, v2, :cond_0

    #@4e
    .line 365
    if-nez v0, :cond_0

    #@50
    .line 366
    if-eqz v5, :cond_a

    #@52
    .line 367
    const/4 v0, 0x2

    #@53
    goto :goto_0

    #@54
    .line 343
    .end local v0    # "constraintType":I
    .end local v1    # "otherDNS":Lsun/security/x509/DNSName;
    .end local v2    # "otherDomain":Z
    .end local v5    # "thisDomain":Z
    :cond_5
    const/4 v0, 0x3

    #@55
    .line 341
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@56
    .line 346
    .end local v0    # "constraintType":I
    :cond_6
    const/4 v5, 0x0

    #@57
    .restart local v5    # "thisDomain":Z
    goto :goto_1

    #@58
    .line 347
    :cond_7
    const/4 v2, 0x0

    #@59
    .restart local v2    # "otherDomain":Z
    goto :goto_2

    #@5a
    .line 355
    .restart local v0    # "constraintType":I
    .restart local v1    # "otherDNS":Lsun/security/x509/DNSName;
    :cond_8
    const/4 v6, 0x2

    #@5b
    if-eq v0, v6, :cond_9

    #@5d
    .line 356
    const/4 v6, 0x1

    #@5e
    if-ne v0, v6, :cond_4

    #@60
    .line 357
    :cond_9
    const/4 v0, 0x3

    #@61
    goto :goto_3

    #@62
    .line 369
    :cond_a
    const/4 v0, 0x1

    #@63
    goto :goto_0
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    #@2
    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    #@9
    .line 205
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 222
    if-ne p0, p1, :cond_0

    #@2
    .line 223
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 226
    :cond_0
    instance-of v1, p1, Lsun/security/x509/URIName;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 227
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 230
    check-cast v0, Lsun/security/x509/URIName;

    #@d
    .line 232
    .local v0, "other":Lsun/security/x509/URIName;
    iget-object v1, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    #@f
    invoke-virtual {v0}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHostObject()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 276
    iget-object v0, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;

    #@6
    return-object v0

    #@7
    .line 278
    :cond_0
    iget-object v0, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    #@9
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    #@2
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    #@2
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 196
    const/4 v0, 0x6

    #@1
    return v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    #@2
    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public subtreeDepth()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 387
    const/4 v0, 0x0

    #@1
    .line 389
    .local v0, "dnsName":Lsun/security/x509/DNSName;
    :try_start_0
    new-instance v0, Lsun/security/x509/DNSName;

    #@3
    .end local v0    # "dnsName":Lsun/security/x509/DNSName;
    iget-object v2, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    #@5
    invoke-direct {v0, v2}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 393
    .local v0, "dnsName":Lsun/security/x509/DNSName;
    invoke-virtual {v0}, Lsun/security/x509/DNSName;->subtreeDepth()I

    #@b
    move-result v2

    #@c
    return v2

    #@d
    .line 390
    .end local v0    # "dnsName":Lsun/security/x509/DNSName;
    :catch_0
    move-exception v1

    #@e
    .line 391
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@10
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "URIName: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    #@e
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method
