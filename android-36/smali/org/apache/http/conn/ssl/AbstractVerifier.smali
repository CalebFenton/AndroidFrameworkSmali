.class public abstract Lorg/apache/http/conn/ssl/AbstractVerifier;
.super Ljava/lang/Object;
.source "AbstractVerifier.java"

# interfaces
.implements Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist BAD_COUNTRY_2LDS:[Ljava/lang/String;

.field private static final greylist-max-o IPV4_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 67
    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/ssl/AbstractVerifier;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    const-string v13, "or"

    const-string v14, "org"

    const-string v1, "ac"

    const-string v2, "co"

    const-string v3, "com"

    const-string v4, "ed"

    const-string v5, "edu"

    const-string v6, "go"

    const-string v7, "gouv"

    const-string v8, "gov"

    const-string v9, "info"

    const-string v10, "lg"

    const-string v11, "ne"

    const-string v12, "net"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/ssl/AbstractVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    .line 87
    sget-object v0, Lorg/apache/http/conn/ssl/AbstractVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static whitelist acceptableCountryWildcard(Ljava/lang/String;)Z
    .registers 5
    .param p0, "cn"    # Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 199
    .local v0, "cnLen":I
    const/4 v1, 0x7

    const/4 v2, 0x1

    if-lt v0, v1, :cond_28

    const/16 v1, 0x9

    if-gt v0, v1, :cond_28

    .line 201
    add-int/lit8 v1, v0, -0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_28

    .line 203
    const/4 v1, 0x2

    add-int/lit8 v3, v0, -0x3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "s":Ljava/lang/String;
    sget-object v3, Lorg/apache/http/conn/ssl/AbstractVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 206
    .local v3, "x":I
    if-gez v3, :cond_26

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    return v2

    .line 209
    .end local v1    # "s":Ljava/lang/String;
    .end local v3    # "x":I
    :cond_28
    return v2
.end method

.method public static whitelist countDots(Ljava/lang/String;)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 279
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_12

    .line 280
    add-int/lit8 v0, v0, 0x1

    .line 278
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 283
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method public static whitelist getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 213
    new-instance v0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;

    .line 214
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    .line 215
    .local v0, "dnParser":Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;
    const-string v1, "cn"

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getAllMostSpecificFirst(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 217
    .local v1, "cnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 218
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 219
    .local v2, "cns":[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 220
    return-object v2

    .line 222
    .end local v2    # "cns":[Ljava/lang/String;
    :cond_1f
    const/4 v2, 0x0

    return-object v2
.end method

.method public static whitelist getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .registers 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 242
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 243
    .local v0, "subjectAltList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 245
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :try_start_6
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v2
    :try_end_a
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_6 .. :try_end_a} :catch_c

    move-object v1, v2

    .line 250
    goto :goto_1e

    .line 247
    :catch_c
    move-exception v2

    .line 248
    .local v2, "cpe":Ljava/security/cert/CertificateParsingException;
    const-class v3, Lorg/apache/http/conn/ssl/AbstractVerifier;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 249
    const-string v5, "Error parsing certificate."

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .end local v2    # "cpe":Ljava/security/cert/CertificateParsingException;
    :goto_1e
    if-eqz v1, :cond_4a

    .line 252
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 253
    .local v3, "aC":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v4, v3

    .line 254
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 256
    .local v5, "type":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_49

    .line 257
    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 258
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v3    # "aC":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "type":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_49
    goto :goto_24

    .line 262
    :cond_4a
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 263
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 264
    .local v2, "subjectAlts":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 265
    return-object v2

    .line 267
    .end local v2    # "subjectAlts":[Ljava/lang/String;
    :cond_5a
    const/4 v2, 0x0

    return-object v2
.end method

.method private static greylist-max-o isIPv4Address(Ljava/lang/String;)Z
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .line 287
    sget-object v0, Lorg/apache/http/conn/ssl/AbstractVerifier;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final whitelist verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 120
    invoke-static {p2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "cns":[Ljava/lang/String;
    invoke-static {p2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "subjectAlts":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public final whitelist verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ssl"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    if-eqz p1, :cond_13

    .line 100
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 101
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 102
    .local v1, "certs":[Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 103
    .local v2, "x509":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 104
    return-void

    .line 97
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    .end local v2    # "x509":Ljava/security/cert/X509Certificate;
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host to verify is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 16
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cns"    # [Ljava/lang/String;
    .param p3, "subjectAlts"    # [Ljava/lang/String;
    .param p4, "strictWithSubDomains"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 135
    .local v0, "names":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-eqz p2, :cond_14

    array-length v2, p2

    if-lez v2, :cond_14

    aget-object v2, p2, v1

    if-eqz v2, :cond_14

    .line 136
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_14
    if-eqz p3, :cond_24

    .line 139
    array-length v2, p3

    move v3, v1

    :goto_18
    if-ge v3, v2, :cond_24

    aget-object v4, p3, v3

    .line 140
    .local v4, "subjectAlt":Ljava/lang/String;
    if-eqz v4, :cond_21

    .line 141
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v4    # "subjectAlt":Ljava/lang/String;
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 146
    :cond_24
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d4

    .line 152
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .local v2, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "hostName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 158
    .local v4, "match":Z
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 160
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 161
    .local v6, "cn":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 163
    const-string v7, " <"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    const/16 v7, 0x3e

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_68

    .line 167
    const-string v7, " OR"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_68
    const-string v7, "*."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_89

    .line 174
    const/16 v7, 0x2e

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_89

    .line 175
    invoke-static {v6}, Lorg/apache/http/conn/ssl/AbstractVerifier;->acceptableCountryWildcard(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 176
    invoke-static {p1}, Lorg/apache/http/conn/ssl/AbstractVerifier;->isIPv4Address(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_89

    move v7, v8

    goto :goto_8a

    :cond_89
    move v7, v1

    .line 178
    .local v7, "doWildcard":Z
    :goto_8a
    if-eqz v7, :cond_a6

    .line 179
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 180
    if-eqz v4, :cond_aa

    if-eqz p4, :cond_aa

    .line 183
    invoke-static {v3}, Lorg/apache/http/conn/ssl/AbstractVerifier;->countDots(Ljava/lang/String;)I

    move-result v9

    invoke-static {v6}, Lorg/apache/http/conn/ssl/AbstractVerifier;->countDots(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_a3

    goto :goto_a4

    :cond_a3
    move v8, v1

    :goto_a4
    move v4, v8

    .end local v4    # "match":Z
    .local v8, "match":Z
    goto :goto_aa

    .line 186
    .end local v8    # "match":Z
    .restart local v4    # "match":Z
    :cond_a6
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 188
    :cond_aa
    :goto_aa
    if-eqz v4, :cond_ad

    .line 189
    goto :goto_ae

    .line 191
    .end local v6    # "cn":Ljava/lang/String;
    .end local v7    # "doWildcard":Z
    :cond_ad
    goto :goto_3e

    .line 192
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_ae
    :goto_ae
    if-eqz v4, :cond_b1

    .line 195
    return-void

    .line 193
    :cond_b1
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hostname in certificate didn\'t match: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> !="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "hostName":Ljava/lang/String;
    .end local v4    # "match":Z
    :cond_d4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate for <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> doesn\'t contain CN or DNS subjectAlt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljavax/net/ssl/SSLException;

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist test-api verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .line 108
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 109
    .local v1, "certs":[Ljava/security/cert/Certificate;
    aget-object v2, v1, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 110
    .local v2, "x509":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_c
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_c} :catch_e

    .line 111
    const/4 v0, 0x1

    return v0

    .line 113
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    .end local v2    # "x509":Ljava/security/cert/X509Certificate;
    :catch_e
    move-exception v1

    .line 114
    .local v1, "e":Ljavax/net/ssl/SSLException;
    return v0
.end method
