.class public final Lcom/android/org/conscrypt/NativeCrypto;
.super Ljava/lang/Object;
.source "NativeCrypto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/NativeCrypto$Range;,
        Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

.field static final blacklist DEFAULT_SPAKE_CIPHER_SUITES:[Ljava/lang/String;

.field static final blacklist DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

.field static final blacklist DEPRECATED_PROTOCOL_TLSV1:Ljava/lang/String; = "TLSv1"

.field static final blacklist DEPRECATED_PROTOCOL_TLSV1_1:Ljava/lang/String; = "TLSv1.1"

.field static final blacklist EXTENSION_TYPE_CRITICAL:I = 0x1

.field static final blacklist EXTENSION_TYPE_NON_CRITICAL:I = 0x0

.field static final blacklist GN_STACK_ISSUER_ALT_NAME:I = 0x2

.field static final blacklist GN_STACK_SUBJECT_ALT_NAME:I = 0x1

.field private static final blacklist HAS_AES_HARDWARE:Z

.field static final blacklist OBSOLETE_PROTOCOL_SSLV3:Ljava/lang/String; = "SSLv3"

.field static final blacklist PKCS7_CERTS:I = 0x1

.field static final blacklist PKCS7_CRLS:I = 0x2

.field private static final blacklist SUPPORTED_LEGACY_CIPHER_SUITES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist SUPPORTED_PROTOCOLS:[Ljava/lang/String; = null

.field private static final blacklist SUPPORTED_PROTOCOL_TLSV1_2:Ljava/lang/String; = "TLSv1.2"

.field static final blacklist SUPPORTED_PROTOCOL_TLSV1_3:Ljava/lang/String; = "TLSv1.3"

.field private static final blacklist SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

.field static final blacklist SUPPORTED_TLS_1_2_CIPHER_SUITES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist SUPPORTED_TLS_1_3_CIPHER_SUITES:[Ljava/lang/String;

.field static final blacklist SUPPORTED_TLS_1_3_CIPHER_SUITES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist TLSV11_PROTOCOLS:[Ljava/lang/String;

.field static blacklist TLSV12_PROTOCOLS:[Ljava/lang/String; = null

.field static blacklist TLSV13_PROTOCOLS:[Ljava/lang/String; = null

.field static final blacklist TLSV1_PROTOCOLS:[Ljava/lang/String;

.field static final blacklist TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String; = "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

.field private static final blacklist TLS_FALLBACK_SCSV:Ljava/lang/String; = "TLS_FALLBACK_SCSV"

.field private static final blacklist loadError:Ljava/lang/UnsatisfiedLinkError;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 23

    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, "error":Ljava/lang/UnsatisfiedLinkError;
    :try_start_1
    invoke-static {}, Lcom/android/org/conscrypt/NativeCryptoJni;->init()V

    .line 69
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->clinit()V
    :try_end_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_7} :catch_8

    .line 74
    goto :goto_a

    .line 70
    :catch_8
    move-exception v0

    .line 73
    .local v0, "t":Ljava/lang/UnsatisfiedLinkError;
    move-object v1, v0

    .line 75
    .end local v0    # "t":Ljava/lang/UnsatisfiedLinkError;
    :goto_a
    sput-object v1, Lcom/android/org/conscrypt/NativeCrypto;->loadError:Ljava/lang/UnsatisfiedLinkError;

    .line 76
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->isTlsV1Deprecated()Z

    move-result v0

    invoke-static {}, Lcom/android/org/conscrypt/Platform;->isTlsV1Supported()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->setTlsV1DeprecationStatus(ZZ)V

    .line 856
    .end local v1    # "error":Ljava/lang/UnsatisfiedLinkError;
    const-string v0, "TLS_AES_256_GCM_SHA384"

    const-string v1, "TLS_CHACHA20_POLY1305_SHA256"

    const-string v2, "TLS_AES_128_GCM_SHA256"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES:[Ljava/lang/String;

    .line 864
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES_SET:Ljava/util/Set;

    .line 868
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_LEGACY_CIPHER_SUITES_SET:Ljava/util/Set;

    .line 870
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES:[Ljava/lang/String;

    .line 871
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES_SET:Ljava/util/Set;

    .line 920
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->loadError:Ljava/lang/UnsatisfiedLinkError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_9c

    .line 924
    const-string v0, "ALL"

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->get_cipher_names(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "allCipherSuites":[Ljava/lang/String;
    array-length v4, v0

    .line 929
    .local v4, "size":I
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_94

    .line 933
    div-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    new-array v5, v5, [Ljava/lang/String;

    sput-object v5, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

    .line 934
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_58
    if-ge v5, v4, :cond_77

    .line 935
    aget-object v6, v0, v5

    invoke-static {v6}, Lcom/android/org/conscrypt/NativeCrypto;->cipherSuiteToJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 936
    .local v6, "cipherSuite":Ljava/lang/String;
    sget-object v7, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

    div-int/lit8 v8, v5, 0x2

    aput-object v6, v7, v8

    .line 937
    sget-object v7, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES_SET:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 939
    sget-object v7, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_LEGACY_CIPHER_SUITES_SET:Ljava/util/Set;

    add-int/lit8 v8, v5, 0x1

    aget-object v8, v0, v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 934
    .end local v6    # "cipherSuite":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x2

    goto :goto_58

    .line 941
    .end local v5    # "i":I
    :cond_77
    sget-object v5, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

    div-int/lit8 v6, v4, 0x2

    const-string v7, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v7, v5, v6

    .line 942
    sget-object v5, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v2

    const-string v7, "TLS_FALLBACK_SCSV"

    aput-object v7, v5, v6

    .line 944
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_has_aes_hardware()I

    move-result v5

    if-ne v5, v2, :cond_90

    move v5, v2

    goto :goto_91

    :cond_90
    move v5, v1

    :goto_91
    sput-boolean v5, Lcom/android/org/conscrypt/NativeCrypto;->HAS_AES_HARDWARE:Z

    .line 945
    .end local v0    # "allCipherSuites":[Ljava/lang/String;
    .end local v4    # "size":I
    goto :goto_a2

    .line 930
    .restart local v0    # "allCipherSuites":[Ljava/lang/String;
    .restart local v4    # "size":I
    :cond_94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid cipher list returned by get_cipher_names"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 946
    .end local v0    # "allCipherSuites":[Ljava/lang/String;
    .end local v4    # "size":I
    :cond_9c
    sput-boolean v1, Lcom/android/org/conscrypt/NativeCrypto;->HAS_AES_HARDWARE:Z

    .line 947
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

    .line 978
    :goto_a2
    sget-boolean v0, Lcom/android/org/conscrypt/NativeCrypto;->HAS_AES_HARDWARE:Z

    const/16 v4, 0xa

    const-string v5, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v6, 0x9

    const-string v7, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v8, 0x8

    const-string v9, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const/4 v10, 0x7

    const-string v11, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const/4 v12, 0x6

    const-string v13, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const/4 v14, 0x5

    const-string v15, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v16, 0x4

    const-string v17, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const/16 v18, 0x3

    const-string v19, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const-string v20, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const-string v21, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    move/from16 v22, v1

    const/16 v1, 0xe

    if-eqz v0, :cond_f8

    .line 979
    new-array v0, v1, [Ljava/lang/String;

    aput-object v20, v0, v22

    aput-object v19, v0, v2

    aput-object v21, v0, v3

    aput-object v15, v0, v18

    aput-object v13, v0, v16

    aput-object v17, v0, v14

    aput-object v11, v0, v12

    aput-object v9, v0, v10

    aput-object v7, v0, v8

    aput-object v5, v0, v6

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v1, v0, v4

    const/16 v1, 0xb

    const-string v2, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TLS_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    goto :goto_124

    .line 995
    :cond_f8
    new-array v0, v1, [Ljava/lang/String;

    aput-object v21, v0, v22

    aput-object v20, v0, v2

    aput-object v19, v0, v3

    aput-object v17, v0, v18

    aput-object v15, v0, v16

    aput-object v13, v0, v14

    aput-object v11, v0, v12

    aput-object v9, v0, v10

    aput-object v7, v0, v8

    aput-object v5, v0, v6

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v1, v0, v4

    const/16 v1, 0xb

    const-string v2, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TLS_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    :goto_124
    sput-object v0, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    .line 1013
    const-string v0, "TLS_PSK_WITH_AES_128_CBC_SHA"

    const-string v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    const-string v2, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    const-string v3, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const-string v4, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    .line 1022
    const-string v0, "TLS1_3_NAMED_PAKE_SPAKE2PLUSV1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_SPAKE_CIPHER_SUITES:[Ljava/lang/String;

    .line 1132
    const-string v0, "TLSv1.1"

    const-string v1, "TLSv1.2"

    const-string v2, "TLSv1"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/NativeCrypto;->TLSV11_PROTOCOLS:[Ljava/lang/String;

    .line 1139
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->TLSV11_PROTOCOLS:[Ljava/lang/String;

    sput-object v0, Lcom/android/org/conscrypt/NativeCrypto;->TLSV1_PROTOCOLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native greylist ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native greylist ASN1_seq_pack_X509([J)[B
.end method

.method static native greylist ASN1_seq_unpack_X509_bio(J)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native greylist BIO_free_all(J)V
.end method

.method static native blacklist BIO_read(J[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist BIO_write(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method static native blacklist CMAC_CTX_free(J)V
.end method

.method static native blacklist CMAC_CTX_new()J
.end method

.method static native blacklist CMAC_Final(Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;)[B
.end method

.method static native blacklist CMAC_Init(Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;[B)V
.end method

.method static native blacklist CMAC_Reset(Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;)V
.end method

.method static native blacklist CMAC_Update(Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;[BII)V
.end method

.method static native blacklist CMAC_UpdateDirect(Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;JI)V
.end method

.method static native blacklist ECDH_compute_key([BILcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method static native blacklist ECDSA_sign([B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native blacklist ECDSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native blacklist ECDSA_verify([B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native greylist EC_GROUP_clear_free(J)V
.end method

.method static native blacklist EC_GROUP_get_cofactor(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B
.end method

.method static native blacklist EC_GROUP_get_curve(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[[B
.end method

.method static native blacklist EC_GROUP_get_curve_name(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)Ljava/lang/String;
.end method

.method static native blacklist EC_GROUP_get_degree(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)I
.end method

.method static native blacklist EC_GROUP_get_generator(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method static native blacklist EC_GROUP_get_order(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B
.end method

.method static native blacklist EC_GROUP_new_arbitrary([B[B[B[B[B[BI)J
.end method

.method static native greylist EC_GROUP_new_by_curve_name(Ljava/lang/String;)J
.end method

.method static native blacklist EC_KEY_generate_key(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method static native blacklist EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method static native blacklist EC_KEY_get_private_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method static native blacklist EC_KEY_get_public_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method static native blacklist EC_KEY_marshal_curve_name(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist EC_KEY_parse_curve_name([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native greylist EC_POINT_clear_free(J)V
.end method

.method static native blacklist EC_POINT_get_affine_coordinates(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)[[B
.end method

.method static native blacklist EC_POINT_new(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method static native blacklist EC_POINT_set_affine_coordinates(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B[B)V
.end method

.method static native blacklist ED25519_keypair([B[B)V
.end method

.method static native blacklist ENGINE_SSL_do_handshake(JLcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist ENGINE_SSL_force_read(JLcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist ENGINE_SSL_read_BIO_direct(JLcom/android/org/conscrypt/NativeSsl;JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist ENGINE_SSL_read_direct(JLcom/android/org/conscrypt/NativeSsl;JILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method static native blacklist ENGINE_SSL_shutdown(JLcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist ENGINE_SSL_write_BIO_direct(JLcom/android/org/conscrypt/NativeSsl;JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist ENGINE_SSL_write_direct(JLcom/android/org/conscrypt/NativeSsl;JILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist EVP_AEAD_CTX_open(J[BI[BI[B[BII[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native blacklist EVP_AEAD_CTX_open_buf(J[BILjava/nio/ByteBuffer;[BLjava/nio/ByteBuffer;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native blacklist EVP_AEAD_CTX_seal(J[BI[BI[B[BII[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native blacklist EVP_AEAD_CTX_seal_buf(J[BILjava/nio/ByteBuffer;[BLjava/nio/ByteBuffer;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native blacklist EVP_AEAD_max_overhead(J)I
.end method

.method static native blacklist EVP_AEAD_nonce_length(J)I
.end method

.method static native blacklist EVP_CIPHER_CTX_block_size(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I
.end method

.method static native blacklist EVP_CIPHER_CTX_free(J)V
.end method

.method static native greylist EVP_CIPHER_CTX_new()J
.end method

.method static native blacklist EVP_CIPHER_CTX_set_key_length(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;I)V
.end method

.method static native blacklist EVP_CIPHER_CTX_set_padding(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;Z)V
.end method

.method static native greylist EVP_CIPHER_iv_length(J)I
.end method

.method static native blacklist EVP_CipherFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation
.end method

.method static native blacklist EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V
.end method

.method static native blacklist EVP_CipherUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method static native blacklist EVP_DigestFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BI)I
.end method

.method static native blacklist EVP_DigestInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;J)I
.end method

.method static native blacklist EVP_DigestSign(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)[B
.end method

.method static native blacklist EVP_DigestSignFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)[B
.end method

.method static native blacklist EVP_DigestSignInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method static native blacklist EVP_DigestSignUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
.end method

.method static native blacklist EVP_DigestSignUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V
.end method

.method static native blacklist EVP_DigestUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
.end method

.method static native blacklist EVP_DigestUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V
.end method

.method static native blacklist EVP_DigestVerify(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII[BII)Z
.end method

.method static native blacklist EVP_DigestVerifyFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method static native blacklist EVP_DigestVerifyInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method static native blacklist EVP_DigestVerifyUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
.end method

.method static native blacklist EVP_DigestVerifyUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V
.end method

.method static native blacklist EVP_HPKE_CTX_export(Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;[BI)[B
.end method

.method static native blacklist EVP_HPKE_CTX_free(J)V
.end method

.method static native blacklist EVP_HPKE_CTX_open(Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native blacklist EVP_HPKE_CTX_seal(Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;[B[B)[B
.end method

.method static native blacklist EVP_HPKE_CTX_setup_base_mode_recipient(III[B[B[B)Ljava/lang/Object;
.end method

.method static blacklist EVP_HPKE_CTX_setup_base_mode_recipient(Lcom/android/org/conscrypt/HpkeSuite;[B[B[B)Ljava/lang/Object;
    .registers 11
    .param p0, "suite"    # Lcom/android/org/conscrypt/HpkeSuite;
    .param p1, "privateKey"    # [B
    .param p2, "enc"    # [B
    .param p3, "info"    # [B

    .line 429
    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite;->getKem()Lcom/android/org/conscrypt/HpkeSuite$KEM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/HpkeSuite$KEM;->getId()I

    move-result v1

    .line 430
    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite;->getKdf()Lcom/android/org/conscrypt/HpkeSuite$KDF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/HpkeSuite$KDF;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite;->getAead()Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->getId()I

    move-result v3

    .line 429
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "privateKey":[B
    .end local p2    # "enc":[B
    .end local p3    # "info":[B
    .local v4, "privateKey":[B
    .local v5, "enc":[B
    .local v6, "info":[B
    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_HPKE_CTX_setup_base_mode_recipient(III[B[B[B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static native blacklist EVP_HPKE_CTX_setup_base_mode_sender(III[B[B)[Ljava/lang/Object;
.end method

.method static blacklist EVP_HPKE_CTX_setup_base_mode_sender(Lcom/android/org/conscrypt/HpkeSuite;[B[B)[Ljava/lang/Object;
    .registers 6
    .param p0, "suite"    # Lcom/android/org/conscrypt/HpkeSuite;
    .param p1, "publicKey"    # [B
    .param p2, "info"    # [B

    .line 438
    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite;->getKem()Lcom/android/org/conscrypt/HpkeSuite$KEM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/HpkeSuite$KEM;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite;->getKdf()Lcom/android/org/conscrypt/HpkeSuite$KDF;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/conscrypt/HpkeSuite$KDF;->getId()I

    move-result v1

    .line 439
    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite;->getAead()Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->getId()I

    move-result v2

    .line 438
    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_HPKE_CTX_setup_base_mode_sender(III[B[B)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static native blacklist EVP_HPKE_CTX_setup_base_mode_sender_with_seed_for_testing(III[B[B[B)[Ljava/lang/Object;
.end method

.method static blacklist EVP_HPKE_CTX_setup_base_mode_sender_with_seed_for_testing(Lcom/android/org/conscrypt/HpkeSuite;[B[B[B)[Ljava/lang/Object;
    .registers 11
    .param p0, "suite"    # Lcom/android/org/conscrypt/HpkeSuite;
    .param p1, "publicKey"    # [B
    .param p2, "info"    # [B
    .param p3, "seed"    # [B

    .line 446
    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite;->getKem()Lcom/android/org/conscrypt/HpkeSuite$KEM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/HpkeSuite$KEM;->getId()I

    move-result v1

    .line 447
    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite;->getKdf()Lcom/android/org/conscrypt/HpkeSuite$KDF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/HpkeSuite$KDF;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/org/conscrypt/HpkeSuite;->getAead()Lcom/android/org/conscrypt/HpkeSuite$AEAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/HpkeSuite$AEAD;->getId()I

    move-result v3

    .line 446
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "publicKey":[B
    .end local p2    # "info":[B
    .end local p3    # "seed":[B
    .local v4, "publicKey":[B
    .local v5, "info":[B
    .local v6, "seed":[B
    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_HPKE_CTX_setup_base_mode_sender_with_seed_for_testing(III[B[B[B)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static native blacklist EVP_MD_CTX_cleanup(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)V
.end method

.method static native blacklist EVP_MD_CTX_copy_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)I
.end method

.method static native greylist EVP_MD_CTX_create()J
.end method

.method static native greylist EVP_MD_CTX_destroy(J)V
.end method

.method static native greylist EVP_MD_size(J)I
.end method

.method static native blacklist EVP_PKEY_CTX_free(J)V
.end method

.method static native blacklist EVP_PKEY_CTX_set_rsa_mgf1_md(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method static native blacklist EVP_PKEY_CTX_set_rsa_oaep_label(J[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method static native blacklist EVP_PKEY_CTX_set_rsa_oaep_md(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method static native blacklist EVP_PKEY_CTX_set_rsa_padding(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method static native blacklist EVP_PKEY_CTX_set_rsa_pss_saltlen(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method static native blacklist EVP_PKEY_cmp(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native blacklist EVP_PKEY_decrypt(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native blacklist EVP_PKEY_decrypt_init(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method static native blacklist EVP_PKEY_encrypt(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native blacklist EVP_PKEY_encrypt_init(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method static native greylist EVP_PKEY_free(J)V
.end method

.method static native blacklist EVP_PKEY_new_EC_KEY(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B)J
.end method

.method static native greylist EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J
.end method

.method static native blacklist EVP_PKEY_print_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;
.end method

.method static native blacklist EVP_PKEY_print_public(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;
.end method

.method static native blacklist EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native blacklist EVP_aead_aes_128_gcm()J
.end method

.method static native blacklist EVP_aead_aes_128_gcm_siv()J
.end method

.method static native blacklist EVP_aead_aes_256_gcm()J
.end method

.method static native blacklist EVP_aead_aes_256_gcm_siv()J
.end method

.method static native blacklist EVP_aead_chacha20_poly1305()J
.end method

.method static native greylist EVP_get_cipherbyname(Ljava/lang/String;)J
.end method

.method static native greylist EVP_get_digestbyname(Ljava/lang/String;)J
.end method

.method static native blacklist EVP_has_aes_hardware()I
.end method

.method static native blacklist EVP_marshal_private_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method static native blacklist EVP_marshal_public_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method static native blacklist EVP_parse_private_key([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native blacklist EVP_parse_public_key([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native blacklist EVP_raw_X25519_private_key([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method static native blacklist HMAC_CTX_free(J)V
.end method

.method static native blacklist HMAC_CTX_new()J
.end method

.method static native blacklist HMAC_Final(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;)[B
.end method

.method static native blacklist HMAC_Init_ex(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BJ)V
.end method

.method static native blacklist HMAC_Reset(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;)V
.end method

.method static native blacklist HMAC_Update(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BII)V
.end method

.method static native blacklist HMAC_UpdateDirect(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;JI)V
.end method

.method static native greylist PEM_read_bio_PKCS7(JI)[J
.end method

.method static native blacklist PEM_read_bio_PUBKEY(J)J
.end method

.method static native blacklist PEM_read_bio_PrivateKey(J)J
.end method

.method static native greylist PEM_read_bio_X509(J)J
.end method

.method static native greylist PEM_read_bio_X509_CRL(J)J
.end method

.method static native greylist RAND_bytes([B)V
.end method

.method static native greylist RSA_generate_key_ex(I[B)J
.end method

.method static native blacklist RSA_private_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method static native blacklist RSA_private_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
.end method

.method static native blacklist RSA_public_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method static native blacklist RSA_public_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
.end method

.method static native blacklist RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native blacklist SSL_BIO_new(JLcom/android/org/conscrypt/NativeSsl;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native blacklist SSL_CIPHER_get_kx_name(J)Ljava/lang/String;
.end method

.method static native blacklist SSL_CTX_free(JLcom/android/org/conscrypt/AbstractSessionContext;)V
.end method

.method static native greylist SSL_CTX_new()J
.end method

.method static native blacklist SSL_CTX_set_session_id_context(JLcom/android/org/conscrypt/AbstractSessionContext;[B)V
.end method

.method static native blacklist SSL_CTX_set_spake_credential([B[B[B[BZIJLcom/android/org/conscrypt/AbstractSessionContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native blacklist SSL_CTX_set_timeout(JLcom/android/org/conscrypt/AbstractSessionContext;J)J
.end method

.method static native greylist SSL_SESSION_cipher(J)Ljava/lang/String;
.end method

.method static native greylist SSL_SESSION_free(J)V
.end method

.method static native greylist SSL_SESSION_get_time(J)J
.end method

.method static native blacklist SSL_SESSION_get_timeout(J)J
.end method

.method static native greylist SSL_SESSION_get_version(J)Ljava/lang/String;
.end method

.method static native greylist SSL_SESSION_session_id(J)[B
.end method

.method static native blacklist SSL_SESSION_should_be_single_use(J)Z
.end method

.method static native blacklist SSL_SESSION_up_ref(J)V
.end method

.method static native blacklist SSL_accept_renegotiations(JLcom/android/org/conscrypt/NativeSsl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native blacklist SSL_clear_error()V
.end method

.method static native blacklist SSL_clear_mode(JLcom/android/org/conscrypt/NativeSsl;J)J
.end method

.method static native blacklist SSL_clear_options(JLcom/android/org/conscrypt/NativeSsl;J)J
.end method

.method static native blacklist SSL_do_handshake(JLcom/android/org/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/net/SocketTimeoutException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method static native blacklist SSL_enable_ocsp_stapling(JLcom/android/org/conscrypt/NativeSsl;)V
.end method

.method static native blacklist SSL_enable_signed_cert_timestamps(JLcom/android/org/conscrypt/NativeSsl;)V
.end method

.method static native blacklist SSL_enable_tls_channel_id(JLcom/android/org/conscrypt/NativeSsl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native blacklist SSL_export_keying_material(JLcom/android/org/conscrypt/NativeSsl;[B[BI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native blacklist SSL_free(JLcom/android/org/conscrypt/NativeSsl;)V
.end method

.method static native blacklist SSL_get0_peer_certificates(JLcom/android/org/conscrypt/NativeSsl;)[[B
.end method

.method static native blacklist SSL_get1_session(JLcom/android/org/conscrypt/NativeSsl;)J
.end method

.method static native blacklist SSL_get_ciphers(JLcom/android/org/conscrypt/NativeSsl;)[J
.end method

.method public static native blacklist SSL_get_current_cipher(JLcom/android/org/conscrypt/NativeSsl;)Ljava/lang/String;
.end method

.method static native blacklist SSL_get_error(JLcom/android/org/conscrypt/NativeSsl;I)I
.end method

.method static native blacklist SSL_get_mode(JLcom/android/org/conscrypt/NativeSsl;)J
.end method

.method static native blacklist SSL_get_ocsp_response(JLcom/android/org/conscrypt/NativeSsl;)[B
.end method

.method static native blacklist SSL_get_options(JLcom/android/org/conscrypt/NativeSsl;)J
.end method

.method static native blacklist SSL_get_servername(JLcom/android/org/conscrypt/NativeSsl;)Ljava/lang/String;
.end method

.method static native blacklist SSL_get_shutdown(JLcom/android/org/conscrypt/NativeSsl;)I
.end method

.method static native blacklist SSL_get_signature_algorithm_key_type(I)I
.end method

.method static native blacklist SSL_get_signed_cert_timestamp_list(JLcom/android/org/conscrypt/NativeSsl;)[B
.end method

.method static native blacklist SSL_get_time(JLcom/android/org/conscrypt/NativeSsl;)J
.end method

.method static native blacklist SSL_get_timeout(JLcom/android/org/conscrypt/NativeSsl;)J
.end method

.method static native blacklist SSL_get_tls_channel_id(JLcom/android/org/conscrypt/NativeSsl;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native blacklist SSL_get_tls_unique(JLcom/android/org/conscrypt/NativeSsl;)[B
.end method

.method public static native blacklist SSL_get_version(JLcom/android/org/conscrypt/NativeSsl;)Ljava/lang/String;
.end method

.method static native blacklist SSL_interrupt(JLcom/android/org/conscrypt/NativeSsl;)V
.end method

.method static native blacklist SSL_max_seal_overhead(JLcom/android/org/conscrypt/NativeSsl;)I
.end method

.method static native blacklist SSL_new(JLcom/android/org/conscrypt/AbstractSessionContext;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native blacklist SSL_pending_readable_bytes(JLcom/android/org/conscrypt/NativeSsl;)I
.end method

.method static native blacklist SSL_pending_written_bytes_in_BIO(J)I
.end method

.method static native blacklist SSL_read(JLcom/android/org/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist SSL_session_id(JLcom/android/org/conscrypt/NativeSsl;)[B
.end method

.method static native blacklist SSL_session_reused(JLcom/android/org/conscrypt/NativeSsl;)Z
.end method

.method static native blacklist SSL_set1_tls_channel_id(JLcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
.end method

.method static native blacklist SSL_set_accept_state(JLcom/android/org/conscrypt/NativeSsl;)V
.end method

.method static native blacklist SSL_set_cipher_lists(JLcom/android/org/conscrypt/NativeSsl;[Ljava/lang/String;)V
.end method

.method static native blacklist SSL_set_client_CA_list(JLcom/android/org/conscrypt/NativeSsl;[[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native blacklist SSL_set_connect_state(JLcom/android/org/conscrypt/NativeSsl;)V
.end method

.method static native blacklist SSL_set_mode(JLcom/android/org/conscrypt/NativeSsl;J)J
.end method

.method static native blacklist SSL_set_ocsp_response(JLcom/android/org/conscrypt/NativeSsl;[B)V
.end method

.method static native blacklist SSL_set_options(JLcom/android/org/conscrypt/NativeSsl;J)J
.end method

.method static native blacklist SSL_set_protocol_versions(JLcom/android/org/conscrypt/NativeSsl;II)I
.end method

.method static native blacklist SSL_set_session(JLcom/android/org/conscrypt/NativeSsl;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native blacklist SSL_set_session_creation_enabled(JLcom/android/org/conscrypt/NativeSsl;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native blacklist SSL_set_signed_cert_timestamp_list(JLcom/android/org/conscrypt/NativeSsl;[B)V
.end method

.method static native blacklist SSL_set_timeout(JLcom/android/org/conscrypt/NativeSsl;J)J
.end method

.method static native blacklist SSL_set_tlsext_host_name(JLcom/android/org/conscrypt/NativeSsl;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native blacklist SSL_set_verify(JLcom/android/org/conscrypt/NativeSsl;I)V
.end method

.method static native blacklist SSL_shutdown(JLcom/android/org/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist SSL_use_psk_identity_hint(JLcom/android/org/conscrypt/NativeSsl;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native blacklist SSL_write(JLcom/android/org/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist Scrypt_generate_key([B[BIIII)[B
.end method

.method static native blacklist X25519([B[B[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method static native blacklist X25519_keypair([B[B)V
.end method

.method static native blacklist X509_CRL_free(JLcom/android/org/conscrypt/OpenSSLX509CRL;)V
.end method

.method static native blacklist X509_CRL_get0_by_cert(JLcom/android/org/conscrypt/OpenSSLX509CRL;JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J
.end method

.method static native blacklist X509_CRL_get0_by_serial(JLcom/android/org/conscrypt/OpenSSLX509CRL;[B)J
.end method

.method static native blacklist X509_CRL_get_REVOKED(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[J
.end method

.method static native blacklist X509_CRL_get_ext(JLcom/android/org/conscrypt/OpenSSLX509CRL;Ljava/lang/String;)J
.end method

.method static native blacklist X509_CRL_get_ext_oid(JLcom/android/org/conscrypt/OpenSSLX509CRL;Ljava/lang/String;)[B
.end method

.method static native blacklist X509_CRL_get_issuer_name(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B
.end method

.method static native blacklist X509_CRL_get_lastUpdate(JLcom/android/org/conscrypt/OpenSSLX509CRL;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native blacklist X509_CRL_get_nextUpdate(JLcom/android/org/conscrypt/OpenSSLX509CRL;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native blacklist X509_CRL_get_version(JLcom/android/org/conscrypt/OpenSSLX509CRL;)J
.end method

.method static native blacklist X509_CRL_print(JJLcom/android/org/conscrypt/OpenSSLX509CRL;)V
.end method

.method static native blacklist X509_CRL_verify(JLcom/android/org/conscrypt/OpenSSLX509CRL;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation
.end method

.method static blacklist X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;)I
    .registers 2
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 457
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static blacklist X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I
    .registers 6
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 465
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 466
    .local v0, "digest":[B
    const/4 v1, 0x0

    .line 467
    .local v1, "offset":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aget-byte v3, v0, v2
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_29} :catch_2f

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    return v1

    .line 469
    .end local v0    # "digest":[B
    .end local v2    # "offset":I
    :catch_2f
    move-exception v0

    .line 470
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static blacklist X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I
    .registers 2
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 461
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static native greylist X509_REVOKED_dup(J)J
.end method

.method static native greylist X509_REVOKED_get_ext(JLjava/lang/String;)J
.end method

.method static native greylist X509_REVOKED_get_ext_oid(JLjava/lang/String;)[B
.end method

.method static native greylist X509_REVOKED_get_serialNumber(J)[B
.end method

.method static native greylist X509_REVOKED_print(JJ)V
.end method

.method static native blacklist X509_check_issued(JLcom/android/org/conscrypt/OpenSSLX509Certificate;JLcom/android/org/conscrypt/OpenSSLX509Certificate;)I
.end method

.method static native blacklist X509_cmp(JLcom/android/org/conscrypt/OpenSSLX509Certificate;JLcom/android/org/conscrypt/OpenSSLX509Certificate;)I
.end method

.method static native blacklist X509_free(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)V
.end method

.method static native blacklist X509_get_ext_oid(JLcom/android/org/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)[B
.end method

.method static native blacklist X509_get_issuer_name(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native blacklist X509_get_notAfter(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native blacklist X509_get_notBefore(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native blacklist X509_get_pubkey(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method static native blacklist X509_get_serialNumber(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native blacklist X509_get_subject_name(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native blacklist X509_get_version(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J
.end method

.method static native blacklist X509_print_ex(JJLcom/android/org/conscrypt/OpenSSLX509Certificate;JJ)V
.end method

.method static native greylist X509_supported_extension(J)I
.end method

.method static native blacklist X509_verify(JLcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation
.end method

.method static native blacklist asn1_read_free(J)V
.end method

.method static native blacklist asn1_read_init([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_read_is_empty(J)Z
.end method

.method static native blacklist asn1_read_next_tag_is(JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_read_null(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_read_octetstring(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_read_oid(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_read_sequence(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_read_tagged(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_read_uint64(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_write_cleanup(J)V
.end method

.method static native blacklist asn1_write_finish(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_write_flush(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_write_free(J)V
.end method

.method static native blacklist asn1_write_init()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_write_null(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_write_octetstring(J[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_write_oid(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_write_sequence(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_write_tag(JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist asn1_write_uint64(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist chacha20_encrypt_decrypt([BI[BII[B[BI)V
.end method

.method static blacklist checkAvailability()V
    .registers 1

    .line 86
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->loadError:Ljava/lang/UnsatisfiedLinkError;

    if-nez v0, :cond_5

    .line 89
    return-void

    .line 87
    :cond_5
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->loadError:Ljava/lang/UnsatisfiedLinkError;

    throw v0
.end method

.method static blacklist checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "cipherSuites"    # [Ljava/lang/String;

    .line 1258
    if-eqz p0, :cond_83

    .line 1262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_82

    .line 1263
    aget-object v1, p0, v0

    if-eqz v1, :cond_63

    .line 1266
    aget-object v1, p0, v0

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    aget-object v1, p0, v0

    .line 1267
    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1268
    goto :goto_60

    .line 1270
    :cond_1f
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES_SET:Ljava/util/Set;

    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1271
    goto :goto_60

    .line 1275
    :cond_2a
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_SPAKE_CIPHER_SUITES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object v2, p0, v0

    if-ne v1, v2, :cond_34

    .line 1276
    goto :goto_60

    .line 1281
    :cond_34
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_LEGACY_CIPHER_SUITES_SET:Ljava/util/Set;

    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1283
    goto :goto_60

    .line 1285
    :cond_3f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cipherSuite "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1262
    :cond_60
    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1264
    :cond_63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cipherSuites["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] == null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1288
    .end local v0    # "i":I
    :cond_82
    return-object p0

    .line 1259
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipherSuites == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "protocols"    # [Ljava/lang/String;

    .line 1210
    if-eqz p0, :cond_41

    .line 1213
    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_40

    aget-object v2, p0, v1

    .line 1214
    .local v2, "protocol":Ljava/lang/String;
    if-eqz v2, :cond_38

    .line 1217
    sget-object v3, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_PROTOCOLS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1213
    .end local v2    # "protocol":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1218
    .restart local v2    # "protocol":Ljava/lang/String;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocol "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not supported"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1215
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols contains null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1221
    .end local v2    # "protocol":Ljava/lang/String;
    :cond_40
    return-object p0

    .line 1211
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist cipherSuiteFromJava(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "javaCipherSuite"    # Ljava/lang/String;

    .line 903
    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 904
    const-string v0, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    return-object v0

    .line 906
    :cond_b
    return-object p0
.end method

.method static blacklist cipherSuiteToJava(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "cipherSuite"    # Ljava/lang/String;

    .line 896
    const-string v0, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 897
    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    return-object v0

    .line 899
    :cond_b
    return-object p0
.end method

.method private static native blacklist clinit()V
.end method

.method static native greylist create_BIO_InputStream(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;Z)J
.end method

.method static native greylist create_BIO_OutputStream(Ljava/io/OutputStream;)J
.end method

.method static native greylist d2i_PKCS7_bio(JI)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native greylist d2i_SSL_SESSION([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native greylist d2i_X509([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native greylist d2i_X509_CRL_bio(J)J
.end method

.method static native greylist d2i_X509_bio(J)J
.end method

.method static native blacklist getApplicationProtocol(JLcom/android/org/conscrypt/NativeSsl;)[B
.end method

.method public static blacklist getDefaultProtocols()[Ljava/lang/String;
    .registers 1

    .line 1146
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->TLSV13_PROTOCOLS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static native blacklist getDirectBufferAddress(Ljava/nio/Buffer;)J
.end method

.method static native blacklist getECPrivateKeyWrapper(Ljava/security/PrivateKey;Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method private static blacklist getProtocolConstant(Ljava/lang/String;)I
    .registers 4
    .param p0, "protocol"    # Ljava/lang/String;

    .line 1196
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1197
    const/16 v0, 0x301

    return v0

    .line 1198
    :cond_b
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1199
    const/16 v0, 0x302

    return v0

    .line 1200
    :cond_16
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1201
    const/16 v0, 0x303

    return v0

    .line 1202
    :cond_21
    const-string v0, "TLSv1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1203
    const/16 v0, 0x304

    return v0

    .line 1205
    :cond_2c
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown protocol encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static blacklist getProtocolRange([Ljava/lang/String;)Lcom/android/org/conscrypt/NativeCrypto$Range;
    .registers 7
    .param p0, "protocols"    # [Ljava/lang/String;

    .line 1168
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1169
    .local v0, "protocolsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1170
    .local v1, "min":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1171
    .local v2, "max":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_PROTOCOLS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_21

    .line 1172
    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_PROTOCOLS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 1173
    .local v4, "protocol":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1174
    if-nez v1, :cond_19

    .line 1175
    move-object v1, v4

    .line 1177
    :cond_19
    move-object v2, v4

    goto :goto_1e

    .line 1178
    :cond_1b
    if-eqz v1, :cond_1e

    .line 1179
    goto :goto_21

    .line 1171
    .end local v4    # "protocol":Ljava/lang/String;
    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1182
    .end local v3    # "i":I
    :cond_21
    :goto_21
    if-eqz v1, :cond_2b

    if-eqz v2, :cond_2b

    .line 1185
    new-instance v3, Lcom/android/org/conscrypt/NativeCrypto$Range;

    invoke-direct {v3, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto$Range;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 1183
    :cond_2b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No protocols enabled."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static native blacklist getRSAPrivateKeyWrapper(Ljava/security/PrivateKey;[B)J
.end method

.method static blacklist getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 1027
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES:[Ljava/lang/String;

    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    filled-new-array {v0, v1}, [[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getSupportedProtocols()[Ljava/lang/String;
    .registers 1

    .line 1150
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_PROTOCOLS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static native blacklist get_EVP_CIPHER_CTX_buf_len(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I
.end method

.method static native blacklist get_EVP_CIPHER_CTX_final_used(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)Z
.end method

.method static native blacklist get_RSA_private_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B
.end method

.method static native blacklist get_RSA_public_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B
.end method

.method static native blacklist get_X509_CRL_crl_enc(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B
.end method

.method static native blacklist get_X509_CRL_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;
.end method

.method static native blacklist get_X509_CRL_sig_alg_oid(JLcom/android/org/conscrypt/OpenSSLX509CRL;)Ljava/lang/String;
.end method

.method static native blacklist get_X509_CRL_sig_alg_parameter(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B
.end method

.method static native blacklist get_X509_CRL_signature(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B
.end method

.method static native blacklist get_X509_GENERAL_NAME_stack(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation
.end method

.method static native greylist get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;
.end method

.method static native greylist get_X509_REVOKED_revocationDate(J)J
.end method

.method static native blacklist get_X509_ex_flags(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)I
.end method

.method static native blacklist get_X509_ex_kusage(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[Z
.end method

.method static native blacklist get_X509_ex_pathlen(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)I
.end method

.method static native blacklist get_X509_ex_xkusage(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[Ljava/lang/String;
.end method

.method static native blacklist get_X509_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;
.end method

.method static native blacklist get_X509_issuerUID(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[Z
.end method

.method static native blacklist get_X509_pubkey_oid(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;
.end method

.method static native blacklist get_X509_sig_alg_oid(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;
.end method

.method static native blacklist get_X509_sig_alg_parameter(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native blacklist get_X509_signature(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native blacklist get_X509_subjectUID(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[Z
.end method

.method static native blacklist get_X509_tbs_cert(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native blacklist get_X509_tbs_cert_without_ext(JLcom/android/org/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)[B
.end method

.method static native blacklist get_cipher_names(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static native blacklist get_ocsp_single_extension([BLjava/lang/String;JLcom/android/org/conscrypt/OpenSSLX509Certificate;JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native greylist i2d_PKCS7([J)[B
.end method

.method static native greylist i2d_SSL_SESSION(J)[B
.end method

.method static native blacklist i2d_X509(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native blacklist i2d_X509_CRL(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B
.end method

.method static native blacklist i2d_X509_PUBKEY(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native greylist i2d_X509_REVOKED(J)[B
.end method

.method static native blacklist setApplicationProtocols(JLcom/android/org/conscrypt/NativeSsl;Z[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static blacklist setEnabledCipherSuites(JLcom/android/org/conscrypt/NativeSsl;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .param p0, "ssl"    # J
    .param p2, "ssl_holder"    # Lcom/android/org/conscrypt/NativeSsl;
    .param p3, "cipherSuites"    # [Ljava/lang/String;
    .param p4, "protocols"    # [Ljava/lang/String;

    .line 1235
    invoke-static {p3}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    .line 1236
    invoke-static {p4}, Lcom/android/org/conscrypt/NativeCrypto;->getProtocolRange([Ljava/lang/String;)Lcom/android/org/conscrypt/NativeCrypto$Range;

    move-result-object v0

    iget-object v0, v0, Lcom/android/org/conscrypt/NativeCrypto$Range;->max:Ljava/lang/String;

    .line 1237
    .local v0, "maxProtocol":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    .local v1, "opensslSuites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, p3

    if-ge v2, v3, :cond_45

    .line 1239
    aget-object v3, p3, v2

    .line 1240
    .local v3, "cipherSuite":Ljava/lang/String;
    const-string v4, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1241
    goto :goto_42

    .line 1246
    :cond_1d
    const-string v4, "TLS_FALLBACK_SCSV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1247
    const-string v4, "TLSv1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 1248
    const-string v4, "TLSv1.1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1249
    :cond_35
    const-wide/16 v4, 0x400

    invoke-static {p0, p1, p2, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_mode(JLcom/android/org/conscrypt/NativeSsl;J)J

    .line 1250
    goto :goto_42

    .line 1252
    :cond_3b
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->cipherSuiteFromJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    .end local v3    # "cipherSuite":Ljava/lang/String;
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1254
    .end local v2    # "i":I
    :cond_45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_cipher_lists(JLcom/android/org/conscrypt/NativeSsl;[Ljava/lang/String;)V

    .line 1255
    return-void
.end method

.method static blacklist setEnabledProtocols(JLcom/android/org/conscrypt/NativeSsl;[Ljava/lang/String;)V
    .registers 7
    .param p0, "ssl"    # J
    .param p2, "ssl_holder"    # Lcom/android/org/conscrypt/NativeSsl;
    .param p3, "protocols"    # [Ljava/lang/String;

    .line 1189
    invoke-static {p3}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    .line 1190
    invoke-static {p3}, Lcom/android/org/conscrypt/NativeCrypto;->getProtocolRange([Ljava/lang/String;)Lcom/android/org/conscrypt/NativeCrypto$Range;

    move-result-object v0

    .line 1191
    .local v0, "range":Lcom/android/org/conscrypt/NativeCrypto$Range;
    iget-object v1, v0, Lcom/android/org/conscrypt/NativeCrypto$Range;->min:Ljava/lang/String;

    .line 1192
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->getProtocolConstant(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lcom/android/org/conscrypt/NativeCrypto$Range;->max:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->getProtocolConstant(Ljava/lang/String;)I

    move-result v2

    .line 1191
    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_protocol_versions(JLcom/android/org/conscrypt/NativeSsl;II)I

    .line 1193
    return-void
.end method

.method static native blacklist setHasApplicationProtocolSelector(JLcom/android/org/conscrypt/NativeSsl;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist setLocalCertsAndPrivateKey(JLcom/android/org/conscrypt/NativeSsl;[[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static blacklist setTlsV1DeprecationStatus(ZZ)V
    .registers 7
    .param p0, "deprecated"    # Z
    .param p1, "supported"    # Z

    .line 1089
    const-string v0, "TLSv1.1"

    const-string v1, "TLSv1"

    const-string v2, "TLSv1.3"

    const-string v3, "TLSv1.2"

    if-eqz p0, :cond_17

    .line 1090
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->TLSV12_PROTOCOLS:[Ljava/lang/String;

    .line 1093
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->TLSV13_PROTOCOLS:[Ljava/lang/String;

    goto :goto_23

    .line 1098
    :cond_17
    filled-new-array {v1, v0, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->TLSV12_PROTOCOLS:[Ljava/lang/String;

    .line 1103
    filled-new-array {v1, v0, v3, v2}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->TLSV13_PROTOCOLS:[Ljava/lang/String;

    .line 1110
    :goto_23
    if-eqz p1, :cond_2c

    .line 1111
    filled-new-array {v1, v0, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_PROTOCOLS:[Ljava/lang/String;

    goto :goto_32

    .line 1118
    :cond_2c
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_PROTOCOLS:[Ljava/lang/String;

    .line 1123
    :goto_32
    return-void
.end method

.method static native blacklist set_SSL_psk_client_callback_enabled(JLcom/android/org/conscrypt/NativeSsl;Z)V
.end method

.method static native blacklist set_SSL_psk_server_callback_enabled(JLcom/android/org/conscrypt/NativeSsl;Z)V
.end method

.method static native blacklist usesBoringSsl_FIPS_mode()Z
.end method
