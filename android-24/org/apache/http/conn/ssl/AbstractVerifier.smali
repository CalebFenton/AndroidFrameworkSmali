.class public abstract Lorg/apache/http/conn/ssl/AbstractVerifier;
.super Ljava/lang/Object;
.source "AbstractVerifier.java"

# interfaces
.implements Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String;

.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 67
    const-string/jumbo v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    #@3
    .line 66
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lorg/apache/http/conn/ssl/AbstractVerifier;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    #@9
    .line 80
    const/16 v0, 0xe

    #@b
    new-array v0, v0, [Ljava/lang/String;

    #@d
    const-string/jumbo v1, "ac"

    #@10
    const/4 v2, 0x0

    #@11
    aput-object v1, v0, v2

    #@13
    const-string/jumbo v1, "co"

    #@16
    const/4 v2, 0x1

    #@17
    aput-object v1, v0, v2

    #@19
    const-string/jumbo v1, "com"

    #@1c
    const/4 v2, 0x2

    #@1d
    aput-object v1, v0, v2

    #@1f
    const-string/jumbo v1, "ed"

    #@22
    const/4 v2, 0x3

    #@23
    aput-object v1, v0, v2

    #@25
    const-string/jumbo v1, "edu"

    #@28
    const/4 v2, 0x4

    #@29
    aput-object v1, v0, v2

    #@2b
    const-string/jumbo v1, "go"

    #@2e
    const/4 v2, 0x5

    #@2f
    aput-object v1, v0, v2

    #@31
    const-string/jumbo v1, "gouv"

    #@34
    const/4 v2, 0x6

    #@35
    aput-object v1, v0, v2

    #@37
    const-string/jumbo v1, "gov"

    #@3a
    const/4 v2, 0x7

    #@3b
    aput-object v1, v0, v2

    #@3d
    const-string/jumbo v1, "info"

    #@40
    const/16 v2, 0x8

    #@42
    aput-object v1, v0, v2

    #@44
    .line 81
    const-string/jumbo v1, "lg"

    #@47
    const/16 v2, 0x9

    #@49
    aput-object v1, v0, v2

    #@4b
    const-string/jumbo v1, "ne"

    #@4e
    const/16 v2, 0xa

    #@50
    aput-object v1, v0, v2

    #@52
    const-string/jumbo v1, "net"

    #@55
    const/16 v2, 0xb

    #@57
    aput-object v1, v0, v2

    #@59
    const-string/jumbo v1, "or"

    #@5c
    const/16 v2, 0xc

    #@5e
    aput-object v1, v0, v2

    #@60
    const-string/jumbo v1, "org"

    #@63
    const/16 v2, 0xd

    #@65
    aput-object v1, v0, v2

    #@67
    .line 79
    sput-object v0, Lorg/apache/http/conn/ssl/AbstractVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    #@69
    .line 85
    sget-object v0, Lorg/apache/http/conn/ssl/AbstractVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    #@6b
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@6e
    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    return-void
.end method

.method public static acceptableCountryWildcard(Ljava/lang/String;)Z
    .locals 7
    .param p0, "cn"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    .line 197
    .local v0, "cnLen":I
    const/4 v5, 0x7

    #@7
    if-lt v0, v5, :cond_1

    #@9
    const/16 v5, 0x9

    #@b
    if-gt v0, v5, :cond_1

    #@d
    .line 199
    add-int/lit8 v5, v0, -0x3

    #@f
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v5

    #@13
    const/16 v6, 0x2e

    #@15
    if-ne v5, v6, :cond_1

    #@17
    .line 201
    add-int/lit8 v5, v0, -0x3

    #@19
    const/4 v6, 0x2

    #@1a
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 203
    .local v1, "s":Ljava/lang/String;
    sget-object v5, Lorg/apache/http/conn/ssl/AbstractVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    #@20
    invoke-static {v5, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    #@23
    move-result v2

    #@24
    .line 204
    .local v2, "x":I
    if-gez v2, :cond_0

    #@26
    :goto_0
    return v3

    #@27
    :cond_0
    move v3, v4

    #@28
    goto :goto_0

    #@29
    .line 207
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "x":I
    :cond_1
    return v3
.end method

.method public static countDots(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 275
    const/4 v0, 0x0

    #@1
    .line 276
    .local v0, "count":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-ge v1, v2, :cond_1

    #@8
    .line 277
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v2

    #@c
    const/16 v3, 0x2e

    #@e
    if-ne v2, v3, :cond_0

    #@10
    .line 278
    add-int/lit8 v0, v0, 0x1

    #@12
    .line 276
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 281
    :cond_1
    return v0
.end method

.method public static getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .locals 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 212
    new-instance v2, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;

    #@2
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@5
    move-result-object v3

    #@6
    invoke-direct {v2, v3}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    #@9
    .line 213
    .local v2, "dnParser":Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;
    const-string/jumbo v3, "cn"

    #@c
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getAllMostSpecificFirst(Ljava/lang/String;)Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    .line 215
    .local v0, "cnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_0

    #@16
    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@19
    move-result v3

    #@1a
    new-array v1, v3, [Ljava/lang/String;

    #@1c
    .line 217
    .local v1, "cns":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1f
    .line 218
    return-object v1

    #@20
    .line 220
    .end local v1    # "cns":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@21
    return-object v3
.end method

.method public static getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .locals 13
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 240
    new-instance v6, Ljava/util/LinkedList;

    #@3
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    #@6
    .line 241
    .local v6, "subjectAltList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@7
    .line 243
    .local v2, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    .line 249
    .end local v2    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :goto_0
    if-eqz v2, :cond_1

    #@d
    .line 250
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "aC$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v9

    #@15
    if-eqz v9, :cond_1

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/List;

    #@1d
    .line 251
    .local v0, "aC":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v4, v0

    #@1e
    .line 252
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v9, 0x0

    #@1f
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v9

    #@23
    check-cast v9, Ljava/lang/Integer;

    #@25
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result v8

    #@29
    .line 254
    .local v8, "type":I
    const/4 v9, 0x2

    #@2a
    if-ne v8, v9, :cond_0

    #@2c
    .line 255
    const/4 v9, 0x1

    #@2d
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Ljava/lang/String;

    #@33
    .line 256
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_1

    #@37
    .line 245
    .end local v0    # "aC":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v1    # "aC$iterator":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "s":Ljava/lang/String;
    .end local v8    # "type":I
    .restart local v2    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :catch_0
    move-exception v3

    #@38
    .line 246
    .local v3, "cpe":Ljava/security/cert/CertificateParsingException;
    const-class v9, Lorg/apache/http/conn/ssl/AbstractVerifier;

    #@3a
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    invoke-static {v9}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@41
    move-result-object v9

    #@42
    .line 247
    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@44
    const-string/jumbo v11, "Error parsing certificate."

    #@47
    .line 246
    invoke-virtual {v9, v10, v11, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4a
    goto :goto_0

    #@4b
    .line 260
    .end local v2    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local v3    # "cpe":Ljava/security/cert/CertificateParsingException;
    :cond_1
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    #@4e
    move-result v9

    #@4f
    if-nez v9, :cond_2

    #@51
    .line 261
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    #@54
    move-result v9

    #@55
    new-array v7, v9, [Ljava/lang/String;

    #@57
    .line 262
    .local v7, "subjectAlts":[Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5a
    .line 263
    return-object v7

    #@5b
    .line 265
    .end local v7    # "subjectAlts":[Ljava/lang/String;
    :cond_2
    return-object v12
.end method

.method private static isIPv4Address(Ljava/lang/String;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 285
    sget-object v0, Lorg/apache/http/conn/ssl/AbstractVerifier;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@9
    move-result v0

    #@a
    return v0
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    invoke-static {p2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 119
    .local v0, "cns":[Ljava/lang/String;
    invoke-static {p2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 120
    .local v1, "subjectAlts":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@b
    .line 117
    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ssl"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    if-nez p1, :cond_0

    #@2
    .line 95
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "host to verify is null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 98
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@e
    move-result-object v1

    #@f
    .line 99
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@12
    move-result-object v0

    #@13
    .line 100
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    #@14
    aget-object v2, v0, v3

    #@16
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@18
    .line 101
    .local v2, "x509":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    #@1b
    .line 93
    return-void
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 12
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cns"    # [Ljava/lang/String;
    .param p3, "subjectAlts"    # [Ljava/lang/String;
    .param p4, "strictWithSubDomains"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    new-instance v7, Ljava/util/LinkedList;

    #@2
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    #@5
    .line 133
    .local v7, "names":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    #@7
    array-length v9, p2

    #@8
    if-lez v9, :cond_0

    #@a
    const/4 v9, 0x0

    #@b
    aget-object v9, p2, v9

    #@d
    if-eqz v9, :cond_0

    #@f
    .line 134
    const/4 v9, 0x0

    #@10
    aget-object v9, p2, v9

    #@12
    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@15
    .line 136
    :cond_0
    if-eqz p3, :cond_2

    #@17
    .line 137
    const/4 v9, 0x0

    #@18
    array-length v10, p3

    #@19
    :goto_0
    if-ge v9, v10, :cond_2

    #@1b
    aget-object v8, p3, v9

    #@1d
    .line 138
    .local v8, "subjectAlt":Ljava/lang/String;
    if-eqz v8, :cond_1

    #@1f
    .line 139
    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@22
    .line 137
    :cond_1
    add-int/lit8 v9, v9, 0x1

    #@24
    goto :goto_0

    #@25
    .line 144
    .end local v8    # "subjectAlt":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    #@28
    move-result v9

    #@29
    if-eqz v9, :cond_3

    #@2b
    .line 145
    new-instance v9, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v10, "Certificate for <"

    #@33
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v9

    #@37
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    const-string/jumbo v10, "> doesn\'t contain CN or DNS subjectAlt"

    #@3e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v9

    #@42
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    .line 146
    .local v6, "msg":Ljava/lang/String;
    new-instance v9, Ljavax/net/ssl/SSLException;

    #@48
    invoke-direct {v9, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v9

    #@4c
    .line 150
    .end local v6    # "msg":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    #@4e
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@51
    .line 154
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@54
    move-result-object v9

    #@55
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@57
    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    .line 155
    .local v3, "hostName":Ljava/lang/String;
    const/4 v5, 0x0

    #@5c
    .line 156
    .local v5, "match":Z
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@5f
    move-result-object v4

    #@60
    .end local v5    # "match":Z
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@63
    move-result v9

    #@64
    if-eqz v9, :cond_7

    #@66
    .line 158
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@69
    move-result-object v1

    #@6a
    check-cast v1, Ljava/lang/String;

    #@6c
    .line 159
    .local v1, "cn":Ljava/lang/String;
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@6e
    invoke-virtual {v1, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    .line 161
    const-string/jumbo v9, " <"

    #@75
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@78
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7b
    .line 163
    const/16 v9, 0x3e

    #@7d
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@80
    .line 164
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@83
    move-result v9

    #@84
    if-eqz v9, :cond_5

    #@86
    .line 165
    const-string/jumbo v9, " OR"

    #@89
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8c
    .line 171
    :cond_5
    const-string/jumbo v9, "*."

    #@8f
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@92
    move-result v9

    #@93
    if-eqz v9, :cond_9

    #@95
    .line 172
    const/16 v9, 0x2e

    #@97
    const/4 v10, 0x2

    #@98
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->indexOf(II)I

    #@9b
    move-result v9

    #@9c
    const/4 v10, -0x1

    #@9d
    if-eq v9, v10, :cond_9

    #@9f
    .line 173
    invoke-static {v1}, Lorg/apache/http/conn/ssl/AbstractVerifier;->acceptableCountryWildcard(Ljava/lang/String;)Z

    #@a2
    move-result v9

    #@a3
    .line 171
    if-eqz v9, :cond_9

    #@a5
    .line 174
    invoke-static {p1}, Lorg/apache/http/conn/ssl/AbstractVerifier;->isIPv4Address(Ljava/lang/String;)Z

    #@a8
    move-result v9

    #@a9
    if-eqz v9, :cond_8

    #@ab
    const/4 v2, 0x0

    #@ac
    .line 176
    .local v2, "doWildcard":Z
    :goto_1
    if-eqz v2, :cond_b

    #@ae
    .line 177
    const/4 v9, 0x1

    #@af
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b2
    move-result-object v9

    #@b3
    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@b6
    move-result v5

    #@b7
    .line 178
    .local v5, "match":Z
    if-eqz v5, :cond_6

    #@b9
    if-eqz p4, :cond_6

    #@bb
    .line 181
    invoke-static {v3}, Lorg/apache/http/conn/ssl/AbstractVerifier;->countDots(Ljava/lang/String;)I

    #@be
    move-result v9

    #@bf
    invoke-static {v1}, Lorg/apache/http/conn/ssl/AbstractVerifier;->countDots(Ljava/lang/String;)I

    #@c2
    move-result v10

    #@c3
    if-ne v9, v10, :cond_a

    #@c5
    const/4 v5, 0x1

    #@c6
    .line 186
    .end local v5    # "match":Z
    :cond_6
    :goto_2
    if-eqz v5, :cond_4

    #@c8
    .line 190
    .end local v1    # "cn":Ljava/lang/String;
    .end local v2    # "doWildcard":Z
    :cond_7
    if-nez v5, :cond_c

    #@ca
    .line 191
    new-instance v9, Ljavax/net/ssl/SSLException;

    #@cc
    new-instance v10, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v11, "hostname in certificate didn\'t match: <"

    #@d4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v10

    #@d8
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v10

    #@dc
    const-string/jumbo v11, "> !="

    #@df
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v10

    #@e3
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v10

    #@e7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v10

    #@eb
    invoke-direct {v9, v10}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@ee
    throw v9

    #@ef
    .line 174
    .restart local v1    # "cn":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x1

    #@f0
    goto :goto_1

    #@f1
    .line 171
    :cond_9
    const/4 v2, 0x0

    #@f2
    goto :goto_1

    #@f3
    .line 181
    .restart local v2    # "doWildcard":Z
    .restart local v5    # "match":Z
    :cond_a
    const/4 v5, 0x0

    #@f4
    .local v5, "match":Z
    goto :goto_2

    #@f5
    .line 184
    .end local v5    # "match":Z
    :cond_b
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v5

    #@f9
    .local v5, "match":Z
    goto :goto_2

    #@fa
    .line 126
    .end local v1    # "cn":Ljava/lang/String;
    .end local v2    # "doWildcard":Z
    .end local v5    # "match":Z
    :cond_c
    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 106
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@4
    move-result-object v0

    #@5
    .line 107
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    #@6
    aget-object v2, v0, v3

    #@8
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@a
    .line 108
    .local v2, "x509":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 109
    const/4 v3, 0x1

    #@e
    return v3

    #@f
    .line 111
    .end local v0    # "certs":[Ljava/security/cert/Certificate;
    .end local v2    # "x509":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v1

    #@10
    .line 112
    .local v1, "e":Ljavax/net/ssl/SSLException;
    return v4
.end method
