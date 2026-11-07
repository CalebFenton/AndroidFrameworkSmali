.class abstract Lcom/android/org/conscrypt/NativeSslSession;
.super Ljava/lang/Object;
.source "NativeSslSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/NativeSslSession$Impl;
    }
.end annotation


# static fields
.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetlogger()Ljava/util/logging/Logger;
    .registers 1

    sget-object v0, Lcom/android/org/conscrypt/NativeSslSession;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/Throwable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/org/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/android/org/conscrypt/NativeSslSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/NativeSslSession;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkRemaining(Ljava/nio/ByteBuffer;I)V
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    if-ltz p1, :cond_30

    .line 476
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_9

    .line 480
    return-void

    .line 477
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length of blob is longer than available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 478
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_30
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getOcspResponse(Lcom/android/org/conscrypt/ConscryptSession;)[B
    .registers 4
    .param p0, "session"    # Lcom/android/org/conscrypt/ConscryptSession;

    .line 67
    invoke-interface {p0}, Lcom/android/org/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "ocspResponseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_13

    .line 69
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 71
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist log(Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 468
    sget-object v0, Lcom/android/org/conscrypt/NativeSslSession;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 469
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 468
    :goto_17
    const-string v3, "Error inflating SSL session: {0}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    return-void
.end method

.method static blacklist newInstance(Lcom/android/org/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lcom/android/org/conscrypt/NativeSslSession;
    .registers 20
    .param p0, "context"    # Lcom/android/org/conscrypt/AbstractSessionContext;
    .param p1, "data"    # [B
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .line 83
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 85
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    move v3, v0

    .line 86
    .local v3, "type":I
    invoke-static {v3}, Lcom/android/org/conscrypt/SSLUtils$SessionType;->isSupportedType(I)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 90
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 91
    .local v0, "length":I
    invoke-static {v1, v0}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 93
    new-array v4, v0, [B

    .line 94
    .local v4, "sessionData":[B
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 97
    .local v5, "count":I
    invoke-static {v1, v5}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 99
    new-array v6, v5, [Ljava/security/cert/X509Certificate;

    move-object v12, v6

    .line 101
    .local v12, "peerCerts":[Ljava/security/cert/X509Certificate;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_27
    if-ge v6, v5, :cond_65

    .line 102
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 103
    .end local v0    # "length":I
    .local v7, "length":I
    invoke-static {v1, v7}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 105
    new-array v0, v7, [B

    move-object v8, v0

    .line 106
    .local v8, "certData":[B
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_36} :catch_f5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_36} :catch_f5

    .line 108
    :try_start_36
    invoke-static {v8}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    aput-object v0, v12, v6
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3c} :catch_41
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_f5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_36 .. :try_end_3c} :catch_f5

    .line 111
    nop

    .line 101
    .end local v8    # "certData":[B
    add-int/lit8 v6, v6, 0x1

    move v0, v7

    goto :goto_27

    .line 109
    .restart local v8    # "certData":[B
    :catch_41
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    :try_start_42
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not read certificate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local p0    # "context":Lcom/android/org/conscrypt/AbstractSessionContext;
    .end local p1    # "data":[B
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "port":I
    throw v9

    .line 114
    .end local v6    # "i":I
    .end local v7    # "length":I
    .end local v8    # "certData":[B
    .local v0, "length":I
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local p0    # "context":Lcom/android/org/conscrypt/AbstractSessionContext;
    .restart local p1    # "data":[B
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "port":I
    :cond_65
    const/4 v6, 0x0

    .line 115
    .local v6, "ocspData":[B
    sget-object v7, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v7, v7, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    if-lt v3, v7, :cond_9b

    .line 118
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 119
    .local v7, "countOcspResponses":I
    invoke-static {v1, v7}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 121
    const/4 v8, 0x1

    if-lt v7, v8, :cond_9b

    .line 122
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 123
    .local v8, "ocspLength":I
    invoke-static {v1, v8}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 125
    new-array v9, v8, [B

    move-object v6, v9

    .line 126
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 129
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_84
    if-ge v9, v7, :cond_99

    .line 130
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    move v8, v10

    .line 131
    invoke-static {v1, v8}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 132
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    add-int/lit8 v9, v9, 0x1

    goto :goto_84

    :cond_99
    move-object v13, v6

    goto :goto_9c

    .line 137
    .end local v7    # "countOcspResponses":I
    .end local v8    # "ocspLength":I
    .end local v9    # "i":I
    :cond_9b
    move-object v13, v6

    .end local v6    # "ocspData":[B
    .local v13, "ocspData":[B
    :goto_9c
    const/4 v6, 0x0

    .line 138
    .local v6, "tlsSctData":[B
    sget-object v7, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v7, v7, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    if-ne v3, v7, :cond_b4

    .line 139
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 140
    .local v7, "tlsSctDataLength":I
    invoke-static {v1, v7}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 142
    if-lez v7, :cond_b4

    .line 143
    new-array v8, v7, [B

    move-object v6, v8

    .line 144
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v14, v6

    goto :goto_b5

    .line 148
    .end local v7    # "tlsSctDataLength":I
    :cond_b4
    move-object v14, v6

    .end local v6    # "tlsSctData":[B
    .local v14, "tlsSctData":[B
    :goto_b5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-eqz v6, :cond_c6

    .line 149
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Read entire session, but data still remains; rejecting"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/android/org/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    .line 150
    return-object v2

    .line 153
    :cond_c6
    new-instance v9, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    .line 154
    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_SSL_SESSION([B)J

    move-result-wide v6

    invoke-direct {v9, v6, v7}, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 155
    .local v9, "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    new-instance v7, Lcom/android/org/conscrypt/NativeSslSession$Impl;

    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v7 .. v15}, Lcom/android/org/conscrypt/NativeSslSession$Impl;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLcom/android/org/conscrypt/NativeSslSession-IA;)V

    return-object v7

    .line 87
    .end local v0    # "length":I
    .end local v4    # "sessionData":[B
    .end local v5    # "count":I
    .end local v9    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .end local v12    # "peerCerts":[Ljava/security/cert/X509Certificate;
    .end local v13    # "ocspData":[B
    .end local v14    # "tlsSctData":[B
    :cond_dc
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local p0    # "context":Lcom/android/org/conscrypt/AbstractSessionContext;
    .end local p1    # "data":[B
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "port":I
    throw v0
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_f5} :catch_f5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_42 .. :try_end_f5} :catch_f5

    .line 156
    .end local v3    # "type":I
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local p0    # "context":Lcom/android/org/conscrypt/AbstractSessionContext;
    .restart local p1    # "data":[B
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "port":I
    :catch_f5
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    .line 158
    return-object v2
.end method

.method static blacklist newInstance(Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Lcom/android/org/conscrypt/ConscryptSession;)Lcom/android/org/conscrypt/NativeSslSession;
    .registers 12
    .param p0, "ref"    # Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .param p1, "session"    # Lcom/android/org/conscrypt/ConscryptSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 55
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 56
    .local v2, "context":Lcom/android/org/conscrypt/AbstractSessionContext;
    instance-of v0, v2, Lcom/android/org/conscrypt/ClientSessionContext;

    if-eqz v0, :cond_27

    .line 57
    new-instance v1, Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerPort()I

    move-result v5

    .line 58
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-static {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getOcspResponse(Lcom/android/org/conscrypt/ConscryptSession;)[B

    move-result-object v7

    .line 59
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, p0

    .end local p0    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .local v3, "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    invoke-direct/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeSslSession$Impl;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLcom/android/org/conscrypt/NativeSslSession-IA;)V

    .line 57
    return-object v1

    .line 63
    .end local v3    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .restart local p0    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    :cond_27
    move-object v3, p0

    .end local p0    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .restart local v3    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    new-instance v1, Lcom/android/org/conscrypt/NativeSslSession$Impl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeSslSession$Impl;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLcom/android/org/conscrypt/NativeSslSession-IA;)V

    return-object v1
.end method


# virtual methods
.method abstract blacklist getCipherSuite()Ljava/lang/String;
.end method

.method abstract blacklist getId()[B
.end method

.method abstract blacklist getPeerHost()Ljava/lang/String;
.end method

.method abstract blacklist getPeerOcspStapledResponse()[B
.end method

.method abstract blacklist getPeerPort()I
.end method

.method abstract blacklist getPeerSignedCertificateTimestamp()[B
.end method

.method abstract blacklist getProtocol()Ljava/lang/String;
.end method

.method abstract blacklist isSingleUse()Z
.end method

.method abstract blacklist isValid()Z
.end method

.method abstract blacklist offerToResume(Lcom/android/org/conscrypt/NativeSsl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method abstract blacklist toBytes()[B
.end method

.method abstract blacklist toSSLSession()Ljavax/net/ssl/SSLSession;
.end method
