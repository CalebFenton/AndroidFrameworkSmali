.class final Lsun/security/ssl/CipherSuite;
.super Ljava/lang/Object;
.source "CipherSuite.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/CipherSuite$BulkCipher;,
        Lsun/security/ssl/CipherSuite$KeyExchange;,
        Lsun/security/ssl/CipherSuite$MacAlg;,
        Lsun/security/ssl/CipherSuite$PRF;
    }
.end annotation


# static fields
.field private static final ALLOW_ECC:Z

.field static final B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_IDEA:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_RC2_40:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

.field static final C_NULL:Lsun/security/ssl/CipherSuite;

.field static final C_SCSV:Lsun/security/ssl/CipherSuite;

.field static final DEFAULT_SUITES_PRIORITY:I = 0x12c

.field static final DYNAMIC_AVAILABILITY:Z = true

.field static final M_MD5:Lsun/security/ssl/CipherSuite$MacAlg;

.field static final M_NULL:Lsun/security/ssl/CipherSuite$MacAlg;

.field static final M_SHA:Lsun/security/ssl/CipherSuite$MacAlg;

.field static final M_SHA256:Lsun/security/ssl/CipherSuite$MacAlg;

.field static final M_SHA384:Lsun/security/ssl/CipherSuite$MacAlg;

.field static final SUPPORTED_SUITES_PRIORITY:I = 0x1

.field private static final idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field private static final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/ssl/CipherSuite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final allowed:Z

.field final cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

.field final exportable:Z

.field final id:I

.field final keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

.field final macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

.field final name:Ljava/lang/String;

.field final obsoleted:I

.field final prfAlg:Lsun/security/ssl/CipherSuite$PRF;

.field final priority:I

.field final supported:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lsun/security/ssl/CipherSuite;->ALLOW_ECC:Z

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 19

    #@0
    .prologue
    .line 83
    const-string/jumbo v1, "com.sun.net.ssl.enableECC"

    #@3
    const/4 v2, 0x1

    #@4
    .line 82
    invoke-static {v1, v2}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@7
    move-result v1

    #@8
    sput-boolean v1, Lsun/security/ssl/CipherSuite;->ALLOW_ECC:Z

    #@a
    .line 569
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    #@c
    const-string/jumbo v2, "NULL"

    #@f
    const/4 v3, 0x0

    #@10
    const/4 v4, 0x0

    #@11
    const/4 v5, 0x0

    #@12
    const/4 v6, 0x1

    #@13
    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIIZ)V

    #@16
    .line 568
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@18
    .line 571
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    #@1a
    const-string/jumbo v2, "RC4"

    #@1d
    const/4 v3, 0x5

    #@1e
    const/16 v4, 0x10

    #@20
    const/4 v5, 0x0

    #@21
    const/4 v6, 0x1

    #@22
    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIIZ)V

    #@25
    .line 570
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@27
    .line 573
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    #@29
    const-string/jumbo v2, "RC2"

    #@2c
    const/4 v3, 0x5

    #@2d
    const/16 v4, 0x10

    #@2f
    const/16 v5, 0x8

    #@31
    const/4 v6, 0x0

    #@32
    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIIZ)V

    #@35
    .line 572
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_RC2_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@37
    .line 575
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    #@39
    const-string/jumbo v2, "DES/CBC/NoPadding"

    #@3c
    const/4 v3, 0x5

    #@3d
    const/16 v4, 0x8

    #@3f
    const/16 v5, 0x8

    #@41
    const/4 v6, 0x1

    #@42
    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIIZ)V

    #@45
    .line 574
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@47
    .line 579
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    #@49
    const-string/jumbo v2, "RC4"

    #@4c
    const/16 v4, 0x10

    #@4e
    const/4 v5, 0x0

    #@4f
    const/4 v6, 0x1

    #@50
    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    #@53
    .line 578
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@55
    .line 581
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    #@57
    const-string/jumbo v2, "DES/CBC/NoPadding"

    #@5a
    const/16 v4, 0x8

    #@5c
    const/16 v5, 0x8

    #@5e
    const/4 v6, 0x1

    #@5f
    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    #@62
    .line 580
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@64
    .line 583
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    #@66
    const-string/jumbo v2, "DESede/CBC/NoPadding"

    #@69
    const/16 v4, 0x18

    #@6b
    const/16 v5, 0x8

    #@6d
    const/4 v6, 0x1

    #@6e
    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    #@71
    .line 582
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@73
    .line 585
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    #@75
    const-string/jumbo v2, "IDEA"

    #@78
    const/16 v4, 0x10

    #@7a
    const/16 v5, 0x8

    #@7c
    const/4 v6, 0x0

    #@7d
    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    #@80
    .line 584
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_IDEA:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@82
    .line 587
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    #@84
    const-string/jumbo v2, "AES/CBC/NoPadding"

    #@87
    const/16 v4, 0x10

    #@89
    const/16 v5, 0x10

    #@8b
    const/4 v6, 0x1

    #@8c
    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    #@8f
    .line 586
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@91
    .line 589
    new-instance v1, Lsun/security/ssl/CipherSuite$BulkCipher;

    #@93
    const-string/jumbo v2, "AES/CBC/NoPadding"

    #@96
    const/16 v4, 0x20

    #@98
    const/16 v5, 0x10

    #@9a
    const/4 v6, 0x1

    #@9b
    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$BulkCipher;-><init>(Ljava/lang/String;IIZ)V

    #@9e
    .line 588
    sput-object v1, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@a0
    .line 592
    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    #@a2
    const-string/jumbo v2, "NULL"

    #@a5
    const/4 v4, 0x0

    #@a6
    const/4 v5, 0x0

    #@a7
    const/4 v6, 0x0

    #@a8
    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    #@ab
    sput-object v1, Lsun/security/ssl/CipherSuite;->M_NULL:Lsun/security/ssl/CipherSuite$MacAlg;

    #@ad
    .line 593
    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    #@af
    const-string/jumbo v2, "MD5"

    #@b2
    const/16 v4, 0x10

    #@b4
    const/16 v5, 0x40

    #@b6
    const/16 v6, 0x9

    #@b8
    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    #@bb
    sput-object v1, Lsun/security/ssl/CipherSuite;->M_MD5:Lsun/security/ssl/CipherSuite$MacAlg;

    #@bd
    .line 594
    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    #@bf
    const-string/jumbo v2, "SHA"

    #@c2
    const/16 v4, 0x14

    #@c4
    const/16 v5, 0x40

    #@c6
    const/16 v6, 0x9

    #@c8
    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    #@cb
    sput-object v1, Lsun/security/ssl/CipherSuite;->M_SHA:Lsun/security/ssl/CipherSuite$MacAlg;

    #@cd
    .line 595
    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    #@cf
    const-string/jumbo v2, "SHA256"

    #@d2
    const/16 v4, 0x20

    #@d4
    const/16 v5, 0x40

    #@d6
    const/16 v6, 0x9

    #@d8
    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    #@db
    sput-object v1, Lsun/security/ssl/CipherSuite;->M_SHA256:Lsun/security/ssl/CipherSuite$MacAlg;

    #@dd
    .line 596
    new-instance v1, Lsun/security/ssl/CipherSuite$MacAlg;

    #@df
    const-string/jumbo v2, "SHA384"

    #@e2
    const/16 v4, 0x30

    #@e4
    const/16 v5, 0x80

    #@e6
    const/16 v6, 0x11

    #@e8
    invoke-direct {v1, v2, v4, v5, v6}, Lsun/security/ssl/CipherSuite$MacAlg;-><init>(Ljava/lang/String;III)V

    #@eb
    sput-object v1, Lsun/security/ssl/CipherSuite;->M_SHA384:Lsun/security/ssl/CipherSuite$MacAlg;

    #@ed
    .line 641
    new-instance v1, Ljava/util/HashMap;

    #@ef
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@f2
    sput-object v1, Lsun/security/ssl/CipherSuite;->idMap:Ljava/util/Map;

    #@f4
    .line 642
    new-instance v1, Ljava/util/HashMap;

    #@f6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@f9
    sput-object v1, Lsun/security/ssl/CipherSuite;->nameMap:Ljava/util/Map;

    #@fb
    .line 644
    const/16 v16, 0x0

    #@fd
    .line 645
    .local v16, "F":Z
    const/16 v17, 0x1

    #@ff
    .line 647
    .local v17, "T":Z
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    #@102
    move-result v1

    #@103
    if-nez v1, :cond_0

    #@105
    const/4 v14, 0x1

    #@106
    .line 882
    .local v14, "N":Z
    :goto_0
    const-string/jumbo v1, "SSL_NULL_WITH_NULL_NULL"

    #@109
    .line 883
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_NULL:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@10b
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@10d
    const/4 v2, 0x0

    #@10e
    const/4 v3, 0x1

    #@10f
    const/4 v6, 0x0

    #@110
    .line 882
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@113
    .line 900
    const v7, 0xffff

    #@116
    .line 901
    .local v7, "max":I
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@118
    iget v0, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@11a
    move/from16 v18, v0

    #@11c
    .line 902
    .local v18, "tls11":I
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@11e
    iget v8, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@120
    .line 906
    .local v8, "tls12":I
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    #@123
    .line 907
    const/16 v3, 0x257

    #@125
    .local v3, "p":I
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@127
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@129
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    #@12b
    const v2, 0xc024

    #@12e
    const/4 v6, 0x1

    #@12f
    .line 906
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@132
    .line 908
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    #@135
    .line 909
    add-int/lit8 v3, v3, -0x1

    #@137
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@139
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@13b
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    #@13d
    const v2, 0xc028

    #@140
    const/4 v6, 0x1

    #@141
    .line 908
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@144
    .line 910
    const-string/jumbo v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    #@147
    .line 911
    add-int/lit8 v3, v3, -0x1

    #@149
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@14b
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@14d
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@14f
    const/16 v2, 0x3d

    #@151
    const/4 v6, 0x1

    #@152
    .line 910
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@155
    .line 912
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    #@158
    .line 913
    add-int/lit8 v3, v3, -0x1

    #@15a
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@15c
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@15e
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    #@160
    const v2, 0xc026

    #@163
    const/4 v6, 0x1

    #@164
    .line 912
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@167
    .line 914
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    #@16a
    .line 915
    add-int/lit8 v3, v3, -0x1

    #@16c
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@16e
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@170
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    #@172
    const v2, 0xc02a

    #@175
    const/4 v6, 0x1

    #@176
    .line 914
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@179
    .line 916
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    #@17c
    .line 917
    add-int/lit8 v3, v3, -0x1

    #@17e
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@180
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@182
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@184
    const/16 v2, 0x6b

    #@186
    const/4 v6, 0x1

    #@187
    .line 916
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@18a
    .line 918
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    #@18d
    .line 919
    add-int/lit8 v3, v3, -0x1

    #@18f
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@191
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@193
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@195
    const/16 v2, 0x6a

    #@197
    const/4 v6, 0x1

    #@198
    .line 918
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@19b
    .line 921
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    #@19e
    .line 922
    add-int/lit8 v3, v3, -0x1

    #@1a0
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1a2
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@1a4
    const v2, 0xc00a

    #@1a7
    const/4 v6, 0x1

    #@1a8
    .line 921
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@1ab
    .line 923
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    #@1ae
    .line 924
    add-int/lit8 v3, v3, -0x1

    #@1b0
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1b2
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@1b4
    const v2, 0xc014

    #@1b7
    const/4 v6, 0x1

    #@1b8
    .line 923
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@1bb
    .line 925
    const-string/jumbo v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    #@1be
    .line 926
    add-int/lit8 v3, v3, -0x1

    #@1c0
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1c2
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@1c4
    const/16 v2, 0x35

    #@1c6
    const/4 v6, 0x1

    #@1c7
    .line 925
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@1ca
    .line 927
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    #@1cd
    .line 928
    add-int/lit8 v3, v3, -0x1

    #@1cf
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1d1
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@1d3
    const v2, 0xc005

    #@1d6
    const/4 v6, 0x1

    #@1d7
    .line 927
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@1da
    .line 929
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    #@1dd
    .line 930
    add-int/lit8 v3, v3, -0x1

    #@1df
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1e1
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@1e3
    const v2, 0xc00f

    #@1e6
    const/4 v6, 0x1

    #@1e7
    .line 929
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@1ea
    .line 931
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    #@1ed
    .line 932
    add-int/lit8 v3, v3, -0x1

    #@1ef
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@1f1
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@1f3
    const/16 v2, 0x39

    #@1f5
    const/4 v6, 0x1

    #@1f6
    .line 931
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@1f9
    .line 933
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    #@1fc
    .line 934
    add-int/lit8 v3, v3, -0x1

    #@1fe
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@200
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@202
    const/16 v2, 0x38

    #@204
    const/4 v6, 0x1

    #@205
    .line 933
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@208
    .line 936
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    #@20b
    .line 937
    add-int/lit8 v3, v3, -0x1

    #@20d
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@20f
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@211
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@213
    const v2, 0xc023

    #@216
    const/4 v6, 0x1

    #@217
    .line 936
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@21a
    .line 938
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    #@21d
    .line 939
    add-int/lit8 v3, v3, -0x1

    #@21f
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@221
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@223
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@225
    const v2, 0xc027

    #@228
    const/4 v6, 0x1

    #@229
    .line 938
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@22c
    .line 940
    const-string/jumbo v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    #@22f
    .line 941
    add-int/lit8 v3, v3, -0x1

    #@231
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@233
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@235
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@237
    const/16 v2, 0x3c

    #@239
    const/4 v6, 0x1

    #@23a
    .line 940
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@23d
    .line 942
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    #@240
    .line 943
    add-int/lit8 v3, v3, -0x1

    #@242
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@244
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@246
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@248
    const v2, 0xc025

    #@24b
    const/4 v6, 0x1

    #@24c
    .line 942
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@24f
    .line 944
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    #@252
    .line 945
    add-int/lit8 v3, v3, -0x1

    #@254
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@256
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@258
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@25a
    const v2, 0xc029

    #@25d
    const/4 v6, 0x1

    #@25e
    .line 944
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@261
    .line 946
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    #@264
    .line 947
    add-int/lit8 v3, v3, -0x1

    #@266
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@268
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@26a
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@26c
    const/16 v2, 0x67

    #@26e
    const/4 v6, 0x1

    #@26f
    .line 946
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@272
    .line 948
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    #@275
    .line 949
    add-int/lit8 v3, v3, -0x1

    #@277
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@279
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@27b
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@27d
    const/16 v2, 0x40

    #@27f
    const/4 v6, 0x1

    #@280
    .line 948
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@283
    .line 951
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    #@286
    .line 952
    add-int/lit8 v3, v3, -0x1

    #@288
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@28a
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@28c
    const v2, 0xc009

    #@28f
    const/4 v6, 0x1

    #@290
    .line 951
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@293
    .line 953
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    #@296
    .line 954
    add-int/lit8 v3, v3, -0x1

    #@298
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@29a
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@29c
    const v2, 0xc013

    #@29f
    const/4 v6, 0x1

    #@2a0
    .line 953
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@2a3
    .line 955
    const-string/jumbo v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    #@2a6
    .line 956
    add-int/lit8 v3, v3, -0x1

    #@2a8
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2aa
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@2ac
    const/16 v2, 0x2f

    #@2ae
    const/4 v6, 0x1

    #@2af
    .line 955
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@2b2
    .line 957
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    #@2b5
    .line 958
    add-int/lit8 v3, v3, -0x1

    #@2b7
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2b9
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@2bb
    const v2, 0xc004

    #@2be
    const/4 v6, 0x1

    #@2bf
    .line 957
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@2c2
    .line 959
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    #@2c5
    .line 960
    add-int/lit8 v3, v3, -0x1

    #@2c7
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2c9
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@2cb
    const v2, 0xc00e

    #@2ce
    const/4 v6, 0x1

    #@2cf
    .line 959
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@2d2
    .line 961
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    #@2d5
    .line 962
    add-int/lit8 v3, v3, -0x1

    #@2d7
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2d9
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@2db
    const/16 v2, 0x33

    #@2dd
    const/4 v6, 0x1

    #@2de
    .line 961
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@2e1
    .line 963
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    #@2e4
    .line 964
    add-int/lit8 v3, v3, -0x1

    #@2e6
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2e8
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@2ea
    const/16 v2, 0x32

    #@2ec
    const/4 v6, 0x1

    #@2ed
    .line 963
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@2f0
    .line 966
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    #@2f3
    .line 967
    add-int/lit8 v3, v3, -0x1

    #@2f5
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@2f7
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@2f9
    const v2, 0xc007

    #@2fc
    move v6, v14

    #@2fd
    .line 966
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@300
    .line 968
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    #@303
    .line 969
    add-int/lit8 v3, v3, -0x1

    #@305
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@307
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@309
    const v2, 0xc011

    #@30c
    move v6, v14

    #@30d
    .line 968
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@310
    .line 970
    const-string/jumbo v1, "SSL_RSA_WITH_RC4_128_SHA"

    #@313
    .line 971
    add-int/lit8 v3, v3, -0x1

    #@315
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@317
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@319
    const/4 v2, 0x5

    #@31a
    move v6, v14

    #@31b
    .line 970
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@31e
    .line 972
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    #@321
    .line 973
    add-int/lit8 v3, v3, -0x1

    #@323
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@325
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@327
    const v2, 0xc002

    #@32a
    move v6, v14

    #@32b
    .line 972
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@32e
    .line 974
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    #@331
    .line 975
    add-int/lit8 v3, v3, -0x1

    #@333
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@335
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@337
    const v2, 0xc00c

    #@33a
    move v6, v14

    #@33b
    .line 974
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@33e
    .line 977
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    #@341
    .line 978
    add-int/lit8 v3, v3, -0x1

    #@343
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@345
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@347
    const v2, 0xc008

    #@34a
    const/4 v6, 0x1

    #@34b
    .line 977
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@34e
    .line 979
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    #@351
    .line 980
    add-int/lit8 v3, v3, -0x1

    #@353
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@355
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@357
    const v2, 0xc012

    #@35a
    const/4 v6, 0x1

    #@35b
    .line 979
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@35e
    .line 981
    const-string/jumbo v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    #@361
    .line 982
    add-int/lit8 v3, v3, -0x1

    #@363
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@365
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@367
    const/16 v2, 0xa

    #@369
    const/4 v6, 0x1

    #@36a
    .line 981
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@36d
    .line 983
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    #@370
    .line 984
    add-int/lit8 v3, v3, -0x1

    #@372
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@374
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@376
    const v2, 0xc003

    #@379
    const/4 v6, 0x1

    #@37a
    .line 983
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@37d
    .line 985
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    #@380
    .line 986
    add-int/lit8 v3, v3, -0x1

    #@382
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@384
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@386
    const v2, 0xc00d

    #@389
    const/4 v6, 0x1

    #@38a
    .line 985
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@38d
    .line 987
    const-string/jumbo v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    #@390
    .line 988
    add-int/lit8 v3, v3, -0x1

    #@392
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@394
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@396
    const/16 v2, 0x16

    #@398
    const/4 v6, 0x1

    #@399
    .line 987
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@39c
    .line 989
    const-string/jumbo v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    #@39f
    .line 990
    add-int/lit8 v3, v3, -0x1

    #@3a1
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@3a3
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@3a5
    const/16 v2, 0x13

    #@3a7
    move v6, v14

    #@3a8
    .line 989
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@3ab
    .line 992
    const-string/jumbo v1, "SSL_RSA_WITH_RC4_128_MD5"

    #@3ae
    .line 993
    add-int/lit8 v3, v3, -0x1

    #@3b0
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@3b2
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@3b4
    const/4 v2, 0x4

    #@3b5
    move v6, v14

    #@3b6
    .line 992
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@3b9
    .line 996
    const-string/jumbo v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    #@3bc
    .line 997
    add-int/lit8 v3, v3, -0x1

    #@3be
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_SCSV:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@3c0
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@3c2
    const/16 v2, 0xff

    #@3c4
    const/4 v6, 0x1

    #@3c5
    .line 996
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@3c8
    .line 1020
    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    #@3cb
    .line 1021
    const/16 v3, 0x12b

    #@3cd
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@3cf
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@3d1
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@3d3
    const/16 v2, 0x6d

    #@3d5
    move v6, v14

    #@3d6
    .line 1020
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@3d9
    .line 1022
    const-string/jumbo v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    #@3dc
    .line 1023
    add-int/lit8 v3, v3, -0x1

    #@3de
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@3e0
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@3e2
    const v2, 0xc019

    #@3e5
    const/4 v6, 0x1

    #@3e6
    .line 1022
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@3e9
    .line 1024
    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    #@3ec
    .line 1025
    add-int/lit8 v3, v3, -0x1

    #@3ee
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@3f0
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_256:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@3f2
    const/16 v2, 0x3a

    #@3f4
    move v6, v14

    #@3f5
    .line 1024
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@3f8
    .line 1027
    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    #@3fb
    .line 1028
    add-int/lit8 v3, v3, -0x1

    #@3fd
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@3ff
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@401
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@403
    const/16 v2, 0x6c

    #@405
    move v6, v14

    #@406
    .line 1027
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@409
    .line 1029
    const-string/jumbo v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    #@40c
    .line 1030
    add-int/lit8 v3, v3, -0x1

    #@40e
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@410
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@412
    const v2, 0xc018

    #@415
    const/4 v6, 0x1

    #@416
    .line 1029
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@419
    .line 1031
    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    #@41c
    .line 1032
    add-int/lit8 v3, v3, -0x1

    #@41e
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@420
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_AES_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@422
    const/16 v2, 0x34

    #@424
    move v6, v14

    #@425
    .line 1031
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@428
    .line 1034
    const-string/jumbo v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    #@42b
    .line 1035
    add-int/lit8 v3, v3, -0x1

    #@42d
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@42f
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@431
    const v2, 0xc016

    #@434
    move v6, v14

    #@435
    .line 1034
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@438
    .line 1036
    const-string/jumbo v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    #@43b
    .line 1037
    add-int/lit8 v3, v3, -0x1

    #@43d
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@43f
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@441
    const/16 v2, 0x18

    #@443
    move v6, v14

    #@444
    .line 1036
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@447
    .line 1039
    const-string/jumbo v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    #@44a
    .line 1040
    add-int/lit8 v3, v3, -0x1

    #@44c
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@44e
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@450
    const v2, 0xc017

    #@453
    const/4 v6, 0x1

    #@454
    .line 1039
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@457
    .line 1041
    const-string/jumbo v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    #@45a
    .line 1042
    add-int/lit8 v3, v3, -0x1

    #@45c
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@45e
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@460
    const/16 v2, 0x1b

    #@462
    move v6, v14

    #@463
    .line 1041
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@466
    .line 1044
    const-string/jumbo v1, "TLS_RSA_WITH_NULL_SHA256"

    #@469
    .line 1045
    add-int/lit8 v3, v3, -0x1

    #@46b
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@46d
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@46f
    sget-object v9, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@471
    const/16 v2, 0x3b

    #@473
    move v6, v14

    #@474
    .line 1044
    invoke-static/range {v1 .. v9}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@477
    .line 1046
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    #@47a
    .line 1047
    add-int/lit8 v3, v3, -0x1

    #@47c
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@47e
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@480
    const v2, 0xc006

    #@483
    move v6, v14

    #@484
    .line 1046
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@487
    .line 1048
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    #@48a
    .line 1049
    add-int/lit8 v3, v3, -0x1

    #@48c
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@48e
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@490
    const v2, 0xc010

    #@493
    move v6, v14

    #@494
    .line 1048
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@497
    .line 1050
    const-string/jumbo v1, "SSL_RSA_WITH_NULL_SHA"

    #@49a
    .line 1051
    add-int/lit8 v3, v3, -0x1

    #@49c
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@49e
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@4a0
    const/4 v2, 0x2

    #@4a1
    move v6, v14

    #@4a2
    .line 1050
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@4a5
    .line 1052
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    #@4a8
    .line 1053
    add-int/lit8 v3, v3, -0x1

    #@4aa
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4ac
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@4ae
    const v2, 0xc001

    #@4b1
    move v6, v14

    #@4b2
    .line 1052
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@4b5
    .line 1054
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    #@4b8
    .line 1055
    add-int/lit8 v3, v3, -0x1

    #@4ba
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4bc
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@4be
    const v2, 0xc00b

    #@4c1
    move v6, v14

    #@4c2
    .line 1054
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@4c5
    .line 1056
    const-string/jumbo v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    #@4c8
    .line 1057
    add-int/lit8 v3, v3, -0x1

    #@4ca
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4cc
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@4ce
    const v2, 0xc015

    #@4d1
    move v6, v14

    #@4d2
    .line 1056
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@4d5
    .line 1058
    const-string/jumbo v1, "SSL_RSA_WITH_NULL_MD5"

    #@4d8
    .line 1059
    add-int/lit8 v3, v3, -0x1

    #@4da
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4dc
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_NULL:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@4de
    const/4 v2, 0x1

    #@4df
    move v6, v14

    #@4e0
    .line 1058
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@4e3
    .line 1062
    const-string/jumbo v9, "SSL_RSA_WITH_DES_CBC_SHA"

    #@4e6
    .line 1063
    add-int/lit8 v3, v3, -0x1

    #@4e8
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4ea
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@4ec
    const/16 v10, 0x9

    #@4ee
    move v11, v3

    #@4ef
    move v15, v8

    #@4f0
    .line 1062
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@4f3
    .line 1064
    const-string/jumbo v9, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    #@4f6
    .line 1065
    add-int/lit8 v3, v3, -0x1

    #@4f8
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@4fa
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@4fc
    const/16 v10, 0x15

    #@4fe
    move v11, v3

    #@4ff
    move v15, v8

    #@500
    .line 1064
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@503
    .line 1066
    const-string/jumbo v9, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    #@506
    .line 1067
    add-int/lit8 v3, v3, -0x1

    #@508
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@50a
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@50c
    const/16 v10, 0x12

    #@50e
    move v11, v3

    #@50f
    move v15, v8

    #@510
    .line 1066
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@513
    .line 1068
    const-string/jumbo v9, "SSL_DH_anon_WITH_DES_CBC_SHA"

    #@516
    .line 1069
    add-int/lit8 v3, v3, -0x1

    #@518
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@51a
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@51c
    const/16 v10, 0x1a

    #@51e
    move v11, v3

    #@51f
    move v15, v8

    #@520
    .line 1068
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@523
    .line 1072
    const-string/jumbo v9, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    #@526
    .line 1073
    add-int/lit8 v3, v3, -0x1

    #@528
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@52a
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@52c
    const/4 v10, 0x3

    #@52d
    move v11, v3

    #@52e
    move/from16 v15, v18

    #@530
    .line 1072
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@533
    .line 1074
    const-string/jumbo v9, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    #@536
    .line 1075
    add-int/lit8 v3, v3, -0x1

    #@538
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@53a
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@53c
    const/16 v10, 0x17

    #@53e
    move v11, v3

    #@53f
    move/from16 v15, v18

    #@541
    .line 1074
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@544
    .line 1077
    const-string/jumbo v9, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    #@547
    .line 1078
    add-int/lit8 v3, v3, -0x1

    #@549
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@54b
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@54d
    const/16 v10, 0x8

    #@54f
    move v11, v3

    #@550
    move/from16 v15, v18

    #@552
    .line 1077
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@555
    .line 1079
    const-string/jumbo v9, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    #@558
    .line 1080
    add-int/lit8 v3, v3, -0x1

    #@55a
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@55c
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@55e
    const/16 v10, 0x14

    #@560
    move v11, v3

    #@561
    move/from16 v15, v18

    #@563
    .line 1079
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@566
    .line 1081
    const-string/jumbo v9, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    #@569
    .line 1082
    add-int/lit8 v3, v3, -0x1

    #@56b
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@56d
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@56f
    const/16 v10, 0x11

    #@571
    move v11, v3

    #@572
    move/from16 v15, v18

    #@574
    .line 1081
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@577
    .line 1083
    const-string/jumbo v9, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    #@57a
    .line 1084
    add-int/lit8 v3, v3, -0x1

    #@57c
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@57e
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@580
    const/16 v10, 0x19

    #@582
    move v11, v3

    #@583
    move/from16 v15, v18

    #@585
    .line 1083
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@588
    .line 1087
    const-string/jumbo v1, "TLS_KRB5_WITH_RC4_128_SHA"

    #@58b
    .line 1088
    add-int/lit8 v3, v3, -0x1

    #@58d
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@58f
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@591
    const/16 v2, 0x20

    #@593
    move v6, v14

    #@594
    .line 1087
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@597
    .line 1089
    const-string/jumbo v1, "TLS_KRB5_WITH_RC4_128_MD5"

    #@59a
    .line 1090
    add-int/lit8 v3, v3, -0x1

    #@59c
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@59e
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_RC4_128:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@5a0
    const/16 v2, 0x24

    #@5a2
    move v6, v14

    #@5a3
    .line 1089
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@5a6
    .line 1091
    const-string/jumbo v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    #@5a9
    .line 1092
    add-int/lit8 v3, v3, -0x1

    #@5ab
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5ad
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@5af
    const/16 v2, 0x1f

    #@5b1
    move v6, v14

    #@5b2
    .line 1091
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@5b5
    .line 1093
    const-string/jumbo v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    #@5b8
    .line 1094
    add-int/lit8 v3, v3, -0x1

    #@5ba
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5bc
    sget-object v5, Lsun/security/ssl/CipherSuite;->B_3DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@5be
    const/16 v2, 0x23

    #@5c0
    move v6, v14

    #@5c1
    .line 1093
    invoke-static/range {v1 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V

    #@5c4
    .line 1095
    const-string/jumbo v9, "TLS_KRB5_WITH_DES_CBC_SHA"

    #@5c7
    .line 1096
    add-int/lit8 v3, v3, -0x1

    #@5c9
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5cb
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@5cd
    const/16 v10, 0x1e

    #@5cf
    move v11, v3

    #@5d0
    move v15, v8

    #@5d1
    .line 1095
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@5d4
    .line 1097
    const-string/jumbo v9, "TLS_KRB5_WITH_DES_CBC_MD5"

    #@5d7
    .line 1098
    add-int/lit8 v3, v3, -0x1

    #@5d9
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5db
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@5dd
    const/16 v10, 0x22

    #@5df
    move v11, v3

    #@5e0
    move v15, v8

    #@5e1
    .line 1097
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@5e4
    .line 1099
    const-string/jumbo v9, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    #@5e7
    .line 1100
    add-int/lit8 v3, v3, -0x1

    #@5e9
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5eb
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@5ed
    const/16 v10, 0x28

    #@5ef
    move v11, v3

    #@5f0
    move/from16 v15, v18

    #@5f2
    .line 1099
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@5f5
    .line 1101
    const-string/jumbo v9, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    #@5f8
    .line 1102
    add-int/lit8 v3, v3, -0x1

    #@5fa
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@5fc
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_RC4_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@5fe
    const/16 v10, 0x2b

    #@600
    move v11, v3

    #@601
    move/from16 v15, v18

    #@603
    .line 1101
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@606
    .line 1103
    const-string/jumbo v9, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    #@609
    .line 1104
    add-int/lit8 v3, v3, -0x1

    #@60b
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@60d
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@60f
    const/16 v10, 0x26

    #@611
    move v11, v3

    #@612
    move/from16 v15, v18

    #@614
    .line 1103
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@617
    .line 1105
    const-string/jumbo v9, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    #@61a
    .line 1106
    add-int/lit8 v3, v3, -0x1

    #@61c
    sget-object v12, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@61e
    sget-object v13, Lsun/security/ssl/CipherSuite;->B_DES_40:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@620
    const/16 v10, 0x29

    #@622
    move v11, v3

    #@623
    move/from16 v15, v18

    #@625
    .line 1105
    invoke-static/range {v9 .. v15}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@628
    .line 1124
    const-string/jumbo v1, "SSL_RSA_EXPORT_WITH_RC2_CBC_40_MD5"

    #@62b
    const/4 v2, 0x6

    #@62c
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@62f
    .line 1125
    const-string/jumbo v1, "SSL_RSA_WITH_IDEA_CBC_SHA"

    #@632
    const/4 v2, 0x7

    #@633
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@636
    .line 1126
    const-string/jumbo v1, "SSL_DH_DSS_EXPORT_WITH_DES40_CBC_SHA"

    #@639
    const/16 v2, 0xb

    #@63b
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@63e
    .line 1127
    const-string/jumbo v1, "SSL_DH_DSS_WITH_DES_CBC_SHA"

    #@641
    const/16 v2, 0xc

    #@643
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@646
    .line 1128
    const-string/jumbo v1, "SSL_DH_DSS_WITH_3DES_EDE_CBC_SHA"

    #@649
    const/16 v2, 0xd

    #@64b
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@64e
    .line 1129
    const-string/jumbo v1, "SSL_DH_RSA_EXPORT_WITH_DES40_CBC_SHA"

    #@651
    const/16 v2, 0xe

    #@653
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@656
    .line 1130
    const-string/jumbo v1, "SSL_DH_RSA_WITH_DES_CBC_SHA"

    #@659
    const/16 v2, 0xf

    #@65b
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@65e
    .line 1131
    const-string/jumbo v1, "SSL_DH_RSA_WITH_3DES_EDE_CBC_SHA"

    #@661
    const/16 v2, 0x10

    #@663
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@666
    .line 1134
    const-string/jumbo v1, "SSL_FORTEZZA_DMS_WITH_NULL_SHA"

    #@669
    const/16 v2, 0x1c

    #@66b
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@66e
    .line 1135
    const-string/jumbo v1, "SSL_FORTEZZA_DMS_WITH_FORTEZZA_CBC_SHA"

    #@671
    const/16 v2, 0x1d

    #@673
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@676
    .line 1138
    const-string/jumbo v1, "SSL_RSA_EXPORT1024_WITH_DES_CBC_SHA"

    #@679
    const/16 v2, 0x62

    #@67b
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@67e
    .line 1139
    const-string/jumbo v1, "SSL_DHE_DSS_EXPORT1024_WITH_DES_CBC_SHA"

    #@681
    const/16 v2, 0x63

    #@683
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@686
    .line 1140
    const-string/jumbo v1, "SSL_RSA_EXPORT1024_WITH_RC4_56_SHA"

    #@689
    const/16 v2, 0x64

    #@68b
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@68e
    .line 1141
    const-string/jumbo v1, "SSL_DHE_DSS_EXPORT1024_WITH_RC4_56_SHA"

    #@691
    const/16 v2, 0x65

    #@693
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@696
    .line 1142
    const-string/jumbo v1, "SSL_DHE_DSS_WITH_RC4_128_SHA"

    #@699
    const/16 v2, 0x66

    #@69b
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@69e
    .line 1146
    const-string/jumbo v1, "NETSCAPE_RSA_FIPS_WITH_3DES_EDE_CBC_SHA"

    #@6a1
    const v2, 0xffe0

    #@6a4
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@6a7
    .line 1147
    const-string/jumbo v1, "NETSCAPE_RSA_FIPS_WITH_DES_CBC_SHA"

    #@6aa
    const v2, 0xffe1

    #@6ad
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@6b0
    .line 1148
    const-string/jumbo v1, "SSL_RSA_FIPS_WITH_DES_CBC_SHA"

    #@6b3
    const v2, 0xfefe

    #@6b6
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@6b9
    .line 1149
    const-string/jumbo v1, "SSL_RSA_FIPS_WITH_3DES_EDE_CBC_SHA"

    #@6bc
    const v2, 0xfeff

    #@6bf
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@6c2
    .line 1152
    const-string/jumbo v1, "TLS_KRB5_WITH_IDEA_CBC_SHA"

    #@6c5
    const/16 v2, 0x21

    #@6c7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@6ca
    .line 1153
    const-string/jumbo v1, "TLS_KRB5_WITH_IDEA_CBC_MD5"

    #@6cd
    const/16 v2, 0x25

    #@6cf
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@6d2
    .line 1154
    const-string/jumbo v1, "TLS_KRB5_EXPORT_WITH_RC2_CBC_40_SHA"

    #@6d5
    const/16 v2, 0x27

    #@6d7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@6da
    .line 1155
    const-string/jumbo v1, "TLS_KRB5_EXPORT_WITH_RC2_CBC_40_MD5"

    #@6dd
    const/16 v2, 0x2a

    #@6df
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@6e2
    .line 1158
    const-string/jumbo v1, "TLS_RSA_WITH_SEED_CBC_SHA"

    #@6e5
    const/16 v2, 0x96

    #@6e7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@6ea
    .line 1159
    const-string/jumbo v1, "TLS_DH_DSS_WITH_SEED_CBC_SHA"

    #@6ed
    const/16 v2, 0x97

    #@6ef
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@6f2
    .line 1160
    const-string/jumbo v1, "TLS_DH_RSA_WITH_SEED_CBC_SHA"

    #@6f5
    const/16 v2, 0x98

    #@6f7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@6fa
    .line 1161
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_SEED_CBC_SHA"

    #@6fd
    const/16 v2, 0x99

    #@6ff
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@702
    .line 1162
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_SEED_CBC_SHA"

    #@705
    const/16 v2, 0x9a

    #@707
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@70a
    .line 1163
    const-string/jumbo v1, "TLS_DH_anon_WITH_SEED_CBC_SHA"

    #@70d
    const/16 v2, 0x9b

    #@70f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@712
    .line 1166
    const-string/jumbo v1, "TLS_PSK_WITH_RC4_128_SHA"

    #@715
    const/16 v2, 0x8a

    #@717
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@71a
    .line 1167
    const-string/jumbo v1, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    #@71d
    const/16 v2, 0x8b

    #@71f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@722
    .line 1168
    const-string/jumbo v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    #@725
    const/16 v2, 0x8c

    #@727
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@72a
    .line 1169
    const-string/jumbo v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    #@72d
    const/16 v2, 0x8d

    #@72f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@732
    .line 1170
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_RC4_128_SHA"

    #@735
    const/16 v2, 0x8e

    #@737
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@73a
    .line 1171
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA"

    #@73d
    const/16 v2, 0x8f

    #@73f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@742
    .line 1172
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_128_CBC_SHA"

    #@745
    const/16 v2, 0x90

    #@747
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@74a
    .line 1173
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_256_CBC_SHA"

    #@74d
    const/16 v2, 0x91

    #@74f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@752
    .line 1174
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_RC4_128_SHA"

    #@755
    const/16 v2, 0x92

    #@757
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@75a
    .line 1175
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA"

    #@75d
    const/16 v2, 0x93

    #@75f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@762
    .line 1176
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_128_CBC_SHA"

    #@765
    const/16 v2, 0x94

    #@767
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@76a
    .line 1177
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_256_CBC_SHA"

    #@76d
    const/16 v2, 0x95

    #@76f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@772
    .line 1180
    const-string/jumbo v1, "TLS_PSK_WITH_NULL_SHA"

    #@775
    const/16 v2, 0x2c

    #@777
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@77a
    .line 1181
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_NULL_SHA"

    #@77d
    const/16 v2, 0x2d

    #@77f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@782
    .line 1182
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_NULL_SHA"

    #@785
    const/16 v2, 0x2e

    #@787
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@78a
    .line 1185
    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_128_CBC_SHA"

    #@78d
    const/16 v2, 0x30

    #@78f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@792
    .line 1186
    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_128_CBC_SHA"

    #@795
    const/16 v2, 0x31

    #@797
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@79a
    .line 1187
    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_256_CBC_SHA"

    #@79d
    const/16 v2, 0x36

    #@79f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@7a2
    .line 1188
    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_256_CBC_SHA"

    #@7a5
    const/16 v2, 0x37

    #@7a7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@7aa
    .line 1189
    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_128_CBC_SHA256"

    #@7ad
    const/16 v2, 0x3e

    #@7af
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@7b2
    .line 1190
    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_128_CBC_SHA256"

    #@7b5
    const/16 v2, 0x3f

    #@7b7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@7ba
    .line 1191
    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_256_CBC_SHA256"

    #@7bd
    const/16 v2, 0x68

    #@7bf
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@7c2
    .line 1192
    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_256_CBC_SHA256"

    #@7c5
    const/16 v2, 0x69

    #@7c7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@7ca
    .line 1195
    const-string/jumbo v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    #@7cd
    const/16 v2, 0x9c

    #@7cf
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@7d2
    .line 1196
    const-string/jumbo v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    #@7d5
    const/16 v2, 0x9d

    #@7d7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@7da
    .line 1197
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    #@7dd
    const/16 v2, 0x9e

    #@7df
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@7e2
    .line 1198
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    #@7e5
    const/16 v2, 0x9f

    #@7e7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@7ea
    .line 1199
    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_128_GCM_SHA256"

    #@7ed
    const/16 v2, 0xa0

    #@7ef
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@7f2
    .line 1200
    const-string/jumbo v1, "TLS_DH_RSA_WITH_AES_256_GCM_SHA384"

    #@7f5
    const/16 v2, 0xa1

    #@7f7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@7fa
    .line 1201
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    #@7fd
    const/16 v2, 0xa2

    #@7ff
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@802
    .line 1202
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    #@805
    const/16 v2, 0xa3

    #@807
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@80a
    .line 1203
    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_128_GCM_SHA256"

    #@80d
    const/16 v2, 0xa4

    #@80f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@812
    .line 1204
    const-string/jumbo v1, "TLS_DH_DSS_WITH_AES_256_GCM_SHA384"

    #@815
    const/16 v2, 0xa5

    #@817
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@81a
    .line 1205
    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    #@81d
    const/16 v2, 0xa6

    #@81f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@822
    .line 1206
    const-string/jumbo v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    #@825
    const/16 v2, 0xa7

    #@827
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@82a
    .line 1209
    const-string/jumbo v1, "TLS_PSK_WITH_AES_128_GCM_SHA256"

    #@82d
    const/16 v2, 0xa8

    #@82f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@832
    .line 1210
    const-string/jumbo v1, "TLS_PSK_WITH_AES_256_GCM_SHA384"

    #@835
    const/16 v2, 0xa9

    #@837
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@83a
    .line 1211
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_128_GCM_SHA256"

    #@83d
    const/16 v2, 0xaa

    #@83f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@842
    .line 1212
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_256_GCM_SHA384"

    #@845
    const/16 v2, 0xab

    #@847
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@84a
    .line 1213
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_128_GCM_SHA256"

    #@84d
    const/16 v2, 0xac

    #@84f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@852
    .line 1214
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_256_GCM_SHA384"

    #@855
    const/16 v2, 0xad

    #@857
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@85a
    .line 1215
    const-string/jumbo v1, "TLS_PSK_WITH_AES_128_CBC_SHA256"

    #@85d
    const/16 v2, 0xae

    #@85f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@862
    .line 1216
    const-string/jumbo v1, "TLS_PSK_WITH_AES_256_CBC_SHA384"

    #@865
    const/16 v2, 0xaf

    #@867
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@86a
    .line 1217
    const-string/jumbo v1, "TLS_PSK_WITH_NULL_SHA256"

    #@86d
    const/16 v2, 0xb0

    #@86f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@872
    .line 1218
    const-string/jumbo v1, "TLS_PSK_WITH_NULL_SHA384"

    #@875
    const/16 v2, 0xb1

    #@877
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@87a
    .line 1219
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_128_CBC_SHA256"

    #@87d
    const/16 v2, 0xb2

    #@87f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@882
    .line 1220
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_AES_256_CBC_SHA384"

    #@885
    const/16 v2, 0xb3

    #@887
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@88a
    .line 1221
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_NULL_SHA256"

    #@88d
    const/16 v2, 0xb4

    #@88f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@892
    .line 1222
    const-string/jumbo v1, "TLS_DHE_PSK_WITH_NULL_SHA384"

    #@895
    const/16 v2, 0xb5

    #@897
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@89a
    .line 1223
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_128_CBC_SHA256"

    #@89d
    const/16 v2, 0xb6

    #@89f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@8a2
    .line 1224
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_AES_256_CBC_SHA384"

    #@8a5
    const/16 v2, 0xb7

    #@8a7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@8aa
    .line 1225
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_NULL_SHA256"

    #@8ad
    const/16 v2, 0xb8

    #@8af
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@8b2
    .line 1226
    const-string/jumbo v1, "TLS_RSA_PSK_WITH_NULL_SHA384"

    #@8b5
    const/16 v2, 0xb9

    #@8b7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@8ba
    .line 1229
    const-string/jumbo v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    #@8bd
    const/16 v2, 0x41

    #@8bf
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@8c2
    .line 1230
    const-string/jumbo v1, "TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA"

    #@8c5
    const/16 v2, 0x42

    #@8c7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@8ca
    .line 1231
    const-string/jumbo v1, "TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA"

    #@8cd
    const/16 v2, 0x43

    #@8cf
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@8d2
    .line 1232
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    #@8d5
    const/16 v2, 0x44

    #@8d7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@8da
    .line 1233
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    #@8dd
    const/16 v2, 0x45

    #@8df
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@8e2
    .line 1234
    const-string/jumbo v1, "TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA"

    #@8e5
    const/16 v2, 0x46

    #@8e7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@8ea
    .line 1235
    const-string/jumbo v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    #@8ed
    const/16 v2, 0x84

    #@8ef
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@8f2
    .line 1236
    const-string/jumbo v1, "TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA"

    #@8f5
    const/16 v2, 0x85

    #@8f7
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@8fa
    .line 1237
    const-string/jumbo v1, "TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA"

    #@8fd
    const/16 v2, 0x86

    #@8ff
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@902
    .line 1238
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    #@905
    const/16 v2, 0x87

    #@907
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@90a
    .line 1239
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    #@90d
    const/16 v2, 0x88

    #@90f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@912
    .line 1240
    const-string/jumbo v1, "TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA"

    #@915
    const/16 v2, 0x89

    #@917
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@91a
    .line 1241
    const-string/jumbo v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    #@91d
    const/16 v2, 0xba

    #@91f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@922
    .line 1242
    const-string/jumbo v1, "TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256"

    #@925
    const/16 v2, 0xbb

    #@927
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@92a
    .line 1243
    const-string/jumbo v1, "TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    #@92d
    const/16 v2, 0xbc

    #@92f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@932
    .line 1244
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256"

    #@935
    const/16 v2, 0xbd

    #@937
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@93a
    .line 1245
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256"

    #@93d
    const/16 v2, 0xbe

    #@93f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@942
    .line 1246
    const-string/jumbo v1, "TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256"

    #@945
    const/16 v2, 0xbf

    #@947
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@94a
    .line 1247
    const-string/jumbo v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA256"

    #@94d
    const/16 v2, 0xc0

    #@94f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@952
    .line 1248
    const-string/jumbo v1, "TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256"

    #@955
    const/16 v2, 0xc1

    #@957
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@95a
    .line 1249
    const-string/jumbo v1, "TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256"

    #@95d
    const/16 v2, 0xc2

    #@95f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@962
    .line 1250
    const-string/jumbo v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256"

    #@965
    const/16 v2, 0xc3

    #@967
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@96a
    .line 1251
    const-string/jumbo v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256"

    #@96d
    const/16 v2, 0xc4

    #@96f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@972
    .line 1252
    const-string/jumbo v1, "TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256"

    #@975
    const/16 v2, 0xc5

    #@977
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@97a
    .line 1255
    const-string/jumbo v1, "TLS_SRP_SHA_WITH_3DES_EDE_CBC_SHA"

    #@97d
    const v2, 0xc01a

    #@980
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@983
    .line 1256
    const-string/jumbo v1, "TLS_SRP_SHA_RSA_WITH_3DES_EDE_CBC_SHA"

    #@986
    const v2, 0xc01b

    #@989
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@98c
    .line 1257
    const-string/jumbo v1, "TLS_SRP_SHA_DSS_WITH_3DES_EDE_CBC_SHA"

    #@98f
    const v2, 0xc01c

    #@992
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@995
    .line 1258
    const-string/jumbo v1, "TLS_SRP_SHA_WITH_AES_128_CBC_SHA"

    #@998
    const v2, 0xc01d

    #@99b
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@99e
    .line 1259
    const-string/jumbo v1, "TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA"

    #@9a1
    const v2, 0xc01e

    #@9a4
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@9a7
    .line 1260
    const-string/jumbo v1, "TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA"

    #@9aa
    const v2, 0xc01f

    #@9ad
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@9b0
    .line 1261
    const-string/jumbo v1, "TLS_SRP_SHA_WITH_AES_256_CBC_SHA"

    #@9b3
    const v2, 0xc020

    #@9b6
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@9b9
    .line 1262
    const-string/jumbo v1, "TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA"

    #@9bc
    const v2, 0xc021

    #@9bf
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@9c2
    .line 1263
    const-string/jumbo v1, "TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA"

    #@9c5
    const v2, 0xc022

    #@9c8
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@9cb
    .line 1266
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    #@9ce
    const v2, 0xc02b

    #@9d1
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@9d4
    .line 1267
    const-string/jumbo v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    #@9d7
    const v2, 0xc02c

    #@9da
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@9dd
    .line 1268
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    #@9e0
    const v2, 0xc02d

    #@9e3
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@9e6
    .line 1269
    const-string/jumbo v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    #@9e9
    const v2, 0xc02e

    #@9ec
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@9ef
    .line 1270
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    #@9f2
    const v2, 0xc02f

    #@9f5
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@9f8
    .line 1271
    const-string/jumbo v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    #@9fb
    const v2, 0xc030

    #@9fe
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@a01
    .line 1272
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    #@a04
    const v2, 0xc031

    #@a07
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@a0a
    .line 1273
    const-string/jumbo v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    #@a0d
    const v2, 0xc032

    #@a10
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@a13
    .line 1276
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_RC4_128_SHA"

    #@a16
    const v2, 0xc033

    #@a19
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@a1c
    .line 1277
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_3DES_EDE_CBC_SHA"

    #@a1f
    const v2, 0xc034

    #@a22
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@a25
    .line 1278
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    #@a28
    const v2, 0xc035

    #@a2b
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@a2e
    .line 1279
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    #@a31
    const v2, 0xc036

    #@a34
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@a37
    .line 1280
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256"

    #@a3a
    const v2, 0xc037

    #@a3d
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@a40
    .line 1281
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA384"

    #@a43
    const v2, 0xc038

    #@a46
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@a49
    .line 1282
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_NULL_SHA"

    #@a4c
    const v2, 0xc039

    #@a4f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@a52
    .line 1283
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_NULL_SHA256"

    #@a55
    const v2, 0xc03a

    #@a58
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@a5b
    .line 1284
    const-string/jumbo v1, "TLS_ECDHE_PSK_WITH_NULL_SHA384"

    #@a5e
    const v2, 0xc03b

    #@a61
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;I)V

    #@a64
    .line 1288
    const/4 v1, 0x0

    #@a65
    const/4 v2, 0x0

    #@a66
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->valueOf(II)Lsun/security/ssl/CipherSuite;

    #@a69
    move-result-object v1

    #@a6a
    sput-object v1, Lsun/security/ssl/CipherSuite;->C_NULL:Lsun/security/ssl/CipherSuite;

    #@a6c
    .line 1291
    const/4 v1, 0x0

    #@a6d
    const/16 v2, 0xff

    #@a6f
    invoke-static {v1, v2}, Lsun/security/ssl/CipherSuite;->valueOf(II)Lsun/security/ssl/CipherSuite;

    #@a72
    move-result-object v1

    #@a73
    sput-object v1, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    #@a75
    .line 68
    return-void

    #@a76
    .line 647
    .end local v3    # "p":I
    .end local v7    # "max":I
    .end local v8    # "tls12":I
    .end local v14    # "N":Z
    .end local v18    # "tls11":I
    :cond_0
    const/4 v14, 0x0

    #@a77
    .restart local v14    # "N":Z
    goto/16 :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 167
    iput-object p1, p0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    #@7
    .line 168
    iput p2, p0, Lsun/security/ssl/CipherSuite;->id:I

    #@9
    .line 169
    iput-boolean v1, p0, Lsun/security/ssl/CipherSuite;->allowed:Z

    #@b
    .line 171
    iput v1, p0, Lsun/security/ssl/CipherSuite;->priority:I

    #@d
    .line 172
    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@f
    .line 173
    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@11
    .line 174
    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@13
    .line 175
    iput-boolean v1, p0, Lsun/security/ssl/CipherSuite;->exportable:Z

    #@15
    .line 176
    const v0, 0xffff

    #@18
    iput v0, p0, Lsun/security/ssl/CipherSuite;->obsoleted:I

    #@1a
    .line 177
    iput v1, p0, Lsun/security/ssl/CipherSuite;->supported:I

    #@1c
    .line 178
    sget-object v0, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    #@1e
    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    #@20
    .line 166
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "priority"    # I
    .param p4, "keyExchange"    # Lsun/security/ssl/CipherSuite$KeyExchange;
    .param p5, "cipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .param p6, "allowed"    # Z
    .param p7, "obsoleted"    # I
    .param p8, "supported"    # I
    .param p9, "prfAlg"    # Lsun/security/ssl/CipherSuite$PRF;

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 132
    iput-object p1, p0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    #@5
    .line 133
    iput p2, p0, Lsun/security/ssl/CipherSuite;->id:I

    #@7
    .line 134
    iput p3, p0, Lsun/security/ssl/CipherSuite;->priority:I

    #@9
    .line 135
    iput-object p4, p0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@b
    .line 136
    iput-object p5, p0, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@d
    .line 137
    iget-boolean v0, p5, Lsun/security/ssl/CipherSuite$BulkCipher;->exportable:Z

    #@f
    iput-boolean v0, p0, Lsun/security/ssl/CipherSuite;->exportable:Z

    #@11
    .line 138
    const-string/jumbo v0, "_MD5"

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 139
    sget-object v0, Lsun/security/ssl/CipherSuite;->M_MD5:Lsun/security/ssl/CipherSuite$MacAlg;

    #@1c
    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@1e
    .line 155
    :goto_0
    iget-boolean v0, p4, Lsun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    #@20
    and-int/2addr p6, v0

    #@21
    .line 156
    iget-boolean v0, p5, Lsun/security/ssl/CipherSuite$BulkCipher;->allowed:Z

    #@23
    and-int/2addr p6, v0

    #@24
    .line 157
    iput-boolean p6, p0, Lsun/security/ssl/CipherSuite;->allowed:Z

    #@26
    .line 158
    iput p7, p0, Lsun/security/ssl/CipherSuite;->obsoleted:I

    #@28
    .line 159
    iput p8, p0, Lsun/security/ssl/CipherSuite;->supported:I

    #@2a
    .line 160
    iput-object p9, p0, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    #@2c
    .line 131
    return-void

    #@2d
    .line 140
    :cond_0
    const-string/jumbo v0, "_SHA"

    #@30
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_1

    #@36
    .line 141
    sget-object v0, Lsun/security/ssl/CipherSuite;->M_SHA:Lsun/security/ssl/CipherSuite$MacAlg;

    #@38
    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@3a
    goto :goto_0

    #@3b
    .line 142
    :cond_1
    const-string/jumbo v0, "_SHA256"

    #@3e
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_2

    #@44
    .line 143
    sget-object v0, Lsun/security/ssl/CipherSuite;->M_SHA256:Lsun/security/ssl/CipherSuite$MacAlg;

    #@46
    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@48
    goto :goto_0

    #@49
    .line 144
    :cond_2
    const-string/jumbo v0, "_SHA384"

    #@4c
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_3

    #@52
    .line 145
    sget-object v0, Lsun/security/ssl/CipherSuite;->M_SHA384:Lsun/security/ssl/CipherSuite$MacAlg;

    #@54
    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@56
    goto :goto_0

    #@57
    .line 146
    :cond_3
    const-string/jumbo v0, "_NULL"

    #@5a
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@5d
    move-result v0

    #@5e
    if-eqz v0, :cond_4

    #@60
    .line 147
    sget-object v0, Lsun/security/ssl/CipherSuite;->M_NULL:Lsun/security/ssl/CipherSuite$MacAlg;

    #@62
    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@64
    goto :goto_0

    #@65
    .line 148
    :cond_4
    const-string/jumbo v0, "_SCSV"

    #@68
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6b
    move-result v0

    #@6c
    if-eqz v0, :cond_5

    #@6e
    .line 149
    sget-object v0, Lsun/security/ssl/CipherSuite;->M_NULL:Lsun/security/ssl/CipherSuite$MacAlg;

    #@70
    iput-object v0, p0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    #@72
    goto :goto_0

    #@73
    .line 151
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@75
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v2, "Unknown MAC algorithm for ciphersuite "

    #@7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v1

    #@89
    .line 151
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v0
.end method

.method private static add(Ljava/lang/String;I)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # I

    #@0
    .prologue
    .line 319
    new-instance v0, Lsun/security/ssl/CipherSuite;

    #@2
    invoke-direct {v0, p0, p1}, Lsun/security/ssl/CipherSuite;-><init>(Ljava/lang/String;I)V

    #@5
    .line 320
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    sget-object v1, Lsun/security/ssl/CipherSuite;->idMap:Ljava/util/Map;

    #@7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 321
    new-instance v1, Ljava/lang/RuntimeException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Duplicate ciphersuite definition: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 322
    const-string/jumbo v3, ", "

    #@26
    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 318
    :cond_0
    return-void
.end method

.method private static add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;Z)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "priority"    # I
    .param p3, "keyExchange"    # Lsun/security/ssl/CipherSuite$KeyExchange;
    .param p4, "cipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .param p5, "allowed"    # Z

    #@0
    .prologue
    .line 311
    const v6, 0xffff

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    move v5, p5

    #@9
    .line 310
    invoke-static/range {v0 .. v6}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V

    #@c
    .line 309
    return-void
.end method

.method private static add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZI)V
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "priority"    # I
    .param p3, "keyExchange"    # Lsun/security/ssl/CipherSuite$KeyExchange;
    .param p4, "cipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .param p5, "allowed"    # Z
    .param p6, "obsoleted"    # I

    #@0
    .prologue
    .line 295
    sget-object v8, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    #@2
    .line 296
    .local v8, "prf":Lsun/security/ssl/CipherSuite$PRF;
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@4
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@6
    if-ge p6, v0, :cond_0

    #@8
    .line 297
    sget-object v8, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    #@a
    .line 301
    :cond_0
    const/4 v7, 0x0

    #@b
    move-object v0, p0

    #@c
    move v1, p1

    #@d
    move v2, p2

    #@e
    move-object v3, p3

    #@f
    move-object v4, p4

    #@10
    move v5, p5

    #@11
    move v6, p6

    #@12
    .line 300
    invoke-static/range {v0 .. v8}, Lsun/security/ssl/CipherSuite;->add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@15
    .line 292
    return-void
.end method

.method private static add(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "priority"    # I
    .param p3, "keyExchange"    # Lsun/security/ssl/CipherSuite$KeyExchange;
    .param p4, "cipher"    # Lsun/security/ssl/CipherSuite$BulkCipher;
    .param p5, "allowed"    # Z
    .param p6, "obsoleted"    # I
    .param p7, "supported"    # I
    .param p8, "prf"    # Lsun/security/ssl/CipherSuite$PRF;

    #@0
    .prologue
    .line 269
    new-instance v0, Lsun/security/ssl/CipherSuite;

    #@2
    move-object v1, p0

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    move v6, p5

    #@8
    move/from16 v7, p6

    #@a
    move/from16 v8, p7

    #@c
    move-object/from16 v9, p8

    #@e
    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/CipherSuite;-><init>(Ljava/lang/String;IILsun/security/ssl/CipherSuite$KeyExchange;Lsun/security/ssl/CipherSuite$BulkCipher;ZIILsun/security/ssl/CipherSuite$PRF;)V

    #@11
    .line 271
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    sget-object v1, Lsun/security/ssl/CipherSuite;->idMap:Ljava/util/Map;

    #@13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 272
    new-instance v1, Ljava/lang/RuntimeException;

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Duplicate ciphersuite definition: "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 273
    const-string/jumbo v3, ", "

    #@32
    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@41
    throw v1

    #@42
    .line 275
    :cond_0
    iget-boolean v1, v0, Lsun/security/ssl/CipherSuite;->allowed:Z

    #@44
    if-eqz v1, :cond_1

    #@46
    .line 276
    sget-object v1, Lsun/security/ssl/CipherSuite;->nameMap:Ljava/util/Map;

    #@48
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    if-eqz v1, :cond_1

    #@4e
    .line 277
    new-instance v1, Ljava/lang/RuntimeException;

    #@50
    new-instance v2, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v3, "Duplicate ciphersuite definition: "

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    .line 278
    const-string/jumbo v3, ", "

    #@63
    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@72
    throw v1

    #@73
    .line 267
    :cond_1
    return-void
.end method

.method static allowedCipherSuites()Ljava/util/Collection;
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
    .line 257
    sget-object v0, Lsun/security/ssl/CipherSuite;->nameMap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static valueOf(II)Lsun/security/ssl/CipherSuite;
    .locals 7
    .param p0, "id1"    # I
    .param p1, "id2"    # I

    #@0
    .prologue
    const/16 v6, 0x10

    #@2
    .line 243
    and-int/lit16 p0, p0, 0xff

    #@4
    .line 244
    and-int/lit16 p1, p1, 0xff

    #@6
    .line 245
    shl-int/lit8 v4, p0, 0x8

    #@8
    or-int v3, v4, p1

    #@a
    .line 246
    .local v3, "id":I
    sget-object v4, Lsun/security/ssl/CipherSuite;->idMap:Ljava/util/Map;

    #@c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v5

    #@10
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lsun/security/ssl/CipherSuite;

    #@16
    .line 247
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    if-nez v0, :cond_0

    #@18
    .line 248
    invoke-static {p0, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 249
    .local v1, "h1":Ljava/lang/String;
    invoke-static {p1, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 250
    .local v2, "h2":Ljava/lang/String;
    new-instance v0, Lsun/security/ssl/CipherSuite;

    #@22
    .end local v0    # "c":Lsun/security/ssl/CipherSuite;
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "Unknown 0x"

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    const-string/jumbo v5, ":0x"

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-direct {v0, v4, v3}, Lsun/security/ssl/CipherSuite;-><init>(Ljava/lang/String;I)V

    #@44
    .line 252
    .end local v1    # "h1":Ljava/lang/String;
    .end local v2    # "h2":Ljava/lang/String;
    .restart local v0    # "c":Lsun/security/ssl/CipherSuite;
    :cond_0
    return-object v0
.end method

.method static valueOf(Ljava/lang/String;)Lsun/security/ssl/CipherSuite;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 225
    if-nez p0, :cond_0

    #@2
    .line 226
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Name must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 229
    :cond_0
    sget-object v1, Lsun/security/ssl/CipherSuite;->nameMap:Ljava/util/Map;

    #@d
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lsun/security/ssl/CipherSuite;

    #@13
    .line 230
    .local v0, "c":Lsun/security/ssl/CipherSuite;
    if-eqz v0, :cond_1

    #@15
    iget-boolean v1, v0, Lsun/security/ssl/CipherSuite;->allowed:Z

    #@17
    if-nez v1, :cond_2

    #@19
    .line 231
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Unsupported ciphersuite "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 234
    :cond_2
    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 206
    check-cast p1, Lsun/security/ssl/CipherSuite;

    #@2
    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Lsun/security/ssl/CipherSuite;->priority:I

    #@4
    iget v1, p0, Lsun/security/ssl/CipherSuite;->priority:I

    #@6
    sub-int/2addr v0, v1

    #@7
    return v0
.end method

.method isAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 190
    iget-boolean v0, p0, Lsun/security/ssl/CipherSuite;->allowed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/CipherSuite$KeyExchange;->isAvailable()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    #@e
    invoke-virtual {v0}, Lsun/security/ssl/CipherSuite$BulkCipher;->isAvailable()Z

    #@11
    move-result v0

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method isNegotiable()Z
    .locals 1

    #@0
    .prologue
    .line 194
    sget-object v0, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    #@2
    if-eq p0, v0, :cond_0

    #@4
    invoke-virtual {p0}, Lsun/security/ssl/CipherSuite;->isAvailable()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
