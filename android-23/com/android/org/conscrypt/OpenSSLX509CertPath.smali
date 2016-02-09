.class public Lcom/android/org/conscrypt/OpenSSLX509CertPath;
.super Ljava/security/cert/CertPath;
.source "OpenSSLX509CertPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    }
.end annotation


# static fields
.field private static synthetic -com_android_org_conscrypt_OpenSSLX509CertPath$EncodingSwitchesValues:[I = null

.field private static final ALL_ENCODINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

.field private static final PKCS7_MARKER:[B

.field private static final PUSHBACK_SIZE:I = 0x40


# instance fields
.field private final mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom_android_org_conscrypt_OpenSSLX509CertPath$EncodingSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-com_android_org_conscrypt_OpenSSLX509CertPath$EncodingSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-com_android_org_conscrypt_OpenSSLX509CertPath$EncodingSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->values()[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@10
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@19
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-com_android_org_conscrypt_OpenSSLX509CertPath$EncodingSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 35
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    #@9
    .line 68
    const/4 v0, 0x2

    #@a
    new-array v0, v0, [Ljava/lang/String;

    #@c
    .line 69
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@e
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->-get0(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x0

    #@13
    aput-object v1, v0, v2

    #@15
    .line 70
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@17
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->-get0(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x1

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 67
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@21
    move-result-object v0

    #@22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@25
    move-result-object v0

    #@26
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    #@28
    .line 73
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@2a
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@2c
    .line 34
    return-void

    #@2d
    .line 35
    nop

    #@2e
    :array_0
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

.method protected constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 82
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/X509Certificate;>;"
    const-string/jumbo v0, "X.509"

    #@3
    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    #@6
    .line 84
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    #@8
    .line 81
    return-void
.end method

.method public static fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 1
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@2
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;
    .locals 2
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-getcom_android_org_conscrypt_OpenSSLX509CertPath$EncodingSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 227
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    #@f
    const-string/jumbo v1, "Unknown encoding"

    #@12
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 223
    :pswitch_0
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 225
    :pswitch_1
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    #@1e
    move-result-object v0

    #@1f
    return-object v0

    #@20
    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    if-nez p0, :cond_0

    #@2
    .line 234
    new-instance v1, Ljava/security/cert/CertificateException;

    #@4
    const-string/jumbo v2, "inStream == null"

    #@7
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 237
    :cond_0
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@e
    move-result-object v0

    #@f
    .line 238
    .local v0, "enc":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    if-nez v0, :cond_1

    #@11
    .line 239
    new-instance v1, Ljava/security/cert/CertificateException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Invalid encoding: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 242
    :cond_1
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    #@2e
    move-result-object v1

    #@2f
    return-object v1
.end method

.method private static fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 9
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x40

    #@2
    .line 179
    if-eqz p0, :cond_0

    #@4
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    #@7
    move-result v7

    #@8
    if-nez v7, :cond_1

    #@a
    .line 180
    :cond_0
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    #@c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@f
    move-result-object v8

    #@10
    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    return-object v7

    #@14
    .line 182
    :catch_0
    move-exception v1

    #@15
    .line 183
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/security/cert/CertificateException;

    #@17
    const-string/jumbo v8, "Problem reading input stream"

    #@1a
    invoke-direct {v7, v8, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1d
    throw v7

    #@1e
    .line 186
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    #@21
    move-result v5

    #@22
    .line 187
    .local v5, "markable":Z
    if-eqz v5, :cond_2

    #@24
    .line 188
    invoke-virtual {p0, v8}, Ljava/io/InputStream;->mark(I)V

    #@27
    .line 192
    :cond_2
    new-instance v6, Ljava/io/PushbackInputStream;

    #@29
    invoke-direct {v6, p0, v8}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    #@2c
    .line 194
    .local v6, "pbis":Ljava/io/PushbackInputStream;
    :try_start_1
    sget-object v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    #@2e
    array-length v7, v7

    #@2f
    new-array v0, v7, [B

    #@31
    .line 196
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/PushbackInputStream;->read([B)I

    #@34
    move-result v4

    #@35
    .line 197
    .local v4, "len":I
    if-gez v4, :cond_4

    #@37
    .line 199
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    #@39
    const-string/jumbo v8, "inStream is empty"

    #@3c
    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@40
    .line 208
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    :catch_1
    move-exception v2

    #@41
    .line 209
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v5, :cond_3

    #@43
    .line 211
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@46
    .line 215
    :cond_3
    :goto_0
    new-instance v7, Ljava/security/cert/CertificateException;

    #@48
    invoke-direct {v7, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@4b
    throw v7

    #@4c
    .line 201
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v4    # "len":I
    :cond_4
    const/4 v7, 0x0

    #@4d
    :try_start_3
    invoke-virtual {v6, v0, v7, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    #@50
    .line 203
    sget-object v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    #@52
    array-length v7, v7

    #@53
    if-ne v4, v7, :cond_5

    #@55
    sget-object v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    #@57
    invoke-static {v7, v0}, Ljava/util/Arrays;->equals([B[B)Z

    #@5a
    move-result v7

    #@5b
    if-eqz v7, :cond_5

    #@5d
    .line 204
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    #@5f
    invoke-static {v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    #@62
    move-result-object v8

    #@63
    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    #@66
    return-object v7

    #@67
    .line 207
    :cond_5
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    #@69
    invoke-static {v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    #@6c
    move-result-object v8

    #@6d
    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@70
    return-object v7

    #@71
    .line 212
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    #@72
    .local v3, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 12
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@2
    const/4 v7, 0x1

    #@3
    invoke-direct {v0, p0, v7}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@6
    .line 141
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    #@9
    move-result v6

    #@a
    .line 142
    .local v6, "markable":Z
    if-eqz v6, :cond_0

    #@c
    .line 143
    const/16 v7, 0x40

    #@e
    invoke-virtual {p0, v7}, Ljava/io/InputStream;->mark(I)V

    #@11
    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    #@14
    move-result-wide v8

    #@15
    invoke-static {v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_seq_unpack_X509_bio(J)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v1

    #@19
    .line 158
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@1c
    .line 161
    if-nez v1, :cond_2

    #@1e
    .line 162
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    #@20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@23
    move-result-object v8

    #@24
    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    #@27
    return-object v7

    #@28
    .line 149
    .end local v1    # "certRefs":[J
    :catch_0
    move-exception v3

    #@29
    .line 150
    .local v3, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_1

    #@2b
    .line 152
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .line 156
    :cond_1
    :goto_0
    :try_start_2
    new-instance v7, Ljava/security/cert/CertificateException;

    #@30
    invoke-direct {v7, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@33
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    .line 157
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    #@35
    .line 158
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    #@38
    .line 157
    throw v7

    #@39
    .line 153
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    #@3a
    .local v5, "ignored":Ljava/io/IOException;
    goto :goto_0

    #@3b
    .line 166
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "ignored":Ljava/io/IOException;
    .restart local v1    # "certRefs":[J
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    #@3d
    array-length v7, v1

    #@3e
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@41
    .line 167
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    array-length v7, v1

    #@42
    add-int/lit8 v4, v7, -0x1

    #@44
    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_4

    #@46
    .line 168
    aget-wide v8, v1, v4

    #@48
    const-wide/16 v10, 0x0

    #@4a
    cmp-long v7, v8, v10

    #@4c
    if-nez v7, :cond_3

    #@4e
    .line 167
    :goto_2
    add-int/lit8 v4, v4, -0x1

    #@50
    goto :goto_1

    #@51
    .line 171
    :cond_3
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@53
    aget-wide v8, v1, v4

    #@55
    invoke-direct {v7, v8, v9}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    #@58
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_2

    #@5c
    .line 174
    :cond_4
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    #@5e
    invoke-direct {v7, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    #@61
    return-object v7
.end method

.method private getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B
    .locals 8
    .param p1, "encoding"    # Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    #@2
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@5
    move-result v5

    #@6
    new-array v2, v5, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@8
    .line 94
    .local v2, "certs":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    array-length v5, v2

    #@9
    new-array v1, v5, [J

    #@b
    .line 96
    .local v1, "certRefs":[J
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    array-length v5, v2

    #@d
    add-int/lit8 v4, v5, -0x1

    #@f
    .local v4, "j":I
    :goto_0
    if-ltz v4, :cond_1

    #@11
    .line 97
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    #@13
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@19
    .line 99
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    instance-of v5, v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@1b
    if-eqz v5, :cond_0

    #@1d
    .line 100
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@1f
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    aput-object v0, v2, v4

    #@21
    .line 105
    :goto_1
    aget-object v5, v2, v4

    #@23
    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    #@26
    move-result-wide v6

    #@27
    aput-wide v6, v1, v4

    #@29
    .line 96
    add-int/lit8 v3, v3, 0x1

    #@2b
    add-int/lit8 v4, v4, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 102
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@31
    move-result-object v5

    #@32
    invoke-static {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@35
    move-result-object v5

    #@36
    aput-object v5, v2, v4

    #@38
    goto :goto_1

    #@39
    .line 108
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-getcom_android_org_conscrypt_OpenSSLX509CertPath$EncodingSwitchesValues()[I

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    #@40
    move-result v6

    #@41
    aget v5, v5, v6

    #@43
    packed-switch v5, :pswitch_data_0

    #@46
    .line 114
    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    #@48
    const-string/jumbo v6, "Unknown encoding"

    #@4b
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v5

    #@4f
    .line 110
    :pswitch_0
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_seq_pack_X509([J)[B

    #@52
    move-result-object v5

    #@53
    return-object v5

    #@54
    .line 112
    :pswitch_1
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PKCS7([J)[B

    #@57
    move-result-object v5

    #@58
    return-object v5

    #@59
    .line 108
    nop

    #@5a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getEncodingsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    #@3
    move-result-object v0

    #@4
    .line 126
    .local v0, "enc":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    if-nez v0, :cond_0

    #@6
    .line 127
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Invalid encoding: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 130
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    #@23
    move-result-object v1

    #@24
    return-object v1
.end method

.method public getEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 135
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
