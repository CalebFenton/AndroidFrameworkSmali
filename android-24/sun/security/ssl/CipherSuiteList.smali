.class final Lsun/security/ssl/CipherSuiteList;
.super Ljava/lang/Object;
.source "CipherSuiteList.java"


# static fields
.field private static final synthetic -sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I


# instance fields
.field private final cipherSuites:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field private volatile containsEC:Ljava/lang/Boolean;

.field private suiteNames:[Ljava/lang/String;


# direct methods
.method private static synthetic -getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lsun/security/ssl/CipherSuiteList;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lsun/security/ssl/CipherSuiteList;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

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
    const/4 v2, 0x6

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
    const/4 v2, 0x7

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
    const/16 v2, 0x8

    #@28
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    #@2a
    :goto_2
    :try_start_3
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2c
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@2f
    move-result v1

    #@30
    const/16 v2, 0x9

    #@32
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    #@34
    :goto_3
    :try_start_4
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@36
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@39
    move-result v1

    #@3a
    const/16 v2, 0xa

    #@3c
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    #@3e
    :goto_4
    :try_start_5
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@40
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@43
    move-result v1

    #@44
    const/4 v2, 0x1

    #@45
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    #@47
    :goto_5
    :try_start_6
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@49
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@4c
    move-result v1

    #@4d
    const/4 v2, 0x2

    #@4e
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    #@50
    :goto_6
    :try_start_7
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@52
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@55
    move-result v1

    #@56
    const/4 v2, 0x3

    #@57
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    #@59
    :goto_7
    :try_start_8
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5b
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@5e
    move-result v1

    #@5f
    const/4 v2, 0x4

    #@60
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    #@62
    :goto_8
    :try_start_9
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@64
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@67
    move-result v1

    #@68
    const/4 v2, 0x5

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
    sput-object v0, Lsun/security/ssl/CipherSuiteList;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

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

.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/CipherSuite;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p1, "cipherSuites":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@5
    .line 52
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/CipherSuite;)V
    .locals 2
    .param p1, "suite"    # Lsun/security/ssl/CipherSuite;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@b
    .line 61
    iget-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@d
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@10
    .line 59
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 5
    .param p1, "in"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@6
    move-result-object v0

    #@7
    .line 107
    .local v0, "bytes":[B
    array-length v2, v0

    #@8
    and-int/lit8 v2, v2, 0x1

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 108
    new-instance v2, Ljavax/net/ssl/SSLException;

    #@e
    const-string/jumbo v3, "Invalid ClientHello message"

    #@11
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 110
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@17
    array-length v3, v0

    #@18
    shr-int/lit8 v3, v3, 0x1

    #@1a
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@1d
    iput-object v2, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@1f
    .line 111
    const/4 v1, 0x0

    #@20
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@21
    if-ge v1, v2, :cond_1

    #@23
    .line 112
    iget-object v2, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@25
    aget-byte v3, v0, v1

    #@27
    add-int/lit8 v4, v1, 0x1

    #@29
    aget-byte v4, v0, v4

    #@2b
    invoke-static {v3, v4}, Lsun/security/ssl/CipherSuite;->valueOf(II)Lsun/security/ssl/CipherSuite;

    #@2e
    move-result-object v3

    #@2f
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@32
    .line 111
    add-int/lit8 v1, v1, 0x2

    #@34
    goto :goto_0

    #@35
    .line 105
    :cond_1
    return-void
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 7
    .param p1, "names"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    if-nez p1, :cond_0

    #@5
    .line 74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v5, "CipherSuites may not be null"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 76
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    #@10
    array-length v5, p1

    #@11
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@14
    iput-object v4, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@16
    .line 79
    const/4 v1, 0x0

    #@17
    .line 80
    .local v1, "refreshed":Z
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    array-length v4, p1

    #@19
    if-ge v0, v4, :cond_3

    #@1b
    .line 81
    aget-object v3, p1, v0

    #@1d
    .line 82
    .local v3, "suiteName":Ljava/lang/String;
    invoke-static {v3}, Lsun/security/ssl/CipherSuite;->valueOf(Ljava/lang/String;)Lsun/security/ssl/CipherSuite;

    #@20
    move-result-object v2

    #@21
    .line 83
    .local v2, "suite":Lsun/security/ssl/CipherSuite;
    invoke-virtual {v2}, Lsun/security/ssl/CipherSuite;->isAvailable()Z

    #@24
    move-result v4

    #@25
    if-nez v4, :cond_2

    #@27
    .line 84
    if-nez v1, :cond_1

    #@29
    .line 87
    invoke-static {}, Lsun/security/ssl/CipherSuiteList;->clearAvailableCache()V

    #@2c
    .line 88
    const/4 v1, 0x1

    #@2d
    .line 91
    :cond_1
    invoke-virtual {v2}, Lsun/security/ssl/CipherSuite;->isAvailable()Z

    #@30
    move-result v4

    #@31
    if-nez v4, :cond_2

    #@33
    .line 92
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@35
    new-instance v5, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v6, "Cannot support "

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    .line 93
    const-string/jumbo v6, " with currently installed providers"

    #@48
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v4

    #@54
    .line 96
    :cond_2
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@56
    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@59
    .line 80
    add-int/lit8 v0, v0, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 72
    .end local v2    # "suite":Lsun/security/ssl/CipherSuite;
    .end local v3    # "suiteName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method static declared-synchronized clearAvailableCache()V
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/security/ssl/CipherSuiteList;

    #@2
    monitor-enter v1

    #@3
    .line 205
    :try_start_0
    invoke-static {}, Lsun/security/ssl/CipherSuite$BulkCipher;->clearAvailableCache()V

    #@6
    .line 206
    invoke-static {}, Lsun/security/ssl/JsseJce;->clearEcAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 203
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method


# virtual methods
.method collection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method contains(Lsun/security/ssl/CipherSuite;)Z
    .locals 1
    .param p1, "suite"    # Lsun/security/ssl/CipherSuite;

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method containsEC()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 125
    iget-object v2, p0, Lsun/security/ssl/CipherSuiteList;->containsEC:Ljava/lang/Boolean;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 126
    iget-object v2, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lsun/security/ssl/CipherSuite;

    #@17
    .line 127
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    invoke-static {}, Lsun/security/ssl/CipherSuiteList;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    #@1a
    move-result-object v2

    #@1b
    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1d
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    #@20
    move-result v3

    #@21
    aget v2, v2, v3

    #@23
    packed-switch v2, :pswitch_data_0

    #@26
    goto :goto_0

    #@27
    .line 133
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2a
    move-result-object v2

    #@2b
    iput-object v2, p0, Lsun/security/ssl/CipherSuiteList;->containsEC:Ljava/lang/Boolean;

    #@2d
    .line 134
    return v4

    #@2e
    .line 139
    .end local v0    # "c":Lsun/security/ssl/CipherSuite;
    :cond_0
    const/4 v2, 0x0

    #@2f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@32
    move-result-object v2

    #@33
    iput-object v2, p0, Lsun/security/ssl/CipherSuiteList;->containsEC:Ljava/lang/Boolean;

    #@35
    .line 141
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lsun/security/ssl/CipherSuiteList;->containsEC:Ljava/lang/Boolean;

    #@37
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@3a
    move-result v2

    #@3b
    return v2

    #@3c
    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lsun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 6
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@2
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    #@5
    move-result v4

    #@6
    mul-int/lit8 v4, v4, 0x2

    #@8
    new-array v3, v4, [B

    #@a
    .line 189
    .local v3, "suiteBytes":[B
    const/4 v2, 0x0

    #@b
    .line 190
    .local v2, "i":I
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lsun/security/ssl/CipherSuite;

    #@1d
    .line 191
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    iget v4, v0, Lsun/security/ssl/CipherSuite;->id:I

    #@1f
    shr-int/lit8 v4, v4, 0x8

    #@21
    int-to-byte v4, v4

    #@22
    aput-byte v4, v3, v2

    #@24
    .line 192
    add-int/lit8 v4, v2, 0x1

    #@26
    iget v5, v0, Lsun/security/ssl/CipherSuite;->id:I

    #@28
    int-to-byte v5, v5

    #@29
    aput-byte v5, v3, v4

    #@2b
    .line 193
    add-int/lit8 v2, v2, 0x2

    #@2d
    goto :goto_0

    #@2e
    .line 195
    .end local v0    # "c":Lsun/security/ssl/CipherSuite;
    :cond_0
    invoke-virtual {p1, v3}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@31
    .line 187
    return-void
.end method

.method size()I
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method declared-synchronized toStringArray()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 170
    :try_start_0
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->suiteNames:[Ljava/lang/String;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 171
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@7
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    #@a
    move-result v4

    #@b
    new-array v4, v4, [Ljava/lang/String;

    #@d
    iput-object v4, p0, Lsun/security/ssl/CipherSuiteList;->suiteNames:[Ljava/lang/String;

    #@f
    .line 172
    const/4 v2, 0x0

    #@10
    .line 173
    .local v2, "i":I
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->cipherSuites:Ljava/util/Collection;

    #@12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "c$iterator":Ljava/util/Iterator;
    move v3, v2

    #@17
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lsun/security/ssl/CipherSuite;

    #@23
    .line 174
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->suiteNames:[Ljava/lang/String;

    #@25
    add-int/lit8 v2, v3, 0x1

    #@27
    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget-object v5, v0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    #@29
    aput-object v5, v4, v3

    #@2b
    move v3, v2

    #@2c
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@2d
    .line 177
    .end local v0    # "c":Lsun/security/ssl/CipherSuite;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v3    # "i":I
    :cond_0
    iget-object v4, p0, Lsun/security/ssl/CipherSuiteList;->suiteNames:[Ljava/lang/String;

    #@2f
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    monitor-exit p0

    #@36
    return-object v4

    #@37
    :catchall_0
    move-exception v4

    #@38
    monitor-exit p0

    #@39
    throw v4
.end method
