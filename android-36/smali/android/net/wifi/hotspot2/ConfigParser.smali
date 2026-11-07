.class public final Landroid/net/wifi/hotspot2/ConfigParser;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;,
        Landroid/net/wifi/hotspot2/ConfigParser$MimePart;
    }
.end annotation


# static fields
.field private static final greylist-max-o BOUNDARY:Ljava/lang/String; = "boundary="

.field private static final greylist-max-o CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field private static final greylist-max-o CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final greylist-max-o ENCODING_BASE64:Ljava/lang/String; = "base64"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ConfigParser"

.field private static final greylist-max-o TYPE_CA_CERT:Ljava/lang/String; = "application/x-x509-ca-cert"

.field private static final greylist-max-o TYPE_MULTIPART_MIXED:Ljava/lang/String; = "multipart/mixed"

.field private static final greylist-max-o TYPE_PASSPOINT_PROFILE:Ljava/lang/String; = "application/x-passpoint-profile"

.field private static final greylist-max-o TYPE_PKCS12:Ljava/lang/String; = "application/x-pkcs12"

.field private static final greylist-max-o TYPE_WIFI_CONFIG:Ljava/lang/String; = "application/x-wifi-config"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o createPasspointConfig(Ljava/util/Map;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    .local p0, "mimeParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    const-string v0, "application/x-passpoint-profile"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 171
    .local v0, "profileData":[B
    if-eqz v0, :cond_a9

    .line 175
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseMoText(Ljava/lang/String;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v1

    .line 176
    .local v1, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    if-eqz v1, :cond_a1

    .line 181
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    if-eqz v2, :cond_99

    .line 187
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUpdateIdentifier()I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_26

    .line 188
    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUpdateIdentifier(I)V

    .line 192
    :cond_26
    const-string v2, "application/x-x509-ca-cert"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 193
    .local v2, "caCertData":[B
    if-eqz v2, :cond_45

    .line 195
    :try_start_30
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-static {v2}, Landroid/net/wifi/hotspot2/ConfigParser;->parseCACert([B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setCaCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_3b
    .catch Ljava/security/cert/CertificateException; {:try_start_30 .. :try_end_3b} :catch_3c

    .line 198
    goto :goto_45

    .line 196
    :catch_3c
    move-exception v3

    .line 197
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to parse CA Certificate"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :cond_45
    :goto_45
    const-string v3, "application/x-pkcs12"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 203
    .local v3, "pkcs12Data":[B
    if-eqz v3, :cond_98

    .line 205
    :try_start_4f
    invoke-static {v3}, Landroid/net/wifi/hotspot2/ConfigParser;->parsePkcs12([B)Landroid/util/Pair;

    move-result-object v4

    .line 206
    .local v4, "clientKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/security/PrivateKey;Ljava/util/List<Ljava/security/cert/X509Certificate;>;>;"
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v5

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/security/PrivateKey;

    invoke-virtual {v5, v6}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientPrivateKey(Ljava/security/PrivateKey;)V

    .line 207
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v5

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 208
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/security/cert/X509Certificate;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    .line 207
    invoke-virtual {v5, v6}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientCertificateChain([Ljava/security/cert/X509Certificate;)V
    :try_end_79
    .catch Ljava/security/GeneralSecurityException; {:try_start_4f .. :try_end_79} :catch_7a
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_79} :catch_7a

    .line 211
    .end local v4    # "clientKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/security/PrivateKey;Ljava/util/List<Ljava/security/cert/X509Certificate;>;>;"
    goto :goto_98

    .line 209
    :catch_7a
    move-exception v4

    .line 210
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse PKCS12 string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 213
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_98
    :goto_98
    return-object v1

    .line 182
    .end local v2    # "caCertData":[B
    .end local v3    # "pkcs12Data":[B
    :cond_99
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Passpoint profile missing credential"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_a1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse Passpoint profile"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    .end local v1    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :cond_a9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing Passpoint Profile"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o parseCACert([B)Ljava/security/cert/X509Certificate;
    .registers 3
    .param p0, "octets"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 450
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 451
    .local v0, "factory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private static greylist-max-o parseContentType(Ljava/lang/String;)Landroid/util/Pair;
    .registers 9
    .param p0, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "attributes":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 357
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 359
    .local v2, "boundary":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x1

    if-lt v3, v4, :cond_6e

    .line 364
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 366
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_14
    array-length v5, v0

    if-ge v3, v5, :cond_68

    .line 367
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "attribute":Ljava/lang/String;
    const-string v6, "boundary="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_40

    .line 369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignore Content-Type attribute: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ConfigParser"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    goto :goto_65

    .line 372
    :cond_40
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_65

    const-string v6, "\""

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 375
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 366
    .end local v5    # "attribute":Ljava/lang/String;
    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 379
    .end local v3    # "i":I
    :cond_68
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 360
    :cond_6e
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static greylist-max-o parseHeaders(Ljava/io/LineNumberReader;)Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;
    .registers 7
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    new-instance v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;-><init>(Landroid/net/wifi/hotspot2/ConfigParser-IA;)V

    .line 322
    .local v0, "header":Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;
    invoke-static {p0}, Landroid/net/wifi/hotspot2/ConfigParser;->readHeaders(Ljava/io/LineNumberReader;)Ljava/util/Map;

    move-result-object v1

    .line 325
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 326
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_86

    :cond_2b
    goto :goto_40

    :sswitch_2c
    const-string v5, "Content-Type"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x0

    goto :goto_41

    :sswitch_36
    const-string v5, "Content-Transfer-Encoding"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_41

    :goto_40
    const/4 v4, -0x1

    :goto_41
    packed-switch v4, :pswitch_data_90

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConfigParser"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 333
    :pswitch_63
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->encodingType:Ljava/lang/String;

    .line 334
    goto :goto_83

    .line 328
    :pswitch_6c
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/wifi/hotspot2/ConfigParser;->parseContentType(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 329
    .local v4, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    .line 330
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->boundary:Ljava/lang/String;

    .line 331
    nop

    .line 339
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_83
    goto :goto_12

    .line 340
    :cond_84
    return-object v0

    nop

    :sswitch_data_86
    .sparse-switch
        0x2c8adc81 -> :sswitch_36
        0x3891284e -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_63
    .end packed-switch
.end method

.method private static greylist-max-o parseMimeMultipartMessage(Ljava/io/LineNumberReader;)Ljava/util/Map;
    .registers 7
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/LineNumberReader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-static {p0}, Landroid/net/wifi/hotspot2/ConfigParser;->parseHeaders(Ljava/io/LineNumberReader;)Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;

    move-result-object v0

    .line 228
    .local v0, "header":Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;
    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    const-string v2, "multipart/mixed"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 231
    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->boundary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 234
    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->encodingType:Ljava/lang/String;

    const-string v2, "base64"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 240
    :goto_20
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_5c

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 246
    nop

    .line 251
    .end local v1    # "line":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v2, v1

    .line 252
    .local v2, "mimeParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    const/4 v1, 0x0

    .line 254
    .local v1, "isLast":Z
    :cond_49
    iget-object v3, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->boundary:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/net/wifi/hotspot2/ConfigParser;->parseMimePart(Ljava/io/LineNumberReader;Ljava/lang/String;)Landroid/net/wifi/hotspot2/ConfigParser$MimePart;

    move-result-object v3

    .line 255
    .local v3, "mimePart":Landroid/net/wifi/hotspot2/ConfigParser$MimePart;
    iget-object v4, v3, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->type:Ljava/lang/String;

    iget-object v5, v3, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->data:[B

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-boolean v1, v3, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->isLast:Z

    .line 257
    .end local v3    # "mimePart":Landroid/net/wifi/hotspot2/ConfigParser$MimePart;
    if-eqz v1, :cond_49

    .line 258
    return-object v2

    .line 248
    .end local v1    # "isLast":Z
    .end local v2    # "mimeParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_5b
    goto :goto_20

    .line 242
    .local v1, "line":Ljava/lang/String;
    :cond_5c
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected EOF before first boundary @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 243
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    .end local v1    # "line":Ljava/lang/String;
    :cond_79
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->encodingType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_94
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing boundary string"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_9c
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o parseMimePart(Ljava/io/LineNumberReader;Ljava/lang/String;)Landroid/net/wifi/hotspot2/ConfigParser$MimePart;
    .registers 11
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .param p1, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-static {p0}, Landroid/net/wifi/hotspot2/ConfigParser;->parseHeaders(Ljava/io/LineNumberReader;)Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;

    move-result-object v0

    .line 274
    .local v0, "header":Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;
    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->encodingType:Ljava/lang/String;

    const-string v2, "base64"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 279
    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    const-string v2, "application/x-passpoint-profile"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    .line 280
    const-string v2, "application/x-x509-ca-cert"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    .line 281
    const-string v2, "application/x-pkcs12"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_48

    .line 282
    :cond_2d
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_48
    :goto_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v1, "text":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 287
    .local v2, "isLast":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "partBoundary":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "endBoundary":Ljava/lang/String;
    :goto_72
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_a1

    .line 295
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 296
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 297
    const/4 v2, 0x1

    .line 304
    .end local v5    # "line":Ljava/lang/String;
    :cond_85
    new-instance v5, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;-><init>(Landroid/net/wifi/hotspot2/ConfigParser-IA;)V

    .line 305
    .local v5, "part":Landroid/net/wifi/hotspot2/ConfigParser$MimePart;
    iget-object v6, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    iput-object v6, v5, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->type:Ljava/lang/String;

    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->data:[B

    .line 307
    iput-boolean v2, v5, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->isLast:Z

    .line 308
    return-object v5

    .line 301
    .local v5, "line":Ljava/lang/String;
    :cond_9d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .end local v5    # "line":Ljava/lang/String;
    goto :goto_72

    .line 292
    .restart local v5    # "line":Ljava/lang/String;
    :cond_a1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected EOF file in body @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 275
    .end local v1    # "text":Ljava/lang/StringBuilder;
    .end local v2    # "isLast":Z
    .end local v3    # "partBoundary":Ljava/lang/String;
    .end local v4    # "endBoundary":Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    :cond_be
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected encoding type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->encodingType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist parsePasspointConfig(Ljava/lang/String;[B)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .registers 9
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 141
    const-string v0, "application/x-wifi-config"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigParser"

    if-nez v0, :cond_22

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected MIME type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-object v1

    .line 148
    :cond_22
    :try_start_22
    new-instance v0, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 150
    .local v0, "decodedData":[B
    new-instance v3, Ljava/io/LineNumberReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v3}, Landroid/net/wifi/hotspot2/ConfigParser;->parseMimeMultipartMessage(Ljava/io/LineNumberReader;)Ljava/util/Map;

    move-result-object v3

    .line 153
    .local v3, "mimeParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-static {v3}, Landroid/net/wifi/hotspot2/ConfigParser;->createPasspointConfig(Ljava/util/Map;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v1
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_47} :catch_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_47} :catch_48

    return-object v1

    .line 154
    .end local v0    # "decodedData":[B
    .end local v3    # "mimeParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :catch_48
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse installation file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v1
.end method

.method private static greylist-max-o parsePkcs12([B)Landroid/util/Pair;
    .registers 11
    .param p0, "octets"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 457
    .local v0, "ks":Ljava/security/KeyStore;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 458
    .local v1, "in":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    new-array v3, v2, [C

    invoke-virtual {v0, v1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 459
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 462
    invoke-virtual {v0}, Ljava/security/KeyStore;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_78

    .line 466
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 467
    .local v3, "alias":Ljava/lang/String;
    if-eqz v3, :cond_70

    .line 471
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljava/security/PrivateKey;

    .line 472
    .local v4, "clientKey":Ljava/security/PrivateKey;
    const/4 v5, 0x0

    .line 473
    .local v5, "clientCertificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 474
    .local v6, "chain":[Ljava/security/cert/Certificate;
    if-eqz v6, :cond_6a

    .line 475
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v7

    .line 476
    array-length v7, v6

    :goto_3c
    if-ge v2, v7, :cond_6a

    aget-object v8, v6, v2

    .line 477
    .local v8, "certificate":Ljava/security/cert/Certificate;
    instance-of v9, v8, Ljava/security/cert/X509Certificate;

    if-eqz v9, :cond_4d

    .line 481
    move-object v9, v8

    check-cast v9, Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    .end local v8    # "certificate":Ljava/security/cert/Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 478
    .restart local v8    # "certificate":Ljava/security/cert/Certificate;
    :cond_4d
    new-instance v2, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpceted certificate type: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 479
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 484
    .end local v8    # "certificate":Ljava/security/cert/Certificate;
    :cond_6a
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 468
    .end local v4    # "clientKey":Ljava/security/PrivateKey;
    .end local v5    # "clientCertificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "chain":[Ljava/security/cert/Certificate;
    :cond_70
    new-instance v2, Ljava/io/IOException;

    const-string v4, "No alias found"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    .end local v3    # "alias":Ljava/lang/String;
    :cond_78
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected key size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/KeyStore;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist-max-o readHeaders(Ljava/io/LineNumberReader;)Ljava/util/Map;
    .registers 10
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/LineNumberReader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 395
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 397
    .local v2, "value":Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_be

    .line 403
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1f

    goto/16 :goto_b4

    .line 411
    :cond_1f
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 412
    .local v4, "nameEnd":I
    const-string v5, "\' @ "

    if-gez v4, :cond_5e

    .line 413
    if-eqz v2, :cond_39

    .line 415
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8d

    .line 417
    :cond_39
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad header line: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 418
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 422
    :cond_5e
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_8f

    .line 427
    if-eqz v1, :cond_72

    .line 429
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_72
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .end local v2    # "value":Ljava/lang/StringBuilder;
    .local v5, "value":Ljava/lang/StringBuilder;
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v5

    .line 437
    .end local v4    # "nameEnd":I
    .end local v5    # "value":Ljava/lang/StringBuilder;
    .restart local v2    # "value":Ljava/lang/StringBuilder;
    :goto_8d
    goto/16 :goto_7

    .line 423
    .restart local v4    # "nameEnd":I
    :cond_8f
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal blank prefix in header line \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 424
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 405
    .end local v4    # "nameEnd":I
    :cond_b4
    :goto_b4
    if-eqz v1, :cond_bd

    .line 406
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_bd
    return-object v0

    .line 399
    :cond_be
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing line @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
