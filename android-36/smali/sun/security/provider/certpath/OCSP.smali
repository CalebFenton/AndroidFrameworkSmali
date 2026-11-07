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
.field private static final blacklist CONNECT_TIMEOUT:I

.field private static final blacklist DEFAULT_CONNECT_TIMEOUT:I = 0x3a98

.field static final blacklist NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist debug:Lsun/security/util/Debug;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    .line 69
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSP;->NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

    .line 71
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    .line 80
    invoke-static {}, Lsun/security/provider/certpath/OCSP;->initializeTimeout()I

    move-result v0

    sput v0, Lsun/security/provider/certpath/OCSP;->CONNECT_TIMEOUT:I

    return-void

    :array_1c
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

.method private constructor blacklist <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .registers 12
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "certId":Lsun/security/provider/certpath/CertId;
    const/4 v2, 0x0

    .line 120
    .local v2, "responderURI":Ljava/net/URI;
    :try_start_2
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0

    .line 121
    .local v0, "certImpl":Lsun/security/x509/X509CertImpl;
    invoke-static {v0}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;

    move-result-object v3
    :try_end_a
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_a} :catch_3d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_3d

    move-object v5, v3

    .line 122
    .end local v2    # "responderURI":Ljava/net/URI;
    .local v5, "responderURI":Ljava/net/URI;
    if-eqz v5, :cond_30

    .line 126
    :try_start_d
    new-instance v2, Lsun/security/provider/certpath/CertId;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V
    :try_end_16
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_16} :catch_2b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_2b

    .line 130
    .end local v0    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v1    # "certId":Lsun/security/provider/certpath/CertId;
    .local v2, "certId":Lsun/security/provider/certpath/CertId;
    nop

    .line 131
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 131
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    .end local p1    # "issuerCert":Ljava/security/cert/X509Certificate;
    .local v6, "issuerCert":Ljava/security/cert/X509Certificate;
    invoke-static/range {v4 .. v9}, Lsun/security/provider/certpath/OCSP;->check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;

    move-result-object p1

    .line 134
    .local p1, "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    invoke-virtual {p1, v2}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v0

    return-object v0

    .line 127
    .end local v2    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v6    # "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certId":Lsun/security/provider/certpath/CertId;
    .local p1, "issuerCert":Ljava/security/cert/X509Certificate;
    :catch_2b
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    move-object v2, v5

    .end local p1    # "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local v6    # "issuerCert":Ljava/security/cert/X509Certificate;
    goto :goto_40

    .line 123
    .end local v6    # "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "certImpl":Lsun/security/x509/X509CertImpl;
    .restart local p1    # "issuerCert":Ljava/security/cert/X509Certificate;
    :cond_30
    move-object v6, p1

    .end local p1    # "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local v6    # "issuerCert":Ljava/security/cert/X509Certificate;
    :try_start_31
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "No OCSP Responder URI in certificate"

    invoke-direct {p1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .end local v1    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v5    # "responderURI":Ljava/net/URI;
    .end local v6    # "issuerCert":Ljava/security/cert/X509Certificate;
    .end local p0    # "cert":Ljava/security/cert/X509Certificate;
    throw p1
    :try_end_39
    .catch Ljava/security/cert/CertificateException; {:try_start_31 .. :try_end_39} :catch_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_39} :catch_39

    .line 127
    .end local v0    # "certImpl":Lsun/security/x509/X509CertImpl;
    .restart local v1    # "certId":Lsun/security/provider/certpath/CertId;
    .restart local v5    # "responderURI":Ljava/net/URI;
    .restart local v6    # "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local p0    # "cert":Ljava/security/cert/X509Certificate;
    :catch_39
    move-exception v0

    move-object p1, v0

    move-object v2, v5

    goto :goto_40

    .end local v5    # "responderURI":Ljava/net/URI;
    .end local v6    # "issuerCert":Ljava/security/cert/X509Certificate;
    .local v2, "responderURI":Ljava/net/URI;
    .restart local p1    # "issuerCert":Ljava/security/cert/X509Certificate;
    :catch_3d
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .line 128
    .restart local v6    # "issuerCert":Ljava/security/cert/X509Certificate;
    .local p1, "e":Ljava/lang/Exception;
    :goto_40
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Exception while encoding OCSPRequest"

    invoke-direct {v0, v3, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static blacklist check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .registers 11
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

    .line 159
    nop

    .line 160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 159
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "cert":Ljava/security/cert/X509Certificate;
    .end local p1    # "issuerCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "responderURI":Ljava/net/URI;
    .end local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .end local p4    # "date":Ljava/util/Date;
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    .local v1, "issuerCert":Ljava/security/cert/X509Certificate;
    .local v2, "responderURI":Ljava/net/URI;
    .local v3, "responderCert":Ljava/security/cert/X509Certificate;
    .local v4, "date":Ljava/util/Date;
    invoke-static/range {v0 .. v5}, Lsun/security/provider/certpath/OCSP;->check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSP$RevocationStatus;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .registers 15
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
            "Ljava/util/List<",
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

    .line 171
    .local p5, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    const/4 v1, 0x0

    .line 173
    .local v1, "certId":Lsun/security/provider/certpath/CertId;
    :try_start_1
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0

    .line 174
    .local v0, "certImpl":Lsun/security/x509/X509CertImpl;
    new-instance v2, Lsun/security/provider/certpath/CertId;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_e} :catch_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_21

    .line 178
    .end local v0    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v1    # "certId":Lsun/security/provider/certpath/CertId;
    .local v2, "certId":Lsun/security/provider/certpath/CertId;
    nop

    .line 179
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v5, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .end local p1    # "issuerCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "responderURI":Ljava/net/URI;
    .end local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .end local p4    # "date":Ljava/util/Date;
    .end local p5    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    .local v4, "responderURI":Ljava/net/URI;
    .local v5, "issuerCert":Ljava/security/cert/X509Certificate;
    .local v6, "responderCert":Ljava/security/cert/X509Certificate;
    .local v7, "date":Ljava/util/Date;
    .local v8, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    invoke-static/range {v3 .. v8}, Lsun/security/provider/certpath/OCSP;->check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;

    move-result-object p1

    .line 181
    .local p1, "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    invoke-virtual {p1, v2}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object p2

    return-object p2

    .line 175
    .end local v2    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v4    # "responderURI":Ljava/net/URI;
    .end local v5    # "issuerCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "responderCert":Ljava/security/cert/X509Certificate;
    .end local v7    # "date":Ljava/util/Date;
    .end local v8    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    .restart local v1    # "certId":Lsun/security/provider/certpath/CertId;
    .local p1, "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "responderURI":Ljava/net/URI;
    .restart local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .restart local p4    # "date":Ljava/util/Date;
    .restart local p5    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    :catch_21
    move-exception v0

    move-object v5, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object p1, v0

    .line 176
    .end local p2    # "responderURI":Ljava/net/URI;
    .end local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .end local p4    # "date":Ljava/util/Date;
    .end local p5    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    .restart local v4    # "responderURI":Ljava/net/URI;
    .restart local v5    # "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local v6    # "responderCert":Ljava/security/cert/X509Certificate;
    .restart local v7    # "date":Ljava/util/Date;
    .restart local v8    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    .local p1, "e":Ljava/lang/Exception;
    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    const-string p3, "Exception while encoding OCSPRequest"

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static blacklist check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;
    .registers 22
    .param p1, "responderURI"    # Ljava/net/URI;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/CertId;",
            ">;",
            "Ljava/net/URI;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
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

    .line 205
    .local p0, "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    .local p5, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    const/4 v1, 0x0

    .line 206
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .line 208
    .local v2, "request":Lsun/security/provider/certpath/OCSPRequest;
    :try_start_2
    new-instance v0, Lsun/security/provider/certpath/OCSPRequest;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4} :catch_142

    move-object/from16 v4, p0

    move-object/from16 v9, p5

    :try_start_8
    invoke-direct {v0, v4, v9}, Lsun/security/provider/certpath/OCSPRequest;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v2, v0

    .line 209
    invoke-virtual {v2}, Lsun/security/provider/certpath/OCSPRequest;->encodeBytes()[B

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_140

    move-object v1, v0

    .line 213
    nop

    .line 215
    const/4 v3, 0x0

    .line 216
    .local v3, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 217
    .local v5, "out":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 219
    .local v6, "response":[B
    :try_start_15
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 220
    .local v0, "url":Ljava/net/URL;
    sget-object v7, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_35

    .line 221
    sget-object v7, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connecting to OCSP service at: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 223
    :cond_35
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 224
    .local v7, "con":Ljava/net/HttpURLConnection;
    sget v8, Lsun/security/provider/certpath/OCSP;->CONNECT_TIMEOUT:I

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 225
    sget v8, Lsun/security/provider/certpath/OCSP;->CONNECT_TIMEOUT:I

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 226
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 227
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 228
    const-string v8, "POST"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 229
    const-string v8, "Content-type"

    const-string v10, "application/ocsp-request"

    .line 230
    invoke-virtual {v7, v8, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v8, "Content-length"

    array-length v10, v1

    .line 232
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_66} :catch_121
    .catchall {:try_start_15 .. :try_end_66} :catchall_11f

    move-object v10, v8

    .line 234
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v10, "out":Ljava/io/OutputStream;
    :try_start_67
    invoke-virtual {v10, v1}, Ljava/io/OutputStream;->write([B)V

    .line 235
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 237
    sget-object v5, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_a3

    .line 238
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v8, 0xc8

    if-eq v5, v8, :cond_a3

    .line 239
    sget-object v5, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received HTTP error: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " - "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 240
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 239
    invoke-virtual {v5, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 242
    :cond_a3
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_a7} :catch_11c
    .catchall {:try_start_67 .. :try_end_a7} :catchall_119

    move-object v11, v5

    .line 243
    .end local v3    # "in":Ljava/io/InputStream;
    .local v11, "in":Ljava/io/InputStream;
    :try_start_a8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 244
    .local v3, "contentLength":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_b2

    .line 245
    const v3, 0x7fffffff

    .line 247
    :cond_b2
    const/16 v5, 0x800

    if-le v3, v5, :cond_b7

    goto :goto_b8

    :cond_b7
    move v5, v3

    :goto_b8
    new-array v5, v5, [B
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ba} :catch_115
    .catchall {:try_start_a8 .. :try_end_ba} :catchall_111

    .line 248
    .end local v6    # "response":[B
    .local v5, "response":[B
    const/4 v6, 0x0

    .line 249
    .local v6, "total":I
    :goto_bb
    if-ge v6, v3, :cond_d4

    .line 250
    :try_start_bd
    array-length v8, v5

    sub-int/2addr v8, v6

    invoke-virtual {v11, v5, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 251
    .local v8, "count":I
    if-gez v8, :cond_c6

    .line 252
    goto :goto_d4

    .line 254
    :cond_c6
    add-int/2addr v6, v8

    .line 255
    array-length v12, v5

    if-lt v6, v12, :cond_d3

    if-ge v6, v3, :cond_d3

    .line 256
    mul-int/lit8 v12, v6, 0x2

    invoke-static {v5, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    move-object v5, v12

    .line 258
    .end local v8    # "count":I
    :cond_d3
    goto :goto_bb

    .line 259
    :cond_d4
    :goto_d4
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_d8} :catch_10c
    .catchall {:try_start_bd .. :try_end_d8} :catchall_107

    move-object v12, v8

    .line 265
    .end local v0    # "url":Ljava/net/URL;
    .end local v3    # "contentLength":I
    .end local v5    # "response":[B
    .end local v6    # "total":I
    .end local v7    # "con":Ljava/net/HttpURLConnection;
    .local v12, "response":[B
    if-eqz v11, :cond_e1

    .line 267
    :try_start_db
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    .line 270
    goto :goto_e1

    .line 268
    :catch_df
    move-exception v0

    .line 269
    .local v0, "ioe":Ljava/io/IOException;
    throw v0

    .line 272
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_e1
    :goto_e1
    if-eqz v10, :cond_e9

    .line 274
    :try_start_e3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_e7

    .line 277
    goto :goto_e9

    .line 275
    :catch_e7
    move-exception v0

    .line 276
    .restart local v0    # "ioe":Ljava/io/IOException;
    throw v0

    .line 281
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_e9
    :goto_e9
    const/4 v3, 0x0

    .line 283
    .local v3, "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    :try_start_ea
    new-instance v0, Lsun/security/provider/certpath/OCSPResponse;

    invoke-direct {v0, v12}, Lsun/security/provider/certpath/OCSPResponse;-><init>([B)V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ef} :catch_100

    move-object v3, v0

    .line 287
    nop

    .line 290
    nop

    .line 291
    invoke-virtual {v2}, Lsun/security/provider/certpath/OCSPRequest;->getNonce()[B

    move-result-object v8

    .line 290
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lsun/security/provider/certpath/OCSPResponse;->verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V

    .line 293
    return-object v3

    .line 284
    :catch_100
    move-exception v0

    .line 286
    .restart local v0    # "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v4, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 265
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v3    # "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    .end local v12    # "response":[B
    .restart local v5    # "response":[B
    :catchall_107
    move-exception v0

    move-object v6, v5

    move-object v5, v10

    move-object v3, v11

    goto :goto_12f

    .line 260
    :catch_10c
    move-exception v0

    move-object v6, v5

    move-object v5, v10

    move-object v3, v11

    goto :goto_122

    .line 265
    .end local v5    # "response":[B
    .local v6, "response":[B
    :catchall_111
    move-exception v0

    move-object v5, v10

    move-object v3, v11

    goto :goto_12f

    .line 260
    :catch_115
    move-exception v0

    move-object v5, v10

    move-object v3, v11

    goto :goto_122

    .line 265
    .end local v11    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :catchall_119
    move-exception v0

    move-object v5, v10

    goto :goto_12f

    .line 260
    :catch_11c
    move-exception v0

    move-object v5, v10

    goto :goto_122

    .line 265
    .end local v10    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    :catchall_11f
    move-exception v0

    goto :goto_12f

    .line 260
    :catch_121
    move-exception v0

    :goto_122
    move-object v12, v0

    .line 261
    .local v12, "ioe":Ljava/io/IOException;
    :try_start_123
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Unable to determine revocation status due to network error"

    sget-object v15, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v13, 0x0

    const/4 v14, -0x1

    invoke-direct/range {v10 .. v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    .end local v1    # "bytes":[B
    .end local v2    # "request":Lsun/security/provider/certpath/OCSPRequest;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "response":[B
    .end local p0    # "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    .end local p1    # "responderURI":Ljava/net/URI;
    .end local p2    # "issuerCert":Ljava/security/cert/X509Certificate;
    .end local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .end local p4    # "date":Ljava/util/Date;
    .end local p5    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    throw v10
    :try_end_12f
    .catchall {:try_start_123 .. :try_end_12f} :catchall_11f

    .line 265
    .end local v12    # "ioe":Ljava/io/IOException;
    .restart local v1    # "bytes":[B
    .restart local v2    # "request":Lsun/security/provider/certpath/OCSPRequest;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "response":[B
    .restart local p0    # "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    .restart local p1    # "responderURI":Ljava/net/URI;
    .restart local p2    # "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .restart local p4    # "date":Ljava/util/Date;
    .restart local p5    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    :goto_12f
    if-eqz v3, :cond_137

    .line 267
    :try_start_131
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_134} :catch_135

    .line 270
    goto :goto_137

    .line 268
    :catch_135
    move-exception v0

    .line 269
    .restart local v0    # "ioe":Ljava/io/IOException;
    throw v0

    .line 272
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_137
    :goto_137
    if-eqz v5, :cond_13f

    .line 274
    :try_start_139
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_13c} :catch_13d

    .line 277
    goto :goto_13f

    .line 275
    :catch_13d
    move-exception v0

    .line 276
    .restart local v0    # "ioe":Ljava/io/IOException;
    throw v0

    .line 279
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_13f
    :goto_13f
    throw v0

    .line 210
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "response":[B
    :catch_140
    move-exception v0

    goto :goto_145

    :catch_142
    move-exception v0

    move-object/from16 v9, p5

    .line 211
    .restart local v0    # "ioe":Ljava/io/IOException;
    :goto_145
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Exception while encoding OCSPRequest"

    invoke-direct {v3, v4, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static blacklist getResponderURI(Ljava/security/cert/X509Certificate;)Ljava/net/URI;
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 307
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0

    invoke-static {v0}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 308
    :catch_9
    move-exception v0

    .line 310
    .local v0, "ce":Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;
    .registers 9
    .param p0, "certImpl"    # Lsun/security/x509/X509CertImpl;

    .line 317
    nop

    .line 318
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    move-result-object v0

    .line 319
    .local v0, "aia":Lsun/security/x509/AuthorityInfoAccessExtension;
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 320
    return-object v1

    .line 323
    :cond_9
    invoke-virtual {v0}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    move-result-object v2

    .line 324
    .local v2, "descriptions":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/AccessDescription;

    .line 325
    .local v4, "description":Lsun/security/x509/AccessDescription;
    invoke-virtual {v4}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    sget-object v6, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 328
    invoke-virtual {v4}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    move-result-object v5

    .line 329
    .local v5, "generalName":Lsun/security/x509/GeneralName;
    invoke-virtual {v5}, Lsun/security/x509/GeneralName;->getType()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3f

    .line 330
    invoke-virtual {v5}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    check-cast v1, Lsun/security/x509/URIName;

    .line 331
    .local v1, "uri":Lsun/security/x509/URIName;
    invoke-virtual {v1}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v3

    return-object v3

    .line 334
    .end local v1    # "uri":Lsun/security/x509/URIName;
    .end local v4    # "description":Lsun/security/x509/AccessDescription;
    .end local v5    # "generalName":Lsun/security/x509/GeneralName;
    :cond_3f
    goto :goto_11

    .line 335
    :cond_40
    return-object v1
.end method

.method private static blacklist initializeTimeout()I
    .registers 2

    .line 88
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string v1, "com.sun.security.ocsp.timeout"

    invoke-direct {v0, v1}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 90
    .local v0, "tmp":Ljava/lang/Integer;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_16

    goto :goto_1d

    .line 95
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1

    .line 91
    :cond_1d
    :goto_1d
    const/16 v1, 0x3a98

    return v1
.end method
