.class Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;
.super Lsun/security/util/DisabledAlgorithmConstraints;
.source "SSLAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicDisabledAlgConstraints"
.end annotation


# static fields
.field private static final synthetic -sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I


# direct methods
.method private static synthetic -getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lsun/security/ssl/CipherSuite$KeyExchange;->values()[Lsun/security/ssl/CipherSuite$KeyExchange;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@3d
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4f
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@59
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@63
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@6d
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xb

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@77
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xc

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    #@7f
    :goto_b
    :try_start_c
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_NULL:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@81
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@84
    move-result v1

    #@85
    const/16 v2, 0xd

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    #@89
    :goto_c
    :try_start_d
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@8b
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@8e
    move-result v1

    #@8f
    const/16 v2, 0xe

    #@91
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    #@93
    :goto_d
    :try_start_e
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@95
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@98
    move-result v1

    #@99
    const/16 v2, 0xf

    #@9b
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    #@9d
    :goto_e
    :try_start_f
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_SCSV:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@9f
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@a2
    move-result v1

    #@a3
    const/16 v2, 0x10

    #@a5
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    #@a7
    :goto_f
    sput-object v0, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    #@a9
    return-object v0

    #@aa
    :catch_0
    move-exception v1

    #@ab
    goto :goto_f

    #@ac
    :catch_1
    move-exception v1

    #@ad
    goto :goto_e

    #@ae
    :catch_2
    move-exception v1

    #@af
    goto :goto_d

    #@b0
    :catch_3
    move-exception v1

    #@b1
    goto :goto_c

    #@b2
    :catch_4
    move-exception v1

    #@b3
    goto :goto_b

    #@b4
    :catch_5
    move-exception v1

    #@b5
    goto :goto_a

    #@b6
    :catch_6
    move-exception v1

    #@b7
    goto :goto_9

    #@b8
    :catch_7
    move-exception v1

    #@b9
    goto :goto_8

    #@ba
    :catch_8
    move-exception v1

    #@bb
    goto :goto_7

    #@bc
    :catch_9
    move-exception v1

    #@bd
    goto :goto_6

    #@be
    :catch_a
    move-exception v1

    #@bf
    goto :goto_5

    #@c0
    :catch_b
    move-exception v1

    #@c1
    goto/16 :goto_4

    #@c3
    :catch_c
    move-exception v1

    #@c4
    goto/16 :goto_3

    #@c6
    :catch_d
    move-exception v1

    #@c7
    goto/16 :goto_2

    #@c9
    :catch_e
    move-exception v1

    #@ca
    goto/16 :goto_1

    #@cc
    :catch_f
    move-exception v1

    #@cd
    goto/16 :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 259
    invoke-direct {p0, p1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;)V

    #@3
    .line 258
    return-void
.end method


# virtual methods
.method protected decomposes(Lsun/security/ssl/CipherSuite$BulkCipher;)Ljava/util/Set;
    .locals 2
    .param p1, "bulkCipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/CipherSuite$BulkCipher;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 359
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 361
    .local v0, "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p1, Lsun/security/ssl/CipherSuite$BulkCipher;->transformation:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 362
    iget-object v1, p1, Lsun/security/ssl/CipherSuite$BulkCipher;->transformation:Ljava/lang/String;

    #@b
    invoke-super {p0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;->decomposes(Ljava/lang/String;)Ljava/util/Set;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@12
    .line 365
    :cond_0
    return-object v0
.end method

.method protected decomposes(Lsun/security/ssl/CipherSuite$KeyExchange;Z)Ljava/util/Set;
    .locals 3
    .param p1, "keyExchange"    # Lsun/security/ssl/CipherSuite$KeyExchange;
    .param p2, "forCertPathOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/CipherSuite$KeyExchange;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 264
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 265
    .local v0, "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@c
    move-result v2

    #@d
    aget v1, v1, v2

    #@f
    packed-switch v1, :pswitch_data_0

    #@12
    .line 355
    :cond_0
    :goto_0
    return-object v0

    #@13
    .line 267
    :pswitch_0
    if-nez p2, :cond_0

    #@15
    .line 268
    const-string/jumbo v1, "NULL"

    #@18
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1b
    goto :goto_0

    #@1c
    .line 272
    :pswitch_1
    const-string/jumbo v1, "RSA"

    #@1f
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0

    #@23
    .line 275
    :pswitch_2
    const-string/jumbo v1, "RSA"

    #@26
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@29
    .line 276
    const-string/jumbo v1, "RSA_EXPORT"

    #@2c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_0

    #@30
    .line 279
    :pswitch_3
    const-string/jumbo v1, "RSA"

    #@33
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@36
    .line 280
    const-string/jumbo v1, "DH"

    #@39
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3c
    .line 281
    const-string/jumbo v1, "DiffieHellman"

    #@3f
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@42
    .line 282
    const-string/jumbo v1, "DH_RSA"

    #@45
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@48
    goto :goto_0

    #@49
    .line 285
    :pswitch_4
    const-string/jumbo v1, "DSA"

    #@4c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4f
    .line 286
    const-string/jumbo v1, "DSS"

    #@52
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@55
    .line 287
    const-string/jumbo v1, "DH"

    #@58
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5b
    .line 288
    const-string/jumbo v1, "DiffieHellman"

    #@5e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@61
    .line 289
    const-string/jumbo v1, "DH_DSS"

    #@64
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@67
    goto :goto_0

    #@68
    .line 292
    :pswitch_5
    const-string/jumbo v1, "DSA"

    #@6b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6e
    .line 293
    const-string/jumbo v1, "DSS"

    #@71
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@74
    .line 294
    const-string/jumbo v1, "DH"

    #@77
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7a
    .line 295
    const-string/jumbo v1, "DHE"

    #@7d
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@80
    .line 296
    const-string/jumbo v1, "DiffieHellman"

    #@83
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@86
    .line 297
    const-string/jumbo v1, "DHE_DSS"

    #@89
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@8c
    goto :goto_0

    #@8d
    .line 300
    :pswitch_6
    const-string/jumbo v1, "RSA"

    #@90
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@93
    .line 301
    const-string/jumbo v1, "DH"

    #@96
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@99
    .line 302
    const-string/jumbo v1, "DHE"

    #@9c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9f
    .line 303
    const-string/jumbo v1, "DiffieHellman"

    #@a2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a5
    .line 304
    const-string/jumbo v1, "DHE_RSA"

    #@a8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ab
    goto/16 :goto_0

    #@ad
    .line 307
    :pswitch_7
    if-nez p2, :cond_0

    #@af
    .line 308
    const-string/jumbo v1, "ANON"

    #@b2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b5
    .line 309
    const-string/jumbo v1, "DH"

    #@b8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@bb
    .line 310
    const-string/jumbo v1, "DiffieHellman"

    #@be
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c1
    .line 311
    const-string/jumbo v1, "DH_ANON"

    #@c4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c7
    goto/16 :goto_0

    #@c9
    .line 315
    :pswitch_8
    const-string/jumbo v1, "ECDH"

    #@cc
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@cf
    .line 316
    const-string/jumbo v1, "ECDSA"

    #@d2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d5
    .line 317
    const-string/jumbo v1, "ECDH_ECDSA"

    #@d8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@db
    goto/16 :goto_0

    #@dd
    .line 320
    :pswitch_9
    const-string/jumbo v1, "ECDH"

    #@e0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e3
    .line 321
    const-string/jumbo v1, "RSA"

    #@e6
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e9
    .line 322
    const-string/jumbo v1, "ECDH_RSA"

    #@ec
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ef
    goto/16 :goto_0

    #@f1
    .line 325
    :pswitch_a
    const-string/jumbo v1, "ECDHE"

    #@f4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f7
    .line 326
    const-string/jumbo v1, "ECDSA"

    #@fa
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@fd
    .line 327
    const-string/jumbo v1, "ECDHE_ECDSA"

    #@100
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@103
    goto/16 :goto_0

    #@105
    .line 330
    :pswitch_b
    const-string/jumbo v1, "ECDHE"

    #@108
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@10b
    .line 331
    const-string/jumbo v1, "RSA"

    #@10e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@111
    .line 332
    const-string/jumbo v1, "ECDHE_RSA"

    #@114
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@117
    goto/16 :goto_0

    #@119
    .line 335
    :pswitch_c
    if-nez p2, :cond_0

    #@11b
    .line 336
    const-string/jumbo v1, "ECDH"

    #@11e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@121
    .line 337
    const-string/jumbo v1, "ANON"

    #@124
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@127
    .line 338
    const-string/jumbo v1, "ECDH_ANON"

    #@12a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@12d
    goto/16 :goto_0

    #@12f
    .line 342
    :pswitch_d
    if-nez p2, :cond_0

    #@131
    .line 343
    const-string/jumbo v1, "KRB5"

    #@134
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@137
    goto/16 :goto_0

    #@139
    .line 347
    :pswitch_e
    if-nez p2, :cond_0

    #@13b
    .line 348
    const-string/jumbo v1, "KRB5_EXPORT"

    #@13e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@141
    goto/16 :goto_0

    #@143
    .line 265
    nop

    #@144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected decomposes(Lsun/security/ssl/CipherSuite$MacAlg;)Ljava/util/Set;
    .locals 2
    .param p1, "macAlg"    # Lsun/security/ssl/CipherSuite$MacAlg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/CipherSuite$MacAlg;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 369
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 371
    .local v0, "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lsun/security/ssl/CipherSuite;->M_MD5:Lsun/security/ssl/CipherSuite$MacAlg;

    #@7
    if-ne p1, v1, :cond_1

    #@9
    .line 372
    const-string/jumbo v1, "MD5"

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    .line 373
    const-string/jumbo v1, "HmacMD5"

    #@12
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@15
    .line 388
    :cond_0
    :goto_0
    return-object v0

    #@16
    .line 374
    :cond_1
    sget-object v1, Lsun/security/ssl/CipherSuite;->M_SHA:Lsun/security/ssl/CipherSuite$MacAlg;

    #@18
    if-ne p1, v1, :cond_2

    #@1a
    .line 375
    const-string/jumbo v1, "SHA1"

    #@1d
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@20
    .line 376
    const-string/jumbo v1, "SHA-1"

    #@23
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@26
    .line 377
    const-string/jumbo v1, "HmacSHA1"

    #@29
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 378
    :cond_2
    sget-object v1, Lsun/security/ssl/CipherSuite;->M_SHA256:Lsun/security/ssl/CipherSuite$MacAlg;

    #@2f
    if-ne p1, v1, :cond_3

    #@31
    .line 379
    const-string/jumbo v1, "SHA256"

    #@34
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    .line 380
    const-string/jumbo v1, "SHA-256"

    #@3a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3d
    .line 381
    const-string/jumbo v1, "HmacSHA256"

    #@40
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@43
    goto :goto_0

    #@44
    .line 382
    :cond_3
    sget-object v1, Lsun/security/ssl/CipherSuite;->M_SHA384:Lsun/security/ssl/CipherSuite$MacAlg;

    #@46
    if-ne p1, v1, :cond_0

    #@48
    .line 383
    const-string/jumbo v1, "SHA384"

    #@4b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4e
    .line 384
    const-string/jumbo v1, "SHA-384"

    #@51
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@54
    .line 385
    const-string/jumbo v1, "HmacSHA384"

    #@57
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5a
    goto :goto_0
.end method
