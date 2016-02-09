.class abstract Lcom/android/org/conscrypt/AbstractSessionContext;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/AbstractSessionContext$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_SESSION_TIMEOUT_SECONDS:I = 0x7080

.field static final OPEN_SSL:I = 0x1


# instance fields
.field volatile maximumSize:I

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/conscrypt/ByteArray;",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field

.field final sslCtxNativePointer:J

.field volatile timeout:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "maximumSize"    # I

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    const/16 v0, 0x7080

    #@5
    iput v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    #@7
    .line 50
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_new()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    #@d
    .line 56
    new-instance v0, Lcom/android/org/conscrypt/AbstractSessionContext$1;

    #@f
    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractSessionContext$1;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;)V

    #@12
    .line 55
    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    #@14
    .line 75
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    #@16
    .line 74
    return-void
.end method

.method static log(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 302
    new-instance v0, Ljava/lang/Exception;

    #@2
    const-string/jumbo v1, "Error converting session"

    #@5
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@b
    .line 301
    return-void
.end method

.method private sessionIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 82
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    #@2
    monitor-enter v2

    #@3
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    #@5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@8
    move-result-object v1

    #@9
    .line 84
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    #@b
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@e
    move-result v3

    #@f
    new-array v3, v3, [Ljavax/net/ssl/SSLSession;

    #@11
    .line 83
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, [Ljavax/net/ssl/SSLSession;

    #@17
    .line 85
    .local v0, "array":[Ljavax/net/ssl/SSLSession;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1a
    move-result-object v1

    #@1b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v1

    #@1f
    monitor-exit v2

    #@20
    return-object v1

    #@21
    .line 82
    .end local v0    # "array":[Ljavax/net/ssl/SSLSession;
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 308
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 310
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 306
    return-void

    #@9
    .line 309
    :catchall_0
    move-exception v0

    #@a
    .line 310
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 309
    throw v0
.end method

.method public final getIds()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<[B>;"
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->sessionIterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 92
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    new-instance v1, Lcom/android/org/conscrypt/AbstractSessionContext$2;

    #@6
    invoke-direct {v1, p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext$2;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Ljava/util/Iterator;)V

    #@9
    return-object v1
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 5
    .param p1, "sessionId"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 276
    if-nez p1, :cond_0

    #@3
    .line 277
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "sessionId == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 279
    :cond_0
    new-instance v0, Lcom/android/org/conscrypt/ByteArray;

    #@e
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    #@11
    .line 281
    .local v0, "key":Lcom/android/org/conscrypt/ByteArray;
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    #@13
    monitor-enter v3

    #@14
    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    #@16
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Ljavax/net/ssl/SSLSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    monitor-exit v3

    #@1d
    .line 284
    if-eqz v1, :cond_1

    #@1f
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 285
    return-object v1

    #@26
    .line 281
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :catchall_0
    move-exception v2

    #@27
    monitor-exit v3

    #@28
    throw v2

    #@29
    .line 287
    .restart local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    return-object v4
.end method

.method public final getSessionCacheSize()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    #@2
    return v0
.end method

.method public final getSessionTimeout()I
    .locals 1

    #@0
    .prologue
    .line 130
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    #@2
    return v0
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 4
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    #@0
    .prologue
    .line 291
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getId()[B

    #@3
    move-result-object v0

    #@4
    .line 292
    .local v0, "id":[B
    array-length v2, v0

    #@5
    if-nez v2, :cond_0

    #@7
    .line 293
    return-void

    #@8
    .line 295
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/ByteArray;

    #@a
    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    #@d
    .line 296
    .local v1, "key":Lcom/android/org/conscrypt/ByteArray;
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    #@f
    monitor-enter v3

    #@10
    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    #@12
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v3

    #@16
    .line 290
    return-void

    #@17
    .line 296
    :catchall_0
    move-exception v2

    #@18
    monitor-exit v3

    #@19
    throw v2
.end method

.method protected abstract sessionRemoved(Ljavax/net/ssl/SSLSession;)V
.end method

.method public final setSessionCacheSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    if-gez p1, :cond_0

    #@2
    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "size < 0"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 186
    :cond_0
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    #@d
    .line 187
    .local v0, "oldMaximum":I
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    #@f
    .line 190
    if-ge p1, v0, :cond_1

    #@11
    .line 191
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->trimToSize()V

    #@14
    .line 181
    :cond_1
    return-void
.end method

.method public setSessionTimeout(I)V
    .locals 4
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    if-gez p1, :cond_0

    #@2
    .line 155
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "seconds < 0"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 157
    :cond_0
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    #@d
    .line 159
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    #@f
    monitor-enter v3

    #@10
    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    #@12
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v0

    #@1a
    .line 161
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Ljavax/net/ssl/SSLSession;

    #@26
    .line 165
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_1

    #@2c
    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@2f
    .line 167
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 159
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :catchall_0
    move-exception v2

    #@34
    monitor-exit v3

    #@35
    throw v2

    #@36
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_2
    monitor-exit v3

    #@37
    .line 153
    return-void
.end method

.method toBytes(Ljavax/net/ssl/SSLSession;)[B
    .locals 12
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 202
    instance-of v8, p1, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@3
    if-nez v8, :cond_0

    #@5
    .line 203
    return-object v11

    #@6
    :cond_0
    move-object v7, p1

    #@7
    .line 206
    check-cast v7, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@9
    .line 208
    .local v7, "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@b
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@e
    .line 209
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    #@10
    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@13
    .line 211
    .local v3, "daos":Ljava/io/DataOutputStream;
    const/4 v8, 0x1

    #@14
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@17
    .line 214
    invoke-virtual {v7}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getEncoded()[B

    #@1a
    move-result-object v4

    #@1b
    .line 215
    .local v4, "data":[B
    array-length v8, v4

    #@1c
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1f
    .line 216
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    #@22
    .line 219
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@25
    move-result-object v2

    #@26
    .line 220
    .local v2, "certs":[Ljava/security/cert/Certificate;
    array-length v8, v2

    #@27
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@2a
    .line 222
    const/4 v8, 0x0

    #@2b
    array-length v9, v2

    #@2c
    :goto_0
    if-ge v8, v9, :cond_1

    #@2e
    aget-object v1, v2, v8

    #@30
    .line 223
    .local v1, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@33
    move-result-object v4

    #@34
    .line 224
    array-length v10, v4

    #@35
    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@38
    .line 225
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    #@3b
    .line 222
    add-int/lit8 v8, v8, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 229
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    move-result-object v8

    #@42
    return-object v8

    #@43
    .line 233
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "daos":Ljava/io/DataOutputStream;
    .end local v4    # "data":[B
    :catch_0
    move-exception v6

    #@44
    .line 234
    .local v6, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-static {v6}, Lcom/android/org/conscrypt/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    #@47
    .line 235
    return-object v11

    #@48
    .line 230
    .end local v6    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_1
    move-exception v5

    #@49
    .line 231
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v5}, Lcom/android/org/conscrypt/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    #@4c
    .line 232
    return-object v11
.end method

.method toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .locals 14
    .param p1, "data"    # [B
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    #@0
    .prologue
    .line 245
    new-instance v6, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    .line 246
    .local v6, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v9, Ljava/io/DataInputStream;

    #@7
    invoke-direct {v9, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@a
    .line 248
    .local v9, "dais":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    #@d
    move-result v13

    #@e
    .line 249
    .local v13, "type":I
    const/4 v0, 0x1

    #@f
    if-eq v13, v0, :cond_0

    #@11
    .line 250
    new-instance v0, Ljava/lang/AssertionError;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Unexpected type ID: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2a
    invoke-static {v0}, Lcom/android/org/conscrypt/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    #@2d
    .line 251
    const/4 v0, 0x0

    #@2e
    return-object v0

    #@2f
    .line 254
    :cond_0
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    #@32
    move-result v12

    #@33
    .line 255
    .local v12, "length":I
    new-array v1, v12, [B

    #@35
    .line 256
    .local v1, "sessionData":[B
    invoke-virtual {v9, v1}, Ljava/io/DataInputStream;->readFully([B)V

    #@38
    .line 258
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    #@3b
    move-result v8

    #@3c
    .line 259
    .local v8, "count":I
    new-array v4, v8, [Ljava/security/cert/X509Certificate;

    #@3e
    .line 260
    .local v4, "certs":[Ljava/security/cert/X509Certificate;
    const/4 v11, 0x0

    #@3f
    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_1

    #@41
    .line 261
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    #@44
    move-result v12

    #@45
    .line 262
    new-array v7, v12, [B

    #@47
    .line 263
    .local v7, "certData":[B
    invoke-virtual {v9, v7}, Ljava/io/DataInputStream;->readFully([B)V

    #@4a
    .line 264
    invoke-static {v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@4d
    move-result-object v0

    #@4e
    aput-object v0, v4, v11

    #@50
    .line 260
    add-int/lit8 v11, v11, 0x1

    #@52
    goto :goto_0

    #@53
    .line 267
    .end local v7    # "certData":[B
    :cond_1
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@55
    move-object/from16 v2, p2

    #@57
    move/from16 v3, p3

    #@59
    move-object v5, p0

    #@5a
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;Lcom/android/org/conscrypt/AbstractSessionContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    return-object v0

    #@5e
    .line 268
    .end local v1    # "sessionData":[B
    .end local v4    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v8    # "count":I
    .end local v11    # "i":I
    .end local v12    # "length":I
    .end local v13    # "type":I
    :catch_0
    move-exception v10

    #@5f
    .line 269
    .local v10, "e":Ljava/io/IOException;
    invoke-static {v10}, Lcom/android/org/conscrypt/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    #@62
    .line 270
    const/4 v0, 0x0

    #@63
    return-object v0
.end method

.method protected trimToSize()V
    .locals 6

    #@0
    .prologue
    .line 137
    iget-object v5, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    #@2
    monitor-enter v5

    #@3
    .line 138
    :try_start_0
    iget-object v4, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    #@5
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@8
    move-result v3

    #@9
    .line 139
    .local v3, "size":I
    iget v4, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    #@b
    if-le v3, v4, :cond_1

    #@d
    .line 140
    iget v4, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    #@f
    sub-int v1, v3, v4

    #@11
    .line 141
    .local v1, "removals":I
    iget-object v4, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    #@13
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v0

    #@1b
    .line 143
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Ljavax/net/ssl/SSLSession;

    #@21
    .line 144
    .local v2, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@24
    .line 145
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 146
    add-int/lit8 v1, v1, -0x1

    #@29
    if-gtz v1, :cond_0

    #@2b
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    .end local v1    # "removals":I
    .end local v2    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    monitor-exit v5

    #@2c
    .line 136
    return-void

    #@2d
    .line 137
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    #@2e
    monitor-exit v5

    #@2f
    throw v4
.end method
