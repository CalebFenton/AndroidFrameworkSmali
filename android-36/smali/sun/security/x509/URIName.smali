.class public Lsun/security/x509/URIName;
.super Ljava/lang/Object;
.source "URIName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# instance fields
.field private blacklist host:Ljava/lang/String;

.field private blacklist hostDNS:Lsun/security/x509/DNSName;

.field private blacklist hostIP:Lsun/security/x509/IPAddressName;

.field private blacklist uri:Ljava/net/URI;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    :try_start_3
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_a} :catch_a4

    .line 110
    nop

    .line 111
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 115
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    if-eqz v0, :cond_8a

    .line 121
    iget-object v0, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_5b

    .line 123
    iget-object v0, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    iget-object v1, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "ipV6Host":Ljava/lang/String;
    :try_start_38
    new-instance v1, Lsun/security/x509/IPAddressName;

    invoke-direct {v1, v0}, Lsun/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3f} :catch_41

    .line 129
    nop

    .line 130
    .end local v0    # "ipV6Host":Ljava/lang/String;
    goto :goto_8a

    .line 126
    .restart local v0    # "ipV6Host":Ljava/lang/String;
    :catch_41
    move-exception v1

    .line 127
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid URI name (host portion is not a valid IPv6 address):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    .end local v0    # "ipV6Host":Ljava/lang/String;
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_5b
    :try_start_5b
    new-instance v0, Lsun/security/x509/DNSName;

    iget-object v1, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-direct {v0, v1}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_64} :catch_65

    .line 143
    goto :goto_8a

    .line 133
    :catch_65
    move-exception v0

    .line 137
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_66
    new-instance v1, Lsun/security/x509/IPAddressName;

    iget-object v2, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-direct {v1, v2}, Lsun/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6f} :catch_70

    .line 142
    goto :goto_8a

    .line 138
    :catch_70
    move-exception v1

    .line 139
    .local v1, "ioe2":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid URI name (host portion is not a valid DNS name, IPv4 address, or IPv6 address):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "ioe2":Ljava/lang/Exception;
    :cond_8a
    :goto_8a
    return-void

    .line 112
    :cond_8b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI name must include scheme:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :catch_a4
    move-exception v0

    .line 109
    .local v0, "use":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid URI name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor blacklist <init>(Ljava/net/URI;Ljava/lang/String;Lsun/security/x509/DNSName;)V
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "hostDNS"    # Lsun/security/x509/DNSName;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    .line 185
    iput-object p2, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    .line 187
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static blacklist nameConstraint(Lsun/security/util/DerValue;)Lsun/security/x509/URIName;
    .registers 8
    .param p0, "value"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const-string v0, "invalid URI name constraint:"

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "name":Ljava/lang/String;
    :try_start_6
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_b} :catch_65

    .line 163
    .local v2, "uri":Ljava/net/URI;
    nop

    .line 164
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4c

    .line 165
    invoke-virtual {v2}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "host":Ljava/lang/String;
    :try_start_16
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 169
    new-instance v4, Lsun/security/x509/DNSName;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    .local v4, "hostDNS":Lsun/security/x509/DNSName;
    goto :goto_2e

    .line 171
    .end local v4    # "hostDNS":Lsun/security/x509/DNSName;
    :cond_29
    new-instance v4, Lsun/security/x509/DNSName;

    invoke-direct {v4, v3}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v4    # "hostDNS":Lsun/security/x509/DNSName;
    :goto_2e
    new-instance v5, Lsun/security/x509/URIName;

    invoke-direct {v5, v2, v3, v4}, Lsun/security/x509/URIName;-><init>(Ljava/net/URI;Ljava/lang/String;Lsun/security/x509/DNSName;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_33} :catch_34

    return-object v5

    .line 174
    .end local v4    # "hostDNS":Lsun/security/x509/DNSName;
    :catch_34
    move-exception v4

    .line 175
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 178
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_4c
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid URI name constraint (should not include scheme):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    .end local v2    # "uri":Ljava/net/URI;
    :catch_65
    move-exception v2

    .line 162
    .local v2, "use":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public blacklist constrains(Lsun/security/x509/GeneralNameInterface;)I
    .registers 10
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 320
    if-nez p1, :cond_5

    .line 321
    const/4 v0, -0x1

    .local v0, "constraintType":I
    goto/16 :goto_6c

    .line 322
    .end local v0    # "constraintType":I
    :cond_5
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_f

    .line 323
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto/16 :goto_6c

    .line 329
    .end local v0    # "constraintType":I
    :cond_f
    move-object v0, p1

    check-cast v0, Lsun/security/x509/URIName;

    invoke-virtual {v0}, Lsun/security/x509/URIName;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "otherHost":Ljava/lang/String;
    iget-object v1, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 333
    const/4 v1, 0x0

    move v0, v1

    .local v1, "constraintType":I
    goto :goto_6c

    .line 335
    .end local v1    # "constraintType":I
    :cond_21
    move-object v1, p1

    check-cast v1, Lsun/security/x509/URIName;

    invoke-virtual {v1}, Lsun/security/x509/URIName;->getHostObject()Ljava/lang/Object;

    move-result-object v1

    .line 337
    .local v1, "otherHostObject":Ljava/lang/Object;
    iget-object v2, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    if-eqz v2, :cond_6a

    instance-of v2, v1, Lsun/security/x509/DNSName;

    if-nez v2, :cond_31

    goto :goto_6a

    .line 343
    :cond_31
    iget-object v2, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    const/4 v5, 0x1

    if-ne v2, v4, :cond_3f

    move v2, v5

    goto :goto_40

    :cond_3f
    move v2, v3

    .line 344
    .local v2, "thisDomain":Z
    :goto_40
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_47

    move v3, v5

    .line 345
    .local v3, "otherDomain":Z
    :cond_47
    move-object v4, v1

    check-cast v4, Lsun/security/x509/DNSName;

    .line 348
    .local v4, "otherDNS":Lsun/security/x509/DNSName;
    iget-object v6, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    invoke-virtual {v6, v4}, Lsun/security/x509/DNSName;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v6

    .line 351
    .local v6, "constraintType":I
    if-nez v2, :cond_5b

    if-nez v3, :cond_5b

    const/4 v7, 0x2

    if-eq v6, v7, :cond_59

    if-ne v6, v5, :cond_5b

    .line 354
    :cond_59
    const/4 v5, 0x3

    .end local v6    # "constraintType":I
    .local v5, "constraintType":I
    goto :goto_5c

    .line 361
    .end local v5    # "constraintType":I
    .restart local v6    # "constraintType":I
    :cond_5b
    move v5, v6

    .end local v6    # "constraintType":I
    .restart local v5    # "constraintType":I
    :goto_5c
    if-eq v2, v3, :cond_68

    if-nez v5, :cond_68

    .line 363
    if-eqz v2, :cond_65

    .line 364
    const/4 v5, 0x2

    move v0, v5

    goto :goto_6c

    .line 366
    :cond_65
    const/4 v5, 0x1

    move v0, v5

    goto :goto_6c

    .line 372
    .end local v0    # "otherHost":Ljava/lang/String;
    .end local v1    # "otherHostObject":Ljava/lang/Object;
    .end local v2    # "thisDomain":Z
    .end local v3    # "otherDomain":Z
    .end local v4    # "otherDNS":Lsun/security/x509/DNSName;
    :cond_68
    move v0, v5

    goto :goto_6c

    .line 340
    .end local v5    # "constraintType":I
    .restart local v0    # "otherHost":Ljava/lang/String;
    .restart local v1    # "otherHostObject":Ljava/lang/Object;
    :cond_6a
    :goto_6a
    const/4 v2, 0x3

    move v0, v2

    .line 372
    .end local v1    # "otherHostObject":Ljava/lang/Object;
    .local v0, "constraintType":I
    :goto_6c
    return v0
.end method

.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 219
    if-ne p0, p1, :cond_4

    .line 220
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_4
    instance-of v0, p1, Lsun/security/x509/URIName;

    if-nez v0, :cond_a

    .line 224
    const/4 v0, 0x0

    return v0

    .line 227
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/security/x509/URIName;

    .line 229
    .local v0, "other":Lsun/security/x509/URIName;
    iget-object v1, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getHost()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHostObject()Ljava/lang/Object;
    .registers 2

    .line 272
    iget-object v0, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;

    if-eqz v0, :cond_7

    .line 273
    iget-object v0, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;

    return-object v0

    .line 275
    :cond_7
    iget-object v0, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    return-object v0
.end method

.method public greylist getName()Ljava/lang/String;
    .registers 2

    .line 243
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getScheme()Ljava/lang/String;
    .registers 2

    .line 252
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 193
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getURI()Ljava/net/URI;
    .registers 2

    .line 236
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 285
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist subtreeDepth()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, "dnsName":Lsun/security/x509/DNSName;
    :try_start_1
    new-instance v1, Lsun/security/x509/DNSName;

    iget-object v2, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-direct {v1, v2}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_e

    .line 389
    .end local v0    # "dnsName":Lsun/security/x509/DNSName;
    .local v1, "dnsName":Lsun/security/x509/DNSName;
    nop

    .line 390
    invoke-virtual {v1}, Lsun/security/x509/DNSName;->subtreeDepth()I

    move-result v0

    return v0

    .line 387
    .end local v1    # "dnsName":Lsun/security/x509/DNSName;
    .restart local v0    # "dnsName":Lsun/security/x509/DNSName;
    :catch_e
    move-exception v1

    .line 388
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URIName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
