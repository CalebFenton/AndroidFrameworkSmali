.class public final Lcom/android/org/conscrypt/NativeCrypto;
.super Ljava/lang/Object;
.source "NativeCrypto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    }
.end annotation


# static fields
.field public static final DEFAULT_PROTOCOLS:[Ljava/lang/String;

.field static final DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

.field static final DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

.field public static final EC_CURVE_GF2M:I = 0x2

.field public static final EC_CURVE_GFP:I = 0x1

.field public static final EXTENSION_TYPE_CRITICAL:I = 0x1

.field public static final EXTENSION_TYPE_NON_CRITICAL:I = 0x0

.field public static final GN_STACK_ISSUER_ALT_NAME:I = 0x2

.field public static final GN_STACK_SUBJECT_ALT_NAME:I = 0x1

.field public static final OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PKCS7_CERTS:I = 0x1

.field public static final PKCS7_CRLS:I = 0x2

.field public static final RAND_SEED_LENGTH_IN_BYTES:I = 0x400

.field public static final SSLV3_PROTOCOLS:[Ljava/lang/String;

.field public static final SSL_VERIFY_FAIL_IF_NO_PEER_CERT:I = 0x2

.field public static final SSL_VERIFY_NONE:I = 0x0

.field public static final SSL_VERIFY_PEER:I = 0x1

.field public static final STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

.field public static final SUPPORTED_CIPHER_SUITES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_PROTOCOL_SSLV3:Ljava/lang/String; = "SSLv3"

.field private static final SUPPORTED_PROTOCOL_TLSV1:Ljava/lang/String; = "TLSv1"

.field private static final SUPPORTED_PROTOCOL_TLSV1_1:Ljava/lang/String; = "TLSv1.1"

.field private static final SUPPORTED_PROTOCOL_TLSV1_2:Ljava/lang/String; = "TLSv1.2"

.field public static final TLSV11_PROTOCOLS:[Ljava/lang/String;

.field public static final TLSV12_PROTOCOLS:[Ljava/lang/String;

.field public static final TLSV1_PROTOCOLS:[Ljava/lang/String;

.field public static final TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String; = "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

.field public static final TLS_FALLBACK_SCSV:Ljava/lang/String; = "TLS_FALLBACK_SCSV"

.field public static final isBoringSSL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x4

    #@1
    const/4 v10, 0x3

    #@2
    const/4 v9, 0x2

    #@3
    const/4 v8, 0x1

    #@4
    const/4 v7, 0x0

    #@5
    .line 53
    invoke-static {}, Lcom/android/org/conscrypt/NativeCryptoJni;->init()V

    #@8
    .line 54
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->clinit()Z

    #@b
    move-result v4

    #@c
    sput-boolean v4, Lcom/android/org/conscrypt/NativeCrypto;->isBoringSSL:Z

    #@e
    .line 586
    new-instance v4, Ljava/util/HashMap;

    #@10
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@13
    .line 585
    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    #@15
    .line 592
    new-instance v4, Ljava/util/LinkedHashMap;

    #@17
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    #@1a
    .line 591
    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    #@1c
    .line 596
    new-instance v4, Ljava/util/HashSet;

    #@1e
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@21
    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES_SET:Ljava/util/Set;

    #@23
    .line 634
    const-string/jumbo v4, "ADH-AES128-GCM-SHA256"

    #@26
    const-string/jumbo v5, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    #@29
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 635
    const-string/jumbo v4, "ADH-AES128-SHA"

    #@2f
    const-string/jumbo v5, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    #@32
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@35
    .line 636
    const-string/jumbo v4, "ADH-AES128-SHA256"

    #@38
    const-string/jumbo v5, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    #@3b
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    .line 637
    const-string/jumbo v4, "ADH-AES256-GCM-SHA384"

    #@41
    const-string/jumbo v5, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    #@44
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@47
    .line 638
    const-string/jumbo v4, "ADH-AES256-SHA"

    #@4a
    const-string/jumbo v5, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    #@4d
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@50
    .line 639
    const-string/jumbo v4, "ADH-AES256-SHA256"

    #@53
    const-string/jumbo v5, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    #@56
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@59
    .line 640
    const-string/jumbo v4, "ADH-DES-CBC-SHA"

    #@5c
    const-string/jumbo v5, "SSL_DH_anon_WITH_DES_CBC_SHA"

    #@5f
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@62
    .line 641
    const-string/jumbo v4, "ADH-DES-CBC3-SHA"

    #@65
    const-string/jumbo v5, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    #@68
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6b
    .line 642
    const-string/jumbo v4, "ADH-RC4-MD5"

    #@6e
    const-string/jumbo v5, "SSL_DH_anon_WITH_RC4_128_MD5"

    #@71
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@74
    .line 643
    const-string/jumbo v4, "AECDH-AES128-SHA"

    #@77
    const-string/jumbo v5, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    #@7a
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7d
    .line 644
    const-string/jumbo v4, "AECDH-AES256-SHA"

    #@80
    const-string/jumbo v5, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    #@83
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@86
    .line 645
    const-string/jumbo v4, "AECDH-DES-CBC3-SHA"

    #@89
    const-string/jumbo v5, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    #@8c
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8f
    .line 646
    const-string/jumbo v4, "AECDH-NULL-SHA"

    #@92
    const-string/jumbo v5, "TLS_ECDH_anon_WITH_NULL_SHA"

    #@95
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@98
    .line 647
    const-string/jumbo v4, "AECDH-RC4-SHA"

    #@9b
    const-string/jumbo v5, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    #@9e
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a1
    .line 648
    const-string/jumbo v4, "AES128-GCM-SHA256"

    #@a4
    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    #@a7
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@aa
    .line 649
    const-string/jumbo v4, "AES128-SHA"

    #@ad
    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_CBC_SHA"

    #@b0
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b3
    .line 650
    const-string/jumbo v4, "AES128-SHA256"

    #@b6
    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    #@b9
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@bc
    .line 651
    const-string/jumbo v4, "AES256-GCM-SHA384"

    #@bf
    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    #@c2
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@c5
    .line 652
    const-string/jumbo v4, "AES256-SHA"

    #@c8
    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_CBC_SHA"

    #@cb
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@ce
    .line 653
    const-string/jumbo v4, "AES256-SHA256"

    #@d1
    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    #@d4
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@d7
    .line 654
    const-string/jumbo v4, "DES-CBC-SHA"

    #@da
    const-string/jumbo v5, "SSL_RSA_WITH_DES_CBC_SHA"

    #@dd
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@e0
    .line 655
    const-string/jumbo v4, "DES-CBC3-SHA"

    #@e3
    const-string/jumbo v5, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    #@e6
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@e9
    .line 656
    const-string/jumbo v4, "DHE-RSA-AES128-GCM-SHA256"

    #@ec
    const-string/jumbo v5, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    #@ef
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@f2
    .line 657
    const-string/jumbo v4, "DHE-RSA-AES128-SHA"

    #@f5
    const-string/jumbo v5, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    #@f8
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@fb
    .line 658
    const-string/jumbo v4, "DHE-RSA-AES128-SHA256"

    #@fe
    const-string/jumbo v5, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    #@101
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@104
    .line 659
    const-string/jumbo v4, "DHE-RSA-AES256-GCM-SHA384"

    #@107
    const-string/jumbo v5, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    #@10a
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@10d
    .line 660
    const-string/jumbo v4, "DHE-RSA-AES256-SHA"

    #@110
    const-string/jumbo v5, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    #@113
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@116
    .line 661
    const-string/jumbo v4, "DHE-RSA-AES256-SHA256"

    #@119
    const-string/jumbo v5, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    #@11c
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@11f
    .line 662
    const-string/jumbo v4, "DHE-RSA-CHACHA20-POLY1305"

    #@122
    const-string/jumbo v5, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305"

    #@125
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@128
    .line 663
    const-string/jumbo v4, "ECDH-ECDSA-AES128-GCM-SHA256"

    #@12b
    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    #@12e
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@131
    .line 664
    const-string/jumbo v4, "ECDH-ECDSA-AES128-SHA"

    #@134
    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    #@137
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@13a
    .line 665
    const-string/jumbo v4, "ECDH-ECDSA-AES128-SHA256"

    #@13d
    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    #@140
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@143
    .line 666
    const-string/jumbo v4, "ECDH-ECDSA-AES256-GCM-SHA384"

    #@146
    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    #@149
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@14c
    .line 667
    const-string/jumbo v4, "ECDH-ECDSA-AES256-SHA"

    #@14f
    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    #@152
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@155
    .line 668
    const-string/jumbo v4, "ECDH-ECDSA-AES256-SHA384"

    #@158
    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    #@15b
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@15e
    .line 669
    const-string/jumbo v4, "ECDH-ECDSA-DES-CBC3-SHA"

    #@161
    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    #@164
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@167
    .line 670
    const-string/jumbo v4, "ECDH-ECDSA-NULL-SHA"

    #@16a
    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    #@16d
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@170
    .line 671
    const-string/jumbo v4, "ECDH-ECDSA-RC4-SHA"

    #@173
    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    #@176
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@179
    .line 672
    const-string/jumbo v4, "ECDH-RSA-AES128-GCM-SHA256"

    #@17c
    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    #@17f
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@182
    .line 673
    const-string/jumbo v4, "ECDH-RSA-AES128-SHA"

    #@185
    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    #@188
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@18b
    .line 674
    const-string/jumbo v4, "ECDH-RSA-AES128-SHA256"

    #@18e
    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    #@191
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@194
    .line 675
    const-string/jumbo v4, "ECDH-RSA-AES256-GCM-SHA384"

    #@197
    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    #@19a
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@19d
    .line 676
    const-string/jumbo v4, "ECDH-RSA-AES256-SHA"

    #@1a0
    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    #@1a3
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1a6
    .line 677
    const-string/jumbo v4, "ECDH-RSA-AES256-SHA384"

    #@1a9
    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    #@1ac
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1af
    .line 678
    const-string/jumbo v4, "ECDH-RSA-DES-CBC3-SHA"

    #@1b2
    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    #@1b5
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1b8
    .line 679
    const-string/jumbo v4, "ECDH-RSA-NULL-SHA"

    #@1bb
    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_NULL_SHA"

    #@1be
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1c1
    .line 680
    const-string/jumbo v4, "ECDH-RSA-RC4-SHA"

    #@1c4
    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    #@1c7
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1ca
    .line 681
    const-string/jumbo v4, "ECDHE-ECDSA-AES128-GCM-SHA256"

    #@1cd
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    #@1d0
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1d3
    .line 682
    const-string/jumbo v4, "ECDHE-ECDSA-AES128-SHA"

    #@1d6
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    #@1d9
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1dc
    .line 683
    const-string/jumbo v4, "ECDHE-ECDSA-AES128-SHA256"

    #@1df
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    #@1e2
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1e5
    .line 684
    const-string/jumbo v4, "ECDHE-ECDSA-AES256-GCM-SHA384"

    #@1e8
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    #@1eb
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1ee
    .line 685
    const-string/jumbo v4, "ECDHE-ECDSA-AES256-SHA"

    #@1f1
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    #@1f4
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1f7
    .line 686
    const-string/jumbo v4, "ECDHE-ECDSA-AES256-SHA384"

    #@1fa
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    #@1fd
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@200
    .line 687
    const-string/jumbo v4, "ECDHE-ECDSA-CHACHA20-POLY1305"

    #@203
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305"

    #@206
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@209
    .line 688
    const-string/jumbo v4, "ECDHE-ECDSA-DES-CBC3-SHA"

    #@20c
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    #@20f
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@212
    .line 689
    const-string/jumbo v4, "ECDHE-ECDSA-NULL-SHA"

    #@215
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    #@218
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@21b
    .line 690
    const-string/jumbo v4, "ECDHE-ECDSA-RC4-SHA"

    #@21e
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    #@221
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@224
    .line 691
    const-string/jumbo v4, "ECDHE-PSK-AES128-CBC-SHA"

    #@227
    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    #@22a
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@22d
    .line 692
    const-string/jumbo v4, "ECDHE-PSK-AES128-GCM-SHA256"

    #@230
    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_AES_128_GCM_SHA256"

    #@233
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@236
    .line 693
    const-string/jumbo v4, "ECDHE-PSK-AES256-CBC-SHA"

    #@239
    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    #@23c
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@23f
    .line 694
    const-string/jumbo v4, "ECDHE-PSK-AES256-GCM-SHA384"

    #@242
    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_AES_256_GCM_SHA384"

    #@245
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@248
    .line 695
    const-string/jumbo v4, "ECDHE-RSA-AES128-GCM-SHA256"

    #@24b
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    #@24e
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@251
    .line 696
    const-string/jumbo v4, "ECDHE-RSA-AES128-SHA"

    #@254
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    #@257
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@25a
    .line 697
    const-string/jumbo v4, "ECDHE-RSA-AES128-SHA256"

    #@25d
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    #@260
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@263
    .line 698
    const-string/jumbo v4, "ECDHE-RSA-AES256-GCM-SHA384"

    #@266
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    #@269
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@26c
    .line 699
    const-string/jumbo v4, "ECDHE-RSA-AES256-SHA"

    #@26f
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    #@272
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@275
    .line 700
    const-string/jumbo v4, "ECDHE-RSA-AES256-SHA384"

    #@278
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    #@27b
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@27e
    .line 701
    const-string/jumbo v4, "ECDHE-RSA-CHACHA20-POLY1305"

    #@281
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305"

    #@284
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@287
    .line 702
    const-string/jumbo v4, "ECDHE-RSA-DES-CBC3-SHA"

    #@28a
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    #@28d
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@290
    .line 703
    const-string/jumbo v4, "ECDHE-RSA-NULL-SHA"

    #@293
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    #@296
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@299
    .line 704
    const-string/jumbo v4, "ECDHE-RSA-RC4-SHA"

    #@29c
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    #@29f
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2a2
    .line 705
    const-string/jumbo v4, "EDH-RSA-DES-CBC-SHA"

    #@2a5
    const-string/jumbo v5, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    #@2a8
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2ab
    .line 706
    const-string/jumbo v4, "EDH-RSA-DES-CBC3-SHA"

    #@2ae
    const-string/jumbo v5, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    #@2b1
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2b4
    .line 707
    const-string/jumbo v4, "EXP-ADH-DES-CBC-SHA"

    #@2b7
    const-string/jumbo v5, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    #@2ba
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2bd
    .line 708
    const-string/jumbo v4, "EXP-ADH-RC4-MD5"

    #@2c0
    const-string/jumbo v5, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    #@2c3
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2c6
    .line 709
    const-string/jumbo v4, "EXP-DES-CBC-SHA"

    #@2c9
    const-string/jumbo v5, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    #@2cc
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2cf
    .line 710
    const-string/jumbo v4, "EXP-EDH-RSA-DES-CBC-SHA"

    #@2d2
    const-string/jumbo v5, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    #@2d5
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2d8
    .line 711
    const-string/jumbo v4, "EXP-RC4-MD5"

    #@2db
    const-string/jumbo v5, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    #@2de
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2e1
    .line 712
    const-string/jumbo v4, "NULL-MD5"

    #@2e4
    const-string/jumbo v5, "SSL_RSA_WITH_NULL_MD5"

    #@2e7
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2ea
    .line 713
    const-string/jumbo v4, "NULL-SHA"

    #@2ed
    const-string/jumbo v5, "SSL_RSA_WITH_NULL_SHA"

    #@2f0
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2f3
    .line 714
    const-string/jumbo v4, "NULL-SHA256"

    #@2f6
    const-string/jumbo v5, "TLS_RSA_WITH_NULL_SHA256"

    #@2f9
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2fc
    .line 715
    const-string/jumbo v4, "PSK-3DES-EDE-CBC-SHA"

    #@2ff
    const-string/jumbo v5, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    #@302
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@305
    .line 716
    const-string/jumbo v4, "PSK-AES128-CBC-SHA"

    #@308
    const-string/jumbo v5, "TLS_PSK_WITH_AES_128_CBC_SHA"

    #@30b
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@30e
    .line 717
    const-string/jumbo v4, "PSK-AES256-CBC-SHA"

    #@311
    const-string/jumbo v5, "TLS_PSK_WITH_AES_256_CBC_SHA"

    #@314
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@317
    .line 718
    const-string/jumbo v4, "PSK-RC4-SHA"

    #@31a
    const-string/jumbo v5, "TLS_PSK_WITH_RC4_128_SHA"

    #@31d
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@320
    .line 719
    const-string/jumbo v4, "RC4-MD5"

    #@323
    const-string/jumbo v5, "SSL_RSA_WITH_RC4_128_MD5"

    #@326
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@329
    .line 720
    const-string/jumbo v4, "RC4-SHA"

    #@32c
    const-string/jumbo v5, "SSL_RSA_WITH_RC4_128_SHA"

    #@32f
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@332
    .line 732
    const-string/jumbo v4, "ALL:-EXP:-SRP:-SEED:-CAMELLIA:-DSS:-RC2:-DES-CBC-MD5:-DES-CBC3-MD5"

    #@335
    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->get_cipher_names(Ljava/lang/String;)[Ljava/lang/String;

    #@338
    move-result-object v0

    #@339
    .line 734
    .local v0, "allOpenSSLCipherSuites":[Ljava/lang/String;
    array-length v2, v0

    #@33a
    .line 735
    .local v2, "size":I
    add-int/lit8 v4, v2, 0x2

    #@33c
    new-array v4, v4, [Ljava/lang/String;

    #@33e
    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    #@340
    .line 736
    const/4 v1, 0x0

    #@341
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@343
    .line 737
    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    #@345
    aget-object v5, v0, v1

    #@347
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34a
    move-result-object v3

    #@34b
    check-cast v3, Ljava/lang/String;

    #@34d
    .line 738
    .local v3, "standardName":Ljava/lang/String;
    if-nez v3, :cond_0

    #@34f
    .line 739
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@351
    new-instance v5, Ljava/lang/StringBuilder;

    #@353
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@356
    const-string/jumbo v6, "Unknown cipher suite supported by native code: "

    #@359
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35c
    move-result-object v5

    #@35d
    .line 740
    aget-object v6, v0, v1

    #@35f
    .line 739
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@362
    move-result-object v5

    #@363
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@366
    move-result-object v5

    #@367
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36a
    throw v4

    #@36b
    .line 742
    :cond_0
    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    #@36d
    aput-object v3, v4, v1

    #@36f
    .line 743
    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES_SET:Ljava/util/Set;

    #@371
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@374
    .line 736
    add-int/lit8 v1, v1, 0x1

    #@376
    goto :goto_0

    #@377
    .line 745
    .end local v3    # "standardName":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    #@379
    const-string/jumbo v5, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    #@37c
    aput-object v5, v4, v2

    #@37e
    .line 746
    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    #@380
    add-int/lit8 v5, v2, 0x1

    #@382
    const-string/jumbo v6, "TLS_FALLBACK_SCSV"

    #@385
    aput-object v6, v4, v5

    #@387
    .line 771
    const/16 v4, 0x13

    #@389
    new-array v4, v4, [Ljava/lang/String;

    #@38b
    .line 772
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    #@38e
    aput-object v5, v4, v7

    #@390
    .line 773
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    #@393
    aput-object v5, v4, v8

    #@395
    .line 774
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    #@398
    aput-object v5, v4, v9

    #@39a
    .line 775
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    #@39d
    aput-object v5, v4, v10

    #@39f
    .line 776
    const-string/jumbo v5, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    #@3a2
    aput-object v5, v4, v11

    #@3a4
    .line 777
    const-string/jumbo v5, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    #@3a7
    const/4 v6, 0x5

    #@3a8
    aput-object v5, v4, v6

    #@3aa
    .line 778
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    #@3ad
    const/4 v6, 0x6

    #@3ae
    aput-object v5, v4, v6

    #@3b0
    .line 779
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    #@3b3
    const/4 v6, 0x7

    #@3b4
    aput-object v5, v4, v6

    #@3b6
    .line 780
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    #@3b9
    const/16 v6, 0x8

    #@3bb
    aput-object v5, v4, v6

    #@3bd
    .line 781
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    #@3c0
    const/16 v6, 0x9

    #@3c2
    aput-object v5, v4, v6

    #@3c4
    .line 782
    const-string/jumbo v5, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    #@3c7
    const/16 v6, 0xa

    #@3c9
    aput-object v5, v4, v6

    #@3cb
    .line 783
    const-string/jumbo v5, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    #@3ce
    const/16 v6, 0xb

    #@3d0
    aput-object v5, v4, v6

    #@3d2
    .line 784
    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    #@3d5
    const/16 v6, 0xc

    #@3d7
    aput-object v5, v4, v6

    #@3d9
    .line 785
    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    #@3dc
    const/16 v6, 0xd

    #@3de
    aput-object v5, v4, v6

    #@3e0
    .line 786
    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    #@3e3
    const/16 v6, 0xe

    #@3e5
    aput-object v5, v4, v6

    #@3e7
    .line 787
    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    #@3ea
    const/16 v6, 0xf

    #@3ec
    aput-object v5, v4, v6

    #@3ee
    .line 788
    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_CBC_SHA"

    #@3f1
    const/16 v6, 0x10

    #@3f3
    aput-object v5, v4, v6

    #@3f5
    .line 789
    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_CBC_SHA"

    #@3f8
    const/16 v6, 0x11

    #@3fa
    aput-object v5, v4, v6

    #@3fc
    .line 790
    const-string/jumbo v5, "SSL_RSA_WITH_RC4_128_SHA"

    #@3ff
    const/16 v6, 0x12

    #@401
    aput-object v5, v4, v6

    #@403
    .line 771
    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    #@405
    .line 794
    new-array v4, v11, [Ljava/lang/String;

    #@407
    .line 795
    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    #@40a
    aput-object v5, v4, v7

    #@40c
    .line 796
    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    #@40f
    aput-object v5, v4, v8

    #@411
    .line 797
    const-string/jumbo v5, "TLS_PSK_WITH_AES_128_CBC_SHA"

    #@414
    aput-object v5, v4, v9

    #@416
    .line 798
    const-string/jumbo v5, "TLS_PSK_WITH_AES_256_CBC_SHA"

    #@419
    aput-object v5, v4, v10

    #@41b
    .line 794
    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    #@41d
    .line 845
    new-array v4, v10, [Ljava/lang/String;

    #@41f
    .line 846
    const-string/jumbo v5, "TLSv1"

    #@422
    aput-object v5, v4, v7

    #@424
    .line 847
    const-string/jumbo v5, "TLSv1.1"

    #@427
    aput-object v5, v4, v8

    #@429
    .line 848
    const-string/jumbo v5, "TLSv1.2"

    #@42c
    aput-object v5, v4, v9

    #@42e
    .line 845
    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->TLSV12_PROTOCOLS:[Ljava/lang/String;

    #@430
    .line 852
    new-array v4, v10, [Ljava/lang/String;

    #@432
    .line 853
    const-string/jumbo v5, "TLSv1"

    #@435
    aput-object v5, v4, v7

    #@437
    .line 854
    const-string/jumbo v5, "TLSv1.1"

    #@43a
    aput-object v5, v4, v8

    #@43c
    .line 855
    const-string/jumbo v5, "TLSv1.2"

    #@43f
    aput-object v5, v4, v9

    #@441
    .line 852
    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->TLSV11_PROTOCOLS:[Ljava/lang/String;

    #@443
    .line 859
    new-array v4, v10, [Ljava/lang/String;

    #@445
    .line 860
    const-string/jumbo v5, "TLSv1"

    #@448
    aput-object v5, v4, v7

    #@44a
    .line 861
    const-string/jumbo v5, "TLSv1.1"

    #@44d
    aput-object v5, v4, v8

    #@44f
    .line 862
    const-string/jumbo v5, "TLSv1.2"

    #@452
    aput-object v5, v4, v9

    #@454
    .line 859
    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->TLSV1_PROTOCOLS:[Ljava/lang/String;

    #@456
    .line 866
    new-array v4, v11, [Ljava/lang/String;

    #@458
    .line 867
    const-string/jumbo v5, "SSLv3"

    #@45b
    aput-object v5, v4, v7

    #@45d
    .line 868
    const-string/jumbo v5, "TLSv1"

    #@460
    aput-object v5, v4, v8

    #@462
    .line 869
    const-string/jumbo v5, "TLSv1.1"

    #@465
    aput-object v5, v4, v9

    #@467
    .line 870
    const-string/jumbo v5, "TLSv1.2"

    #@46a
    aput-object v5, v4, v10

    #@46c
    .line 866
    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SSLV3_PROTOCOLS:[Ljava/lang/String;

    #@46e
    .line 873
    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->TLSV12_PROTOCOLS:[Ljava/lang/String;

    #@470
    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    #@472
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static native ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V
.end method

.method public static native ASN1_seq_pack_X509([J)[B
.end method

.method public static native ASN1_seq_unpack_X509_bio(J)[J
.end method

.method public static native BIO_free_all(J)V
.end method

.method public static native BIO_read(J[B)I
.end method

.method public static native BIO_write(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native DH_generate_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
.end method

.method public static native DH_generate_parameters_ex(IJ)J
.end method

.method public static native ECDH_compute_key([BILcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method public static native EC_GROUP_clear_free(J)V
.end method

.method public static native EC_GROUP_cmp(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)Z
.end method

.method public static native EC_GROUP_get_cofactor(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B
.end method

.method public static native EC_GROUP_get_curve(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[[B
.end method

.method public static native EC_GROUP_get_curve_name(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)Ljava/lang/String;
.end method

.method public static native EC_GROUP_get_degree(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)I
.end method

.method public static native EC_GROUP_get_generator(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method public static native EC_GROUP_get_order(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B
.end method

.method public static native EC_GROUP_new_arbitrary([B[B[B[B[B[BI)J
.end method

.method public static native EC_GROUP_new_by_curve_name(Ljava/lang/String;)J
.end method

.method public static native EC_GROUP_set_asn1_flag(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;I)V
.end method

.method public static native EC_GROUP_set_point_conversion_form(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;I)V
.end method

.method public static native EC_KEY_generate_key(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method public static native EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method public static native EC_KEY_get_private_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method public static native EC_KEY_get_public_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method public static native EC_KEY_set_nonce_from_hash(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;Z)V
.end method

.method public static native EC_POINT_clear_free(J)V
.end method

.method public static native EC_POINT_cmp(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)Z
.end method

.method public static native EC_POINT_get_affine_coordinates(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)[[B
.end method

.method public static native EC_POINT_new(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method public static native EC_POINT_set_affine_coordinates(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B[B)V
.end method

.method public static native ENGINE_add(J)I
.end method

.method public static native ENGINE_by_id(Ljava/lang/String;)J
.end method

.method public static native ENGINE_ctrl_cmd_string(JLjava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native ENGINE_finish(J)I
.end method

.method public static native ENGINE_free(J)I
.end method

.method public static native ENGINE_get_id(J)Ljava/lang/String;
.end method

.method public static native ENGINE_init(J)I
.end method

.method public static native ENGINE_load_dynamic()V
.end method

.method public static native ENGINE_load_private_key(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public static native ERR_peek_last_error()J
.end method

.method public static native EVP_AEAD_CTX_cleanup(J)V
.end method

.method public static native EVP_AEAD_CTX_init(J[BI)J
.end method

.method public static native EVP_AEAD_CTX_open(Lcom/android/org/conscrypt/NativeRef$EVP_AEAD_CTX;[BI[B[BII[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method public static native EVP_AEAD_CTX_seal(Lcom/android/org/conscrypt/NativeRef$EVP_AEAD_CTX;[BI[B[BII[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method public static native EVP_AEAD_max_overhead(J)I
.end method

.method public static native EVP_AEAD_max_tag_len(J)I
.end method

.method public static native EVP_AEAD_nonce_length(J)I
.end method

.method public static native EVP_CIPHER_CTX_block_size(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I
.end method

.method public static native EVP_CIPHER_CTX_free(J)V
.end method

.method public static native EVP_CIPHER_CTX_new()J
.end method

.method public static native EVP_CIPHER_CTX_set_key_length(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;I)V
.end method

.method public static native EVP_CIPHER_CTX_set_padding(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;Z)V
.end method

.method public static native EVP_CIPHER_iv_length(J)I
.end method

.method public static native EVP_CipherFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation
.end method

.method public static native EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V
.end method

.method public static native EVP_CipherUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI[BII)I
.end method

.method public static native EVP_DigestFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BI)I
.end method

.method public static native EVP_DigestInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;J)I
.end method

.method public static native EVP_DigestSignFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)[B
.end method

.method public static native EVP_DigestSignInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
.end method

.method public static native EVP_DigestSignUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[B)V
.end method

.method public static native EVP_DigestUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
.end method

.method public static native EVP_MD_CTX_copy(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)I
.end method

.method public static native EVP_MD_CTX_create()J
.end method

.method public static native EVP_MD_CTX_destroy(J)V
.end method

.method public static native EVP_MD_CTX_init(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)V
.end method

.method public static native EVP_MD_block_size(J)I
.end method

.method public static native EVP_MD_size(J)I
.end method

.method public static native EVP_PKEY_cmp(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method public static native EVP_PKEY_free(J)V
.end method

.method public static native EVP_PKEY_new_DH([B[B[B[B)J
.end method

.method public static native EVP_PKEY_new_DSA([B[B[B[B[B)J
.end method

.method public static native EVP_PKEY_new_EC_KEY(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B)J
.end method

.method public static native EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J
.end method

.method public static native EVP_PKEY_new_mac_key(I[B)J
.end method

.method public static native EVP_PKEY_print_private(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;
.end method

.method public static native EVP_PKEY_print_public(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;
.end method

.method public static native EVP_PKEY_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method public static native EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method public static native EVP_SignFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BILcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method public static native EVP_SignInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;J)I
.end method

.method public static native EVP_SignUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
.end method

.method public static native EVP_VerifyFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BIILcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method public static native EVP_VerifyInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;J)I
.end method

.method public static native EVP_VerifyUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
.end method

.method public static native EVP_aead_aes_128_gcm()J
.end method

.method public static native EVP_aead_aes_256_gcm()J
.end method

.method public static native EVP_get_cipherbyname(Ljava/lang/String;)J
.end method

.method public static native EVP_get_digestbyname(Ljava/lang/String;)J
.end method

.method public static native OBJ_txt2nid(Ljava/lang/String;)I
.end method

.method public static native OBJ_txt2nid_longName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native OBJ_txt2nid_oid(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native PEM_read_bio_PKCS7(JI)[J
.end method

.method public static native PEM_read_bio_X509(J)J
.end method

.method public static native PEM_read_bio_X509_CRL(J)J
.end method

.method public static native RAND_bytes([B)V
.end method

.method public static native RAND_load_file(Ljava/lang/String;J)I
.end method

.method public static native RAND_seed([B)V
.end method

.method public static native RSA_generate_key_ex(I[B)J
.end method

.method public static native RSA_private_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public static native RSA_private_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
.end method

.method public static native RSA_public_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public static native RSA_public_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
.end method

.method public static native RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method public static native SSL_CIPHER_get_kx_name(J)Ljava/lang/String;
.end method

.method public static native SSL_CTX_disable_npn(J)V
.end method

.method public static native SSL_CTX_enable_npn(J)V
.end method

.method public static native SSL_CTX_free(J)V
.end method

.method public static native SSL_CTX_new()J
.end method

.method public static native SSL_CTX_set_session_id_context(J[B)V
.end method

.method public static native SSL_SESSION_cipher(J)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_free(J)V
.end method

.method public static native SSL_SESSION_get_time(J)J
.end method

.method public static native SSL_SESSION_get_version(J)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_session_id(J)[B
.end method

.method public static native SSL_check_private_key(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_clear_mode(JJ)J
.end method

.method public static native SSL_clear_options(JJ)J
.end method

.method public static native SSL_do_handshake(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;IZ[B[B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/net/SocketTimeoutException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public static native SSL_do_handshake_bio(JJJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Z[B[B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/net/SocketTimeoutException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public static native SSL_enable_tls_channel_id(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_free(J)V
.end method

.method public static native SSL_get0_alpn_selected(J)[B
.end method

.method public static native SSL_get_certificate(J)[J
.end method

.method public static native SSL_get_ciphers(J)[J
.end method

.method public static native SSL_get_mode(J)J
.end method

.method public static native SSL_get_npn_negotiated_protocol(J)[B
.end method

.method public static native SSL_get_options(J)J
.end method

.method public static native SSL_get_peer_cert_chain(J)[J
.end method

.method public static native SSL_get_servername(J)Ljava/lang/String;
.end method

.method public static native SSL_get_shutdown(J)I
.end method

.method public static native SSL_get_tls_channel_id(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_interrupt(J)V
.end method

.method public static native SSL_new(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_read(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_read_BIO(J[BIIJJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_renegotiate(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set1_tls_channel_id(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
.end method

.method public static native SSL_set_accept_state(J)V
.end method

.method public static native SSL_set_alpn_protos(J[B)I
.end method

.method public static native SSL_set_cipher_lists(J[Ljava/lang/String;)V
.end method

.method public static native SSL_set_client_CA_list(J[[B)V
.end method

.method public static native SSL_set_connect_state(J)V
.end method

.method public static native SSL_set_mode(JJ)J
.end method

.method public static native SSL_set_options(JJ)J
.end method

.method public static native SSL_set_session(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_session_creation_enabled(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_tlsext_host_name(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_verify(JI)V
.end method

.method public static native SSL_shutdown(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_shutdown_BIO(JJJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_use_PrivateKey(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
.end method

.method public static native SSL_use_certificate(J[J)V
.end method

.method public static native SSL_use_psk_identity_hint(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_write(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_write_BIO(J[BIJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native X509_CRL_free(J)V
.end method

.method public static native X509_CRL_get0_by_cert(JJ)J
.end method

.method public static native X509_CRL_get0_by_serial(J[B)J
.end method

.method public static native X509_CRL_get_REVOKED(J)[J
.end method

.method public static native X509_CRL_get_ext(JLjava/lang/String;)J
.end method

.method public static native X509_CRL_get_ext_oid(JLjava/lang/String;)[B
.end method

.method public static native X509_CRL_get_issuer_name(J)[B
.end method

.method public static native X509_CRL_get_lastUpdate(J)J
.end method

.method public static native X509_CRL_get_nextUpdate(J)J
.end method

.method public static native X509_CRL_get_version(J)J
.end method

.method public static native X509_CRL_print(JJ)V
.end method

.method public static native X509_CRL_verify(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
.end method

.method public static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;)I
    .locals 1
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 361
    const-string/jumbo v0, "SHA1"

    #@3
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I
    .locals 6
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 368
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@7
    move-result-object v5

    #@8
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    #@b
    move-result-object v0

    #@c
    .line 369
    .local v0, "digest":[B
    const/4 v4, 0x0

    #@d
    .line 370
    const/4 v2, 0x1

    #@e
    .local v2, "offset":I
    aget-byte v4, v0, v4

    #@10
    and-int/lit16 v4, v4, 0xff

    #@12
    shl-int/lit8 v4, v4, 0x0

    #@14
    .line 371
    add-int/lit8 v3, v2, 0x1

    #@16
    .end local v2    # "offset":I
    .local v3, "offset":I
    aget-byte v5, v0, v2

    #@18
    and-int/lit16 v5, v5, 0xff

    #@1a
    shl-int/lit8 v5, v5, 0x8

    #@1c
    .line 370
    or-int/2addr v4, v5

    #@1d
    .line 372
    add-int/lit8 v2, v3, 0x1

    #@1f
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v5, v0, v3

    #@21
    and-int/lit16 v5, v5, 0xff

    #@23
    shl-int/lit8 v5, v5, 0x10

    #@25
    .line 370
    or-int/2addr v4, v5

    #@26
    .line 373
    aget-byte v5, v0, v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    and-int/lit16 v5, v5, 0xff

    #@2a
    shl-int/lit8 v5, v5, 0x18

    #@2c
    .line 370
    or-int/2addr v4, v5

    #@2d
    return v4

    #@2e
    .line 374
    .end local v0    # "digest":[B
    .end local v2    # "offset":I
    :catch_0
    move-exception v1

    #@2f
    .line 375
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/AssertionError;

    #@31
    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@34
    throw v4
.end method

.method public static X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I
    .locals 1
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 364
    const-string/jumbo v0, "MD5"

    #@3
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static native X509_NAME_print_ex(JJ)Ljava/lang/String;
.end method

.method public static native X509_REVOKED_dup(J)J
.end method

.method public static native X509_REVOKED_get_ext(JLjava/lang/String;)J
.end method

.method public static native X509_REVOKED_get_ext_oid(JLjava/lang/String;)[B
.end method

.method public static native X509_REVOKED_get_serialNumber(J)[B
.end method

.method public static native X509_REVOKED_print(JJ)V
.end method

.method public static native X509_check_issued(JJ)I
.end method

.method public static native X509_cmp(JJ)I
.end method

.method public static native X509_free(J)V
.end method

.method public static native X509_get_ext_oid(JLjava/lang/String;)[B
.end method

.method public static native X509_get_issuer_name(J)[B
.end method

.method public static native X509_get_notAfter(J)J
.end method

.method public static native X509_get_notBefore(J)J
.end method

.method public static native X509_get_pubkey(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method public static native X509_get_serialNumber(J)[B
.end method

.method public static native X509_get_subject_name(J)[B
.end method

.method public static native X509_get_version(J)J
.end method

.method public static native X509_print_ex(JJJJ)V
.end method

.method public static native X509_supported_extension(J)I
.end method

.method public static native X509_verify(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "openssl"    # Ljava/lang/String;
    .param p1, "standard"    # Ljava/lang/String;

    #@0
    .prologue
    .line 599
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 600
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    #@7
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 598
    return-void
.end method

.method public static checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "cipherSuites"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 966
    if-nez p0, :cond_0

    #@2
    .line 967
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "cipherSuites == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 970
    :cond_0
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    array-length v3, p0

    #@d
    if-ge v1, v3, :cond_5

    #@f
    .line 971
    aget-object v0, p0, v1

    #@11
    .line 972
    .local v0, "cipherSuite":Ljava/lang/String;
    if-nez v0, :cond_1

    #@13
    .line 973
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "cipherSuites["

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    const-string/jumbo v5, "] == null"

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 975
    :cond_1
    const-string/jumbo v3, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    #@37
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v3

    #@3b
    if-nez v3, :cond_2

    #@3d
    .line 976
    const-string/jumbo v3, "TLS_FALLBACK_SCSV"

    #@40
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v3

    #@44
    .line 975
    if-eqz v3, :cond_3

    #@46
    .line 970
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_0

    #@49
    .line 979
    :cond_3
    sget-object v3, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES_SET:Ljava/util/Set;

    #@4b
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@4e
    move-result v3

    #@4f
    if-nez v3, :cond_2

    #@51
    .line 985
    sget-object v3, Lcom/android/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    #@53
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v2

    #@57
    check-cast v2, Ljava/lang/String;

    #@59
    .line 986
    .local v2, "standardName":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@5b
    sget-object v3, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES_SET:Ljava/util/Set;

    #@5d
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@60
    move-result v3

    #@61
    if-nez v3, :cond_2

    #@63
    .line 990
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@65
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v5, "cipherSuite "

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    const-string/jumbo v5, " is not supported."

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@83
    throw v3

    #@84
    .line 992
    .end local v0    # "cipherSuite":Ljava/lang/String;
    .end local v2    # "standardName":Ljava/lang/String;
    :cond_5
    return-object p0
.end method

.method public static checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "protocols"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 915
    if-nez p0, :cond_0

    #@2
    .line 916
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "protocols == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 918
    :cond_0
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@d
    if-ge v0, v2, :cond_4

    #@f
    .line 919
    aget-object v1, p0, v0

    #@11
    .line 920
    .local v1, "protocol":Ljava/lang/String;
    if-nez v1, :cond_1

    #@13
    .line 921
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "protocols["

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, "] == null"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 923
    :cond_1
    const-string/jumbo v2, "SSLv3"

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-nez v2, :cond_2

    #@3d
    .line 924
    const-string/jumbo v2, "TLSv1"

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_3

    #@46
    .line 918
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@48
    goto :goto_0

    #@49
    .line 925
    :cond_3
    const-string/jumbo v2, "TLSv1.1"

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v2

    #@50
    if-nez v2, :cond_2

    #@52
    .line 926
    const-string/jumbo v2, "TLSv1.2"

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    if-nez v2, :cond_2

    #@5b
    .line 927
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5d
    new-instance v3, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v4, "protocol "

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    .line 928
    const-string/jumbo v4, " is not supported"

    #@70
    .line 927
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v2

    #@7c
    .line 931
    .end local v1    # "protocol":Ljava/lang/String;
    :cond_4
    return-object p0
.end method

.method private static native clinit()Z
.end method

.method public static native create_BIO_InputStream(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;Z)J
.end method

.method public static native create_BIO_OutputStream(Ljava/io/OutputStream;)J
.end method

.method public static native d2i_PKCS7_bio(JI)[J
.end method

.method public static native d2i_PKCS8_PRIV_KEY_INFO([B)J
.end method

.method public static native d2i_PUBKEY([B)J
.end method

.method public static native d2i_SSL_SESSION([B)J
.end method

.method public static native d2i_X509([B)J
.end method

.method public static native d2i_X509_CRL_bio(J)J
.end method

.method public static native d2i_X509_bio(J)J
.end method

.method public static native getECPrivateKeyWrapper(Ljava/security/PrivateKey;Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method public static native getRSAPrivateKeyWrapper(Ljava/security/PrivateKey;[B)J
.end method

.method public static getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 802
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public static getSupportedProtocols()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 876
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "SSLv3"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 877
    const-string/jumbo v1, "TLSv1"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 878
    const-string/jumbo v1, "TLSv1.1"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 879
    const-string/jumbo v1, "TLSv1.2"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 876
    return-object v0
.end method

.method public static native get_DH_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B
.end method

.method public static native get_EC_GROUP_type(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)I
.end method

.method public static native get_EVP_CIPHER_CTX_buf_len(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I
.end method

.method public static native get_EVP_CIPHER_CTX_final_used(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)Z
.end method

.method public static native get_RSA_private_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B
.end method

.method public static native get_RSA_public_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B
.end method

.method public static native get_SSL_CIPHER_algorithm_auth(J)I
.end method

.method public static native get_SSL_CIPHER_algorithm_mkey(J)I
.end method

.method public static native get_X509_CRL_crl_enc(J)[B
.end method

.method public static native get_X509_CRL_ext_oids(JI)[Ljava/lang/String;
.end method

.method public static native get_X509_CRL_sig_alg_oid(J)Ljava/lang/String;
.end method

.method public static native get_X509_CRL_sig_alg_parameter(J)[B
.end method

.method public static native get_X509_CRL_signature(J)[B
.end method

.method public static native get_X509_GENERAL_NAME_stack(JI)[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation
.end method

.method public static native get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;
.end method

.method public static native get_X509_REVOKED_revocationDate(J)J
.end method

.method public static native get_X509_cert_info_enc(J)[B
.end method

.method public static native get_X509_ex_flags(J)I
.end method

.method public static native get_X509_ex_kusage(J)[Z
.end method

.method public static native get_X509_ex_pathlen(J)I
.end method

.method public static native get_X509_ex_xkusage(J)[Ljava/lang/String;
.end method

.method public static native get_X509_ext_oids(JI)[Ljava/lang/String;
.end method

.method public static native get_X509_hashCode(J)I
.end method

.method public static native get_X509_issuerUID(J)[Z
.end method

.method public static native get_X509_pubkey_oid(J)Ljava/lang/String;
.end method

.method public static native get_X509_sig_alg_oid(J)Ljava/lang/String;
.end method

.method public static native get_X509_sig_alg_parameter(J)[B
.end method

.method public static native get_X509_signature(J)[B
.end method

.method public static native get_X509_subjectUID(J)[Z
.end method

.method public static native get_cipher_names(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static native i2d_PKCS7([J)[B
.end method

.method public static native i2d_PKCS8_PRIV_KEY_INFO(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method public static native i2d_PUBKEY(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method public static native i2d_RSAPrivateKey(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method public static native i2d_RSAPublicKey(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method public static native i2d_SSL_SESSION(J)[B
.end method

.method public static native i2d_X509(J)[B
.end method

.method public static native i2d_X509_CRL(J)[B
.end method

.method public static native i2d_X509_PUBKEY(J)[B
.end method

.method public static native i2d_X509_REVOKED(J)[B
.end method

.method public static setEnabledCipherSuites(J[Ljava/lang/String;)V
    .locals 8
    .param p0, "ssl"    # J
    .param p2, "cipherSuites"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 947
    invoke-static {p2}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    .line 948
    new-instance v4, Ljava/util/ArrayList;

    #@5
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 949
    .local v4, "opensslSuites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    array-length v5, p2

    #@a
    if-ge v2, v5, :cond_3

    #@c
    .line 950
    aget-object v0, p2, v2

    #@e
    .line 951
    .local v0, "cipherSuite":Ljava/lang/String;
    const-string/jumbo v5, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    #@11
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 949
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 954
    :cond_0
    const-string/jumbo v5, "TLS_FALLBACK_SCSV"

    #@1d
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 955
    const-wide/16 v6, 0x400

    #@25
    invoke-static {p0, p1, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_mode(JJ)J

    #@28
    goto :goto_1

    #@29
    .line 958
    :cond_1
    sget-object v5, Lcom/android/org/conscrypt/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    #@2b
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Ljava/lang/String;

    #@31
    .line 959
    .local v3, "openssl":Ljava/lang/String;
    if-nez v3, :cond_2

    #@33
    move-object v1, v0

    #@34
    .line 960
    .local v1, "cs":Ljava/lang/String;
    :goto_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_1

    #@38
    .line 959
    .end local v1    # "cs":Ljava/lang/String;
    :cond_2
    move-object v1, v3

    #@39
    .restart local v1    # "cs":Ljava/lang/String;
    goto :goto_2

    #@3a
    .line 962
    .end local v0    # "cipherSuite":Ljava/lang/String;
    .end local v1    # "cs":Ljava/lang/String;
    .end local v3    # "openssl":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@3d
    move-result v5

    #@3e
    new-array v5, v5, [Ljava/lang/String;

    #@40
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@43
    move-result-object v5

    #@44
    check-cast v5, [Ljava/lang/String;

    #@46
    invoke-static {p0, p1, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_cipher_lists(J[Ljava/lang/String;)V

    #@49
    .line 946
    return-void
.end method

.method public static setEnabledProtocols(J[Ljava/lang/String;)V
    .locals 8
    .param p0, "ssl"    # J
    .param p2, "protocols"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 884
    invoke-static {p2}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    .line 888
    const-wide/32 v4, 0x1e000000

    #@6
    .line 889
    .local v4, "optionsToSet":J
    const-wide/16 v2, 0x0

    #@8
    .line 890
    .local v2, "optionsToClear":J
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    array-length v6, p2

    #@a
    if-ge v0, v6, :cond_4

    #@c
    .line 891
    aget-object v1, p2, v0

    #@e
    .line 892
    .local v1, "protocol":Ljava/lang/String;
    const-string/jumbo v6, "SSLv3"

    #@11
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_0

    #@17
    .line 893
    const-wide/32 v6, -0x2000001

    #@1a
    and-long/2addr v4, v6

    #@1b
    .line 894
    const-wide/32 v6, 0x2000000

    #@1e
    or-long/2addr v2, v6

    #@1f
    .line 890
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 895
    :cond_0
    const-string/jumbo v6, "TLSv1"

    #@25
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_1

    #@2b
    .line 896
    const-wide/32 v6, -0x4000001

    #@2e
    and-long/2addr v4, v6

    #@2f
    .line 897
    const-wide/32 v6, 0x4000000

    #@32
    or-long/2addr v2, v6

    #@33
    goto :goto_1

    #@34
    .line 898
    :cond_1
    const-string/jumbo v6, "TLSv1.1"

    #@37
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_2

    #@3d
    .line 899
    const-wide/32 v6, -0x10000001

    #@40
    and-long/2addr v4, v6

    #@41
    .line 900
    const-wide/32 v6, 0x10000000

    #@44
    or-long/2addr v2, v6

    #@45
    goto :goto_1

    #@46
    .line 901
    :cond_2
    const-string/jumbo v6, "TLSv1.2"

    #@49
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v6

    #@4d
    if-eqz v6, :cond_3

    #@4f
    .line 902
    const-wide/32 v6, -0x8000001

    #@52
    and-long/2addr v4, v6

    #@53
    .line 903
    const-wide/32 v6, 0x8000000

    #@56
    or-long/2addr v2, v6

    #@57
    goto :goto_1

    #@58
    .line 906
    :cond_3
    new-instance v6, Ljava/lang/IllegalStateException;

    #@5a
    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    #@5d
    throw v6

    #@5e
    .line 910
    .end local v1    # "protocol":Ljava/lang/String;
    :cond_4
    invoke-static {p0, p1, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_options(JJ)J

    #@61
    .line 911
    invoke-static {p0, p1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_options(JJ)J

    #@64
    .line 883
    return-void
.end method

.method public static native set_SSL_psk_client_callback_enabled(JZ)V
.end method

.method public static native set_SSL_psk_server_callback_enabled(JZ)V
.end method
