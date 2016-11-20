.class public final Lsun/security/provider/certpath/OCSP;
.super Ljava/lang/Object;
.source "OCSP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/OCSP$RevocationStatus;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I

.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x3a98

.field static final NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 69
    const/16 v0, 0xa

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@a
    move-result-object v0

    #@b
    .line 68
    sput-object v0, Lsun/security/provider/certpath/OCSP;->NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 71
    const-string/jumbo v0, "certpath"

    #@10
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    #@16
    .line 80
    invoke-static {}, Lsun/security/provider/certpath/OCSP;->initializeTimeout()I

    #@19
    move-result v0

    #@1a
    sput v0, Lsun/security/provider/certpath/OCSP;->CONNECT_TIMEOUT:I

    #@1c
    .line 66
    return-void

    #@1d
    .line 69
    nop

    #@1e
    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x1
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .locals 10
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 117
    const/4 v6, 0x0

    #@2
    .line 118
    .local v6, "certId":Lsun/security/provider/certpath/CertId;
    const/4 v1, 0x0

    #@3
    .line 120
    .local v1, "responderURI":Ljava/net/URI;
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@6
    move-result-object v7

    #@7
    .line 121
    .local v7, "certImpl":Lsun/security/x509/X509CertImpl;
    invoke-static {v7}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;

    #@a
    move-result-object v1

    #@b
    .line 122
    .local v1, "responderURI":Ljava/net/URI;
    if-nez v1, :cond_0

    #@d
    .line 123
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@f
    .line 124
    const-string/jumbo v2, "No OCSP Responder URI in certificate"

    #@12
    .line 123
    invoke-direct {v0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 127
    .end local v1    # "responderURI":Ljava/net/URI;
    .end local v6    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v7    # "certImpl":Lsun/security/x509/X509CertImpl;
    :catch_0
    move-exception v8

    #@17
    .line 128
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@19
    .line 129
    const-string/jumbo v2, "Exception while encoding OCSPRequest"

    #@1c
    .line 128
    invoke-direct {v0, v2, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1f
    throw v0

    #@20
    .line 126
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v1    # "responderURI":Ljava/net/URI;
    .restart local v6    # "certId":Lsun/security/provider/certpath/CertId;
    .restart local v7    # "certImpl":Lsun/security/x509/X509CertImpl;
    :cond_0
    :try_start_1
    new-instance v6, Lsun/security/provider/certpath/CertId;

    #@22
    .end local v6    # "certId":Lsun/security/provider/certpath/CertId;
    invoke-virtual {v7}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    #@25
    move-result-object v0

    #@26
    invoke-direct {v6, p1, v0}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@29
    .line 131
    .local v6, "certId":Lsun/security/provider/certpath/CertId;
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@2c
    move-result-object v0

    #@2d
    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@30
    move-result-object v5

    #@31
    move-object v2, p1

    #@32
    move-object v4, v3

    #@33
    .line 131
    invoke-static/range {v0 .. v5}, Lsun/security/provider/certpath/OCSP;->check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;

    #@36
    move-result-object v9

    #@37
    .line 134
    .local v9, "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    invoke-virtual {v9, v6}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method

.method public static check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .locals 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "responderURI"    # Ljava/net/URI;
    .param p3, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v5

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object v4, p4

    #@9
    .line 159
    invoke-static/range {v0 .. v5}, Lsun/security/provider/certpath/OCSP;->check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSP$RevocationStatus;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .locals 10
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "responderURI"    # Ljava/net/URI;
    .param p3, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/net/URI;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;)",
            "Lsun/security/provider/certpath/OCSP$RevocationStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    .local p5, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    const/4 v6, 0x0

    #@1
    .line 173
    .local v6, "certId":Lsun/security/provider/certpath/CertId;
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@4
    move-result-object v7

    #@5
    .line 174
    .local v7, "certImpl":Lsun/security/x509/X509CertImpl;
    new-instance v6, Lsun/security/provider/certpath/CertId;

    #@7
    .end local v6    # "certId":Lsun/security/provider/certpath/CertId;
    invoke-virtual {v7}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    #@a
    move-result-object v0

    #@b
    invoke-direct {v6, p1, v0}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 179
    .local v6, "certId":Lsun/security/provider/certpath/CertId;
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@11
    move-result-object v0

    #@12
    move-object v1, p2

    #@13
    move-object v2, p1

    #@14
    move-object v3, p3

    #@15
    move-object v4, p4

    #@16
    move-object v5, p5

    #@17
    invoke-static/range {v0 .. v5}, Lsun/security/provider/certpath/OCSP;->check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;

    #@1a
    move-result-object v9

    #@1b
    .line 181
    .local v9, "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    invoke-virtual {v9, v6}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    #@1e
    move-result-object v0

    #@1f
    return-object v0

    #@20
    .line 175
    .end local v6    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v7    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v9    # "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    :catch_0
    move-exception v8

    #@21
    .line 176
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@23
    .line 177
    const-string/jumbo v1, "Exception while encoding OCSPRequest"

    #@26
    .line 176
    invoke-direct {v0, v1, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    throw v0
.end method

.method static check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;
    .locals 23
    .param p1, "responderURI"    # Ljava/net/URI;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            ">;",
            "Ljava/net/URI;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;)",
            "Lsun/security/provider/certpath/OCSPResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    .local p0, "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    .local p5, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    const/4 v12, 0x0

    #@1
    .line 206
    .local v12, "bytes":[B
    const/16 v18, 0x0

    #@3
    .line 208
    .local v18, "request":Lsun/security/provider/certpath/OCSPRequest;
    :try_start_0
    new-instance v19, Lsun/security/provider/certpath/OCSPRequest;

    #@5
    move-object/from16 v0, v19

    #@7
    move-object/from16 v1, p0

    #@9
    move-object/from16 v2, p5

    #@b
    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPRequest;-><init>(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 209
    .local v19, "request":Lsun/security/provider/certpath/OCSPRequest;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/OCSPRequest;->encodeBytes()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    #@11
    .end local v18    # "request":Lsun/security/provider/certpath/OCSPRequest;
    move-result-object v12

    #@12
    .line 215
    .local v12, "bytes":[B
    const/16 v16, 0x0

    #@14
    .line 216
    .local v16, "in":Ljava/io/InputStream;
    const/16 v17, 0x0

    #@16
    .line 217
    .local v17, "out":Ljava/io/OutputStream;
    const/16 v20, 0x0

    #@18
    .line 219
    .local v20, "response":[B
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    #@1b
    move-result-object v22

    #@1c
    .line 220
    .local v22, "url":Ljava/net/URL;
    sget-object v3, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 221
    sget-object v3, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v7, "connecting to OCSP service at: "

    #@2a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    move-object/from16 v0, v22

    #@30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3b
    .line 223
    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@3e
    move-result-object v13

    #@3f
    check-cast v13, Ljava/net/HttpURLConnection;

    #@41
    .line 224
    .local v13, "con":Ljava/net/HttpURLConnection;
    sget v3, Lsun/security/provider/certpath/OCSP;->CONNECT_TIMEOUT:I

    #@43
    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    #@46
    .line 225
    sget v3, Lsun/security/provider/certpath/OCSP;->CONNECT_TIMEOUT:I

    #@48
    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    #@4b
    .line 226
    const/4 v3, 0x1

    #@4c
    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    #@4f
    .line 227
    const/4 v3, 0x1

    #@50
    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    #@53
    .line 228
    const-string/jumbo v3, "POST"

    #@56
    invoke-virtual {v13, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@59
    .line 230
    const-string/jumbo v3, "Content-type"

    #@5c
    const-string/jumbo v4, "application/ocsp-request"

    #@5f
    .line 229
    invoke-virtual {v13, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@62
    .line 232
    const-string/jumbo v3, "Content-length"

    #@65
    array-length v4, v12

    #@66
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    .line 231
    invoke-virtual {v13, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@6d
    .line 233
    invoke-virtual {v13}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@70
    move-result-object v17

    #@71
    .line 234
    .local v17, "out":Ljava/io/OutputStream;
    move-object/from16 v0, v17

    #@73
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    #@76
    .line 235
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    #@79
    .line 237
    sget-object v3, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    #@7b
    if-eqz v3, :cond_1

    #@7d
    .line 238
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@80
    move-result v3

    #@81
    const/16 v4, 0xc8

    #@83
    if-eq v3, v4, :cond_1

    #@85
    .line 239
    sget-object v3, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    #@87
    new-instance v4, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v7, "Received HTTP error: "

    #@8f
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@96
    move-result v7

    #@97
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    .line 240
    const-string/jumbo v7, " - "

    #@9e
    .line 239
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    .line 240
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    #@a5
    move-result-object v7

    #@a6
    .line 239
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v4

    #@aa
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v4

    #@ae
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@b1
    .line 242
    :cond_1
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@b4
    move-result-object v16

    #@b5
    .line 243
    .local v16, "in":Ljava/io/InputStream;
    invoke-virtual {v13}, Ljava/net/URLConnection;->getContentLength()I

    #@b8
    move-result v14

    #@b9
    .line 244
    .local v14, "contentLength":I
    const/4 v3, -0x1

    #@ba
    if-ne v14, v3, :cond_2

    #@bc
    .line 245
    const v14, 0x7fffffff

    #@bf
    .line 247
    :cond_2
    const/16 v3, 0x800

    #@c1
    if-le v14, v3, :cond_7

    #@c3
    const/16 v3, 0x800

    #@c5
    :goto_0
    new-array v0, v3, [B

    #@c7
    move-object/from16 v20, v0

    #@c9
    .line 248
    .local v20, "response":[B
    const/16 v21, 0x0

    #@cb
    .line 249
    .local v21, "total":I
    :cond_3
    :goto_1
    move/from16 v0, v21

    #@cd
    if-ge v0, v14, :cond_4

    #@cf
    .line 250
    move-object/from16 v0, v20

    #@d1
    array-length v3, v0

    #@d2
    sub-int v3, v3, v21

    #@d4
    move-object/from16 v0, v16

    #@d6
    move-object/from16 v1, v20

    #@d8
    move/from16 v2, v21

    #@da
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    #@dd
    move-result v15

    #@de
    .line 251
    .local v15, "count":I
    if-gez v15, :cond_8

    #@e0
    .line 259
    .end local v15    # "count":I
    :cond_4
    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e3
    move-result-object v20

    #@e4
    .line 265
    if-eqz v16, :cond_5

    #@e6
    .line 267
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@e9
    .line 272
    :cond_5
    if-eqz v17, :cond_6

    #@eb
    .line 274
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@ee
    .line 281
    :cond_6
    const/4 v6, 0x0

    #@ef
    .line 283
    .local v6, "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    :try_start_5
    new-instance v6, Lsun/security/provider/certpath/OCSPResponse;

    #@f1
    .end local v6    # "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    move-object/from16 v0, v20

    #@f3
    invoke-direct {v6, v0}, Lsun/security/provider/certpath/OCSPResponse;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    #@f6
    .line 291
    .local v6, "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/OCSPRequest;->getNonce()[B

    #@f9
    move-result-object v11

    #@fa
    move-object/from16 v7, p0

    #@fc
    move-object/from16 v8, p2

    #@fe
    move-object/from16 v9, p3

    #@100
    move-object/from16 v10, p4

    #@102
    .line 290
    invoke-virtual/range {v6 .. v11}, Lsun/security/provider/certpath/OCSPResponse;->verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V

    #@105
    .line 293
    return-object v6

    #@106
    .line 210
    .end local v6    # "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    .end local v13    # "con":Ljava/net/HttpURLConnection;
    .end local v14    # "contentLength":I
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    .end local v19    # "request":Lsun/security/provider/certpath/OCSPRequest;
    .end local v20    # "response":[B
    .end local v21    # "total":I
    .end local v22    # "url":Ljava/net/URL;
    .local v12, "bytes":[B
    .restart local v18    # "request":Lsun/security/provider/certpath/OCSPRequest;
    :catch_0
    move-exception v5

    #@107
    .line 211
    .end local v18    # "request":Lsun/security/provider/certpath/OCSPRequest;
    .local v5, "ioe":Ljava/io/IOException;
    :goto_2
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    #@109
    .line 212
    const-string/jumbo v4, "Exception while encoding OCSPRequest"

    #@10c
    .line 211
    invoke-direct {v3, v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10f
    throw v3

    #@110
    .end local v5    # "ioe":Ljava/io/IOException;
    .local v12, "bytes":[B
    .restart local v13    # "con":Ljava/net/HttpURLConnection;
    .restart local v14    # "contentLength":I
    .restart local v16    # "in":Ljava/io/InputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    .restart local v19    # "request":Lsun/security/provider/certpath/OCSPRequest;
    .local v20, "response":[B
    .restart local v22    # "url":Ljava/net/URL;
    :cond_7
    move v3, v14

    #@111
    .line 247
    goto :goto_0

    #@112
    .line 254
    .restart local v15    # "count":I
    .local v20, "response":[B
    .restart local v21    # "total":I
    :cond_8
    add-int v21, v21, v15

    #@114
    .line 255
    :try_start_6
    move-object/from16 v0, v20

    #@116
    array-length v3, v0

    #@117
    move/from16 v0, v21

    #@119
    if-lt v0, v3, :cond_3

    #@11b
    move/from16 v0, v21

    #@11d
    if-ge v0, v14, :cond_3

    #@11f
    .line 256
    mul-int/lit8 v3, v21, 0x2

    #@121
    move-object/from16 v0, v20

    #@123
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@126
    move-result-object v20

    #@127
    goto :goto_1

    #@128
    .line 268
    .end local v15    # "count":I
    :catch_1
    move-exception v5

    #@129
    .line 269
    .restart local v5    # "ioe":Ljava/io/IOException;
    throw v5

    #@12a
    .line 275
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v5

    #@12b
    .line 276
    .restart local v5    # "ioe":Ljava/io/IOException;
    throw v5

    #@12c
    .line 260
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v13    # "con":Ljava/net/HttpURLConnection;
    .end local v14    # "contentLength":I
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    .end local v20    # "response":[B
    .end local v21    # "total":I
    .end local v22    # "url":Ljava/net/URL;
    :catch_3
    move-exception v5

    #@12d
    .line 261
    .restart local v5    # "ioe":Ljava/io/IOException;
    :try_start_7
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    #@12f
    .line 262
    const-string/jumbo v4, "Unable to determine revocation status due to network error"

    #@132
    .line 263
    sget-object v8, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@134
    const/4 v6, 0x0

    #@135
    const/4 v7, -0x1

    #@136
    .line 261
    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@139
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@13a
    .line 264
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@13b
    .line 265
    if-eqz v16, :cond_9

    #@13d
    .line 267
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    #@140
    .line 272
    :cond_9
    if-eqz v17, :cond_a

    #@142
    .line 274
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    #@145
    .line 264
    :cond_a
    throw v3

    #@146
    .line 268
    :catch_4
    move-exception v5

    #@147
    .line 269
    .restart local v5    # "ioe":Ljava/io/IOException;
    throw v5

    #@148
    .line 275
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v5

    #@149
    .line 276
    .restart local v5    # "ioe":Ljava/io/IOException;
    throw v5

    #@14a
    .line 284
    .end local v5    # "ioe":Ljava/io/IOException;
    .restart local v13    # "con":Ljava/net/HttpURLConnection;
    .restart local v14    # "contentLength":I
    .restart local v16    # "in":Ljava/io/InputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    .restart local v20    # "response":[B
    .restart local v21    # "total":I
    .restart local v22    # "url":Ljava/net/URL;
    :catch_6
    move-exception v5

    #@14b
    .line 286
    .restart local v5    # "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    #@14d
    invoke-direct {v3, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@150
    throw v3

    #@151
    .line 210
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v13    # "con":Ljava/net/HttpURLConnection;
    .end local v14    # "contentLength":I
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    .end local v20    # "response":[B
    .end local v21    # "total":I
    .end local v22    # "url":Ljava/net/URL;
    .local v12, "bytes":[B
    :catch_7
    move-exception v5

    #@152
    .restart local v5    # "ioe":Ljava/io/IOException;
    move-object/from16 v18, v19

    #@154
    .end local v19    # "request":Lsun/security/provider/certpath/OCSPRequest;
    .local v18, "request":Lsun/security/provider/certpath/OCSPRequest;
    goto :goto_2
.end method

.method public static getResponderURI(Ljava/security/cert/X509Certificate;)Ljava/net/URI;
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 307
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 308
    :catch_0
    move-exception v0

    #@a
    .line 310
    .local v0, "ce":Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method static getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;
    .locals 9
    .param p0, "certImpl"    # Lsun/security/x509/X509CertImpl;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 318
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    #@4
    move-result-object v0

    #@5
    .line 319
    .local v0, "aia":Lsun/security/x509/AuthorityInfoAccessExtension;
    if-nez v0, :cond_0

    #@7
    .line 320
    return-object v8

    #@8
    .line 323
    :cond_0
    invoke-virtual {v0}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    #@b
    move-result-object v3

    #@c
    .line 324
    .local v3, "descriptions":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "description$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_2

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lsun/security/x509/AccessDescription;

    #@1c
    .line 325
    .local v1, "description":Lsun/security/x509/AccessDescription;
    invoke-virtual {v1}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    #@1f
    move-result-object v6

    #@20
    .line 326
    sget-object v7, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    #@22
    .line 325
    invoke-virtual {v6, v7}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_1

    #@28
    .line 328
    invoke-virtual {v1}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    #@2b
    move-result-object v4

    #@2c
    .line 329
    .local v4, "generalName":Lsun/security/x509/GeneralName;
    invoke-virtual {v4}, Lsun/security/x509/GeneralName;->getType()I

    #@2f
    move-result v6

    #@30
    const/4 v7, 0x6

    #@31
    if-ne v6, v7, :cond_1

    #@33
    .line 330
    invoke-virtual {v4}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@36
    move-result-object v5

    #@37
    check-cast v5, Lsun/security/x509/URIName;

    #@39
    .line 331
    .local v5, "uri":Lsun/security/x509/URIName;
    invoke-virtual {v5}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    #@3c
    move-result-object v6

    #@3d
    return-object v6

    #@3e
    .line 335
    .end local v1    # "description":Lsun/security/x509/AccessDescription;
    .end local v4    # "generalName":Lsun/security/x509/GeneralName;
    .end local v5    # "uri":Lsun/security/x509/URIName;
    :cond_2
    return-object v8
.end method

.method private static initializeTimeout()I
    .locals 3

    #@0
    .prologue
    .line 89
    new-instance v1, Lsun/security/action/GetIntegerAction;

    #@2
    const-string/jumbo v2, "com.sun.security.ocsp.timeout"

    #@5
    invoke-direct {v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 88
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    .line 90
    .local v0, "tmp":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v1

    #@14
    if-gez v1, :cond_1

    #@16
    .line 91
    :cond_0
    const/16 v1, 0x3a98

    #@18
    return v1

    #@19
    .line 95
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v1

    #@1d
    mul-int/lit16 v1, v1, 0x3e8

    #@1f
    return v1
.end method
