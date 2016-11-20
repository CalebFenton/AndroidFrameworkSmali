.class public Lsun/security/util/HostnameChecker;
.super Ljava/lang/Object;
.source "HostnameChecker.java"


# static fields
.field private static final ALTNAME_DNS:I = 0x2

.field private static final ALTNAME_IP:I = 0x7

.field private static final INSTANCE_LDAP:Lsun/security/util/HostnameChecker;

.field private static final INSTANCE_TLS:Lsun/security/util/HostnameChecker;

.field public static final TYPE_LDAP:B = 0x2t

.field public static final TYPE_TLS:B = 0x1t


# instance fields
.field private final checkType:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 51
    new-instance v0, Lsun/security/util/HostnameChecker;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Lsun/security/util/HostnameChecker;-><init>(B)V

    #@6
    .line 50
    sput-object v0, Lsun/security/util/HostnameChecker;->INSTANCE_TLS:Lsun/security/util/HostnameChecker;

    #@8
    .line 56
    new-instance v0, Lsun/security/util/HostnameChecker;

    #@a
    const/4 v1, 0x2

    #@b
    invoke-direct {v0, v1}, Lsun/security/util/HostnameChecker;-><init>(B)V

    #@e
    .line 55
    sput-object v0, Lsun/security/util/HostnameChecker;->INSTANCE_LDAP:Lsun/security/util/HostnameChecker;

    #@10
    .line 46
    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .param p1, "checkType"    # B

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    iput-byte p1, p0, Lsun/security/util/HostnameChecker;->checkType:B

    #@5
    .line 65
    return-void
.end method

.method public static getInstance(B)Lsun/security/util/HostnameChecker;
    .locals 3
    .param p0, "checkType"    # B

    #@0
    .prologue
    .line 74
    const/4 v0, 0x1

    #@1
    if-ne p0, v0, :cond_0

    #@3
    .line 75
    sget-object v0, Lsun/security/util/HostnameChecker;->INSTANCE_TLS:Lsun/security/util/HostnameChecker;

    #@5
    return-object v0

    #@6
    .line 76
    :cond_0
    const/4 v0, 0x2

    #@7
    if-ne p0, v0, :cond_1

    #@9
    .line 77
    sget-object v0, Lsun/security/util/HostnameChecker;->INSTANCE_LDAP:Lsun/security/util/HostnameChecker;

    #@b
    return-object v0

    #@c
    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Unknown check type: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0
.end method

.method public static getServerName(Ljava/security/Principal;)Ljava/lang/String;
    .locals 1
    .param p0, "principal"    # Ljava/security/Principal;

    #@0
    .prologue
    .line 109
    invoke-static {p0}, Lsun/security/ssl/Krb5Helper;->getPrincipalHostName(Ljava/security/Principal;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getSubjectX500Name(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X500Name;
    .locals 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@3
    move-result-object v1

    #@4
    .line 223
    .local v1, "subjectDN":Ljava/security/Principal;
    instance-of v3, v1, Lsun/security/x509/X500Name;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 224
    nop

    #@9
    nop

    #@a
    .end local v1    # "subjectDN":Ljava/security/Principal;
    return-object v1

    #@b
    .line 226
    .restart local v1    # "subjectDN":Ljava/security/Principal;
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@e
    move-result-object v2

    #@f
    .line 227
    .local v2, "subjectX500":Ljavax/security/auth/x500/X500Principal;
    new-instance v3, Lsun/security/x509/X500Name;

    #@11
    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@14
    move-result-object v4

    #@15
    invoke-direct {v3, v4}, Lsun/security/x509/X500Name;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    return-object v3

    #@19
    .line 229
    .end local v1    # "subjectDN":Ljava/security/Principal;
    .end local v2    # "subjectX500":Ljavax/security/auth/x500/X500Principal;
    :catch_0
    move-exception v0

    #@1a
    .line 231
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    #@1c
    invoke-direct {v3}, Ljava/security/cert/CertificateParsingException;-><init>()V

    #@1f
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@22
    move-result-object v3

    #@23
    .line 230
    check-cast v3, Ljava/security/cert/CertificateParsingException;

    #@25
    throw v3
.end method

.method private static isIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 122
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->isIPv4LiteralAddress(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 123
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->isIPv6LiteralAddress(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    .line 122
    if-eqz v0, :cond_1

    #@c
    .line 124
    :cond_0
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 126
    :cond_1
    const/4 v0, 0x0

    #@f
    return v0
.end method

.method private isMatched(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/lang/String;

    #@0
    .prologue
    .line 247
    iget-byte v0, p0, Lsun/security/util/HostnameChecker;->checkType:B

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 248
    invoke-static {p1, p2}, Lsun/security/util/HostnameChecker;->matchAllWildcards(Ljava/lang/String;Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 249
    :cond_0
    iget-byte v0, p0, Lsun/security/util/HostnameChecker;->checkType:B

    #@c
    const/4 v1, 0x2

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 250
    invoke-static {p1, p2}, Lsun/security/util/HostnameChecker;->matchLeftmostWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 252
    :cond_1
    const/4 v0, 0x0

    #@15
    return v0
.end method

.method public static match(Ljava/lang/String;Ljava/security/Principal;)Z
    .locals 2
    .param p0, "expectedName"    # Ljava/lang/String;
    .param p1, "principal"    # Ljava/security/Principal;

    #@0
    .prologue
    .line 101
    invoke-static {p1}, Lsun/security/util/HostnameChecker;->getServerName(Ljava/security/Principal;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 102
    .local v0, "hostName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    return v1
.end method

.method private static matchAllWildcards(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    .line 271
    new-instance v0, Ljava/util/StringTokenizer;

    #@b
    const-string/jumbo v2, "."

    #@e
    invoke-direct {v0, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 272
    .local v0, "nameSt":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/StringTokenizer;

    #@13
    const-string/jumbo v2, "."

    #@16
    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 274
    .local v1, "templateSt":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    #@20
    move-result v3

    #@21
    if-eq v2, v3, :cond_0

    #@23
    .line 275
    return v4

    #@24
    .line 278
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 279
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 280
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 279
    invoke-static {v2, v3}, Lsun/security/util/HostnameChecker;->matchWildCards(Ljava/lang/String;Ljava/lang/String;)Z

    #@35
    move-result v2

    #@36
    if-nez v2, :cond_0

    #@38
    .line 281
    return v4

    #@39
    .line 284
    :cond_1
    const/4 v2, 0x1

    #@3a
    return v2
.end method

.method private matchDNS(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 12
    .param p1, "expectedName"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    #@3
    move-result-object v7

    #@4
    .line 177
    .local v7, "subjAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-eqz v7, :cond_2

    #@6
    .line 178
    const/4 v3, 0x0

    #@7
    .line 179
    .local v3, "foundDNS":Z
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v6

    #@b
    .local v6, "next$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v9

    #@f
    if-eqz v9, :cond_1

    #@11
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    check-cast v5, Ljava/util/List;

    #@17
    .line 180
    .local v5, "next":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v9, 0x0

    #@18
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v9

    #@1c
    check-cast v9, Ljava/lang/Integer;

    #@1e
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@21
    move-result v9

    #@22
    const/4 v10, 0x2

    #@23
    if-ne v9, v10, :cond_0

    #@25
    .line 181
    const/4 v3, 0x1

    #@26
    .line 182
    const/4 v9, 0x1

    #@27
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Ljava/lang/String;

    #@2d
    .line 183
    .local v1, "dnsName":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lsun/security/util/HostnameChecker;->isMatched(Ljava/lang/String;Ljava/lang/String;)Z

    #@30
    move-result v9

    #@31
    if-eqz v9, :cond_0

    #@33
    .line 184
    return-void

    #@34
    .line 188
    .end local v1    # "dnsName":Ljava/lang/String;
    .end local v5    # "next":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1
    if-eqz v3, :cond_2

    #@36
    .line 191
    new-instance v9, Ljava/security/cert/CertificateException;

    #@38
    new-instance v10, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v11, "No subject alternative DNS name matching "

    #@40
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v10

    #@44
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v10

    #@48
    .line 192
    const-string/jumbo v11, " found."

    #@4b
    .line 191
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v10

    #@4f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v10

    #@53
    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@56
    throw v9

    #@57
    .line 195
    .end local v3    # "foundDNS":Z
    .end local v6    # "next$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-static {p2}, Lsun/security/util/HostnameChecker;->getSubjectX500Name(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X500Name;

    #@5a
    move-result-object v8

    #@5b
    .line 197
    .local v8, "subjectName":Lsun/security/x509/X500Name;
    sget-object v9, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    #@5d
    .line 196
    invoke-virtual {v8, v9}, Lsun/security/x509/X500Name;->findMostSpecificAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    #@60
    move-result-object v0

    #@61
    .line 198
    .local v0, "derValue":Lsun/security/util/DerValue;
    if-eqz v0, :cond_3

    #@63
    .line 200
    :try_start_0
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    #@66
    move-result-object v9

    #@67
    invoke-direct {p0, p1, v9}, Lsun/security/util/HostnameChecker;->isMatched(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    move-result v9

    #@6b
    if-eqz v9, :cond_3

    #@6d
    .line 201
    return-void

    #@6e
    .line 203
    :catch_0
    move-exception v2

    #@6f
    .line 207
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v10, "No name matching "

    #@77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v9

    #@7f
    const-string/jumbo v10, " found"

    #@82
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v9

    #@86
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v4

    #@8a
    .line 208
    .local v4, "msg":Ljava/lang/String;
    new-instance v9, Ljava/security/cert/CertificateException;

    #@8c
    invoke-direct {v9, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v9
.end method

.method private static matchIP(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 7
    .param p0, "expectedIP"    # Ljava/lang/String;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    #@3
    move-result-object v3

    #@4
    .line 141
    .local v3, "subjAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-nez v3, :cond_0

    #@6
    .line 142
    new-instance v4, Ljava/security/cert/CertificateException;

    #@8
    .line 143
    const-string/jumbo v5, "No subject alternative names present"

    #@b
    .line 142
    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 145
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "next$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_2

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/util/List;

    #@1f
    .line 147
    .local v1, "next":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v4, 0x0

    #@20
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Ljava/lang/Integer;

    #@26
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@29
    move-result v4

    #@2a
    const/4 v5, 0x7

    #@2b
    if-ne v4, v5, :cond_1

    #@2d
    .line 148
    const/4 v4, 0x1

    #@2e
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/lang/String;

    #@34
    .line 149
    .local v0, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_1

    #@3a
    .line 150
    return-void

    #@3b
    .line 154
    .end local v0    # "ipAddress":Ljava/lang/String;
    .end local v1    # "next":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_2
    new-instance v4, Ljava/security/cert/CertificateException;

    #@3d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "No subject alternative names matching IP address "

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    .line 156
    const-string/jumbo v6, " found"

    #@50
    .line 154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v4
.end method

.method private static matchLeftmostWildcard(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@9
    move-result-object p1

    #@a
    .line 303
    const-string/jumbo v2, "."

    #@d
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 304
    .local v1, "templateIdx":I
    const-string/jumbo v2, "."

    #@14
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@17
    move-result v0

    #@18
    .line 306
    .local v0, "nameIdx":I
    if-ne v1, v3, :cond_0

    #@1a
    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1d
    move-result v1

    #@1e
    .line 308
    :cond_0
    if-ne v0, v3, :cond_1

    #@20
    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@23
    move-result v0

    #@24
    .line 311
    :cond_1
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 312
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 311
    invoke-static {v2, v3}, Lsun/security/util/HostnameChecker;->matchWildCards(Ljava/lang/String;Ljava/lang/String;)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_2

    #@32
    .line 315
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    return v2

    #@3f
    .line 318
    :cond_2
    return v4
.end method

.method private static matchWildCards(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 329
    const-string/jumbo v5, "*"

    #@5
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@8
    move-result v4

    #@9
    .line 330
    .local v4, "wildcardIdx":I
    if-ne v4, v6, :cond_0

    #@b
    .line 331
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v5

    #@f
    return v5

    #@10
    .line 333
    :cond_0
    const/4 v3, 0x1

    #@11
    .line 334
    .local v3, "isBeginning":Z
    const-string/jumbo v2, ""

    #@14
    .line 335
    .local v2, "beforeWildcard":Ljava/lang/String;
    move-object v0, p1

    #@15
    .line 337
    .local v0, "afterWildcard":Ljava/lang/String;
    :goto_0
    if-eq v4, v6, :cond_3

    #@17
    .line 340
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 341
    add-int/lit8 v5, v4, 0x1

    #@1d
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 343
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@24
    move-result v1

    #@25
    .line 344
    .local v1, "beforeStartIdx":I
    if-eq v1, v6, :cond_1

    #@27
    .line 345
    if-eqz v3, :cond_2

    #@29
    if-eqz v1, :cond_2

    #@2b
    .line 346
    :cond_1
    return v7

    #@2c
    .line 348
    :cond_2
    const/4 v3, 0x0

    #@2d
    .line 351
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@30
    move-result v5

    #@31
    add-int/2addr v5, v1

    #@32
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@35
    move-result-object p0

    #@36
    .line 352
    const-string/jumbo v5, "*"

    #@39
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@3c
    move-result v4

    #@3d
    goto :goto_0

    #@3e
    .line 354
    .end local v1    # "beforeStartIdx":I
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@41
    move-result v5

    #@42
    return v5
.end method


# virtual methods
.method public match(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "expectedName"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    invoke-static {p1}, Lsun/security/util/HostnameChecker;->isIpAddress(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 91
    invoke-static {p1, p2}, Lsun/security/util/HostnameChecker;->matchIP(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    #@9
    .line 89
    :goto_0
    return-void

    #@a
    .line 93
    :cond_0
    invoke-direct {p0, p1, p2}, Lsun/security/util/HostnameChecker;->matchDNS(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    #@d
    goto :goto_0
.end method
