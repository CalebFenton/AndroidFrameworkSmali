.class final Lcom/android/org/conscrypt/OpenSSLX509CertPath;
.super Ljava/security/cert/CertPath;
.source "OpenSSLX509CertPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    }
.end annotation


# static fields
.field private static final blacklist ALL_ENCODINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

.field private static final blacklist PKCS7_MARKER:[B

.field private static final blacklist PUSHBACK_SIZE:I = 0x40

.field private static final whitelist serialVersionUID:J = -0x2d1724b280d2aac9L


# instance fields
.field private final blacklist mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    .line 74
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->-$$Nest$fgetapiName(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->-$$Nest$fgetapiName(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    .line 80
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    return-void

    :array_28
    .array-data 1
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x42t
        0x45t
        0x47t
        0x49t
        0x4et
        0x20t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x37t
    .end array-data
.end method

.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/X509Certificate;>;"
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    .line 92
    return-void
.end method

.method static blacklist fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 3
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 259
    if-eqz p0, :cond_9

    .line 263
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0

    .line 260
    :cond_9
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;
    .registers 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 234
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 240
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Unknown encoding"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :pswitch_f
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0

    .line 236
    :pswitch_14
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method

.method static blacklist fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 6
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 246
    if-eqz p0, :cond_26

    .line 250
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    .line 251
    .local v0, "enc":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    if-eqz v0, :cond_d

    .line 255
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    move-result-object v1

    return-object v1

    .line 252
    :cond_d
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    .end local v0    # "enc":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    :cond_26
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 7
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 191
    if-eqz p0, :cond_60

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_6a

    if-nez v0, :cond_9

    goto :goto_60

    .line 196
    :cond_9
    nop

    .line 198
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    .line 199
    .local v0, "markable":Z
    const/16 v1, 0x40

    if-eqz v0, :cond_15

    .line 200
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 204
    :cond_15
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p0, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 206
    .local v2, "pbis":Ljava/io/PushbackInputStream;
    :try_start_1a
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 208
    .local v1, "buffer":[B
    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v3

    .line 209
    .local v3, "len":I
    if-ltz v3, :cond_4a

    .line 213
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 215
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    array-length v4, v4

    if-ne v3, v4, :cond_40

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 216
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v4

    .line 219
    :cond_40
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v4

    .line 211
    :cond_4a
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v5, "inStream is empty"

    invoke-direct {v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "markable":Z
    .end local v2    # "pbis":Ljava/io/PushbackInputStream;
    .end local p0    # "inStream":Ljava/io/InputStream;
    throw v4
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_52} :catch_52

    .line 220
    .end local v1    # "buffer":[B
    .end local v3    # "len":I
    .restart local v0    # "markable":Z
    .restart local v2    # "pbis":Ljava/io/PushbackInputStream;
    .restart local p0    # "inStream":Ljava/io/InputStream;
    :catch_52
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_5a

    .line 223
    :try_start_55
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    .line 226
    goto :goto_5a

    .line 224
    :catch_59
    move-exception v3

    .line 228
    :cond_5a
    :goto_5a
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 192
    .end local v0    # "markable":Z
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "pbis":Ljava/io/PushbackInputStream;
    :cond_60
    :goto_60
    :try_start_60
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_69} :catch_6a

    return-object v0

    .line 194
    :catch_6a
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Problem reading input stream"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 11
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 148
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    .line 149
    .local v2, "markable":Z
    if-eqz v2, :cond_11

    .line 150
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 155
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_seq_unpack_X509_bio(J)[J

    move-result-object v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_59
    .catchall {:try_start_11 .. :try_end_19} :catchall_57

    .line 166
    .local v3, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 167
    nop

    .line 169
    if-nez v3, :cond_29

    .line 170
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v1

    .line 173
    :cond_29
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v4, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    array-length v5, v3

    sub-int/2addr v5, v1

    .local v5, "i":I
    :goto_31
    if-ltz v5, :cond_51

    .line 176
    aget-wide v6, v3, v5

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_3c

    .line 177
    goto :goto_47

    .line 180
    :cond_3c
    :try_start_3c
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v6, v3, v5

    invoke-direct {v1, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_3c .. :try_end_46} :catch_4a

    .line 183
    nop

    .line 175
    :goto_47
    add-int/lit8 v5, v5, -0x1

    goto :goto_31

    .line 181
    :catch_4a
    move-exception v1

    .line 182
    .local v1, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v6, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 186
    .end local v1    # "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    .end local v5    # "i":I
    :cond_51
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-direct {v1, v4}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v1

    .line 166
    .end local v3    # "certRefs":[J
    .end local v4    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    :catchall_57
    move-exception v1

    goto :goto_67

    .line 156
    :catch_59
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_61

    .line 159
    :try_start_5c
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60
    .catchall {:try_start_5c .. :try_end_5f} :catchall_57

    .line 162
    goto :goto_61

    .line 160
    :catch_60
    move-exception v3

    .line 164
    :cond_61
    :goto_61
    :try_start_61
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local v2    # "markable":Z
    .end local p0    # "inStream":Ljava/io/InputStream;
    throw v3
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_57

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local v2    # "markable":Z
    .restart local p0    # "inStream":Ljava/io/InputStream;
    :goto_67
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 167
    throw v1
.end method

.method private blacklist getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B
    .registers 9
    .param p1, "encoding"    # Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 101
    .local v0, "certs":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    array-length v1, v0

    new-array v1, v1, [J

    .line 103
    .local v1, "certRefs":[J
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_f
    if-ltz v3, :cond_3a

    .line 104
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 106
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    instance-of v5, v4, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v5, :cond_23

    .line 107
    move-object v5, v4

    check-cast v5, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aput-object v5, v0, v3

    goto :goto_2d

    .line 109
    :cond_23
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    aput-object v5, v0, v3

    .line 112
    :goto_2d
    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v5

    aput-wide v5, v1, v3

    .line 103
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 115
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_3a
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_54

    .line 121
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    const-string v3, "Unknown encoding"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :pswitch_49
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PKCS7([J)[B

    move-result-object v2

    return-object v2

    .line 117
    :pswitch_4e
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_seq_pack_X509([J)[B

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_49
    .end packed-switch
.end method

.method static blacklist getEncodingsIterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api getCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded(Ljava/lang/String;)[B
    .registers 6
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 132
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    .line 133
    .local v0, "enc":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    if-eqz v0, :cond_b

    .line 137
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    move-result-object v1

    return-object v1

    .line 134
    :cond_b
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getEncodings()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
