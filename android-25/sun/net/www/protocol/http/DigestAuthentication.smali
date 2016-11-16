.class Lsun/net/www/protocol/http/DigestAuthentication;
.super Lsun/net/www/protocol/http/AuthenticationInfo;
.source "DigestAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/http/DigestAuthentication$Parameters;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final charArray:[C

.field private static final serialVersionUID:J = 0x64L

.field private static final zeroPad:[Ljava/lang/String;


# instance fields
.field private authMethod:Ljava/lang/String;

.field params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-class v0, Lsun/net/www/protocol/http/DigestAuthentication;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/http/DigestAuthentication;->-assertionsDisabled:Z

    #@d
    .line 479
    const/16 v0, 0x10

    #@f
    new-array v0, v0, [C

    #@11
    fill-array-data v0, :array_0

    #@14
    sput-object v0, Lsun/net/www/protocol/http/DigestAuthentication;->charArray:[C

    #@16
    .line 484
    const/16 v0, 0x8

    #@18
    new-array v0, v0, [Ljava/lang/String;

    #@1a
    .line 486
    const-string/jumbo v3, "00000000"

    #@1d
    aput-object v3, v0, v1

    #@1f
    const-string/jumbo v1, "0000000"

    #@22
    aput-object v1, v0, v2

    #@24
    const-string/jumbo v1, "000000"

    #@27
    const/4 v2, 0x2

    #@28
    aput-object v1, v0, v2

    #@2a
    const-string/jumbo v1, "00000"

    #@2d
    const/4 v2, 0x3

    #@2e
    aput-object v1, v0, v2

    #@30
    const-string/jumbo v1, "0000"

    #@33
    const/4 v2, 0x4

    #@34
    aput-object v1, v0, v2

    #@36
    const-string/jumbo v1, "000"

    #@39
    const/4 v2, 0x5

    #@3a
    aput-object v1, v0, v2

    #@3c
    const-string/jumbo v1, "00"

    #@3f
    const/4 v2, 0x6

    #@40
    aput-object v1, v0, v2

    #@42
    const-string/jumbo v1, "0"

    #@45
    const/4 v2, 0x7

    #@46
    aput-object v1, v0, v2

    #@48
    .line 484
    sput-object v0, Lsun/net/www/protocol/http/DigestAuthentication;->zeroPad:[Ljava/lang/String;

    #@4a
    .line 48
    return-void

    #@4b
    :cond_0
    move v0, v2

    #@4c
    goto :goto_0

    #@4d
    .line 479
    nop

    #@4e
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V
    .locals 6
    .param p1, "isProxy"    # Z
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "authMethod"    # Ljava/lang/String;
    .param p6, "pw"    # Ljava/net/PasswordAuthentication;
    .param p7, "params"    # Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@0
    .prologue
    .line 190
    if-eqz p1, :cond_0

    #@2
    const/16 v1, 0x70

    #@4
    .line 191
    :goto_0
    sget-object v2, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    #@6
    move-object v0, p0

    #@7
    move-object v3, p2

    #@8
    move v4, p3

    #@9
    move-object v5, p4

    #@a
    .line 190
    invoke-direct/range {v0 .. v5}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/lang/String;ILjava/lang/String;)V

    #@d
    .line 195
    iput-object p5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    #@f
    .line 196
    iput-object p6, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@11
    .line 197
    iput-object p7, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@13
    .line 189
    return-void

    #@14
    .line 190
    :cond_0
    const/16 v1, 0x73

    #@16
    goto :goto_0
.end method

.method public constructor <init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V
    .locals 2
    .param p1, "isProxy"    # Z
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "authMethod"    # Ljava/lang/String;
    .param p5, "pw"    # Ljava/net/PasswordAuthentication;
    .param p6, "params"    # Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@0
    .prologue
    .line 178
    if-eqz p1, :cond_0

    #@2
    const/16 v0, 0x70

    #@4
    .line 179
    :goto_0
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    #@6
    .line 178
    invoke-direct {p0, v0, v1, p2, p3}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/net/URL;Ljava/lang/String;)V

    #@9
    .line 182
    iput-object p4, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    #@b
    .line 183
    iput-object p5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@d
    .line 184
    iput-object p6, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@f
    .line 177
    return-void

    #@10
    .line 178
    :cond_0
    const/16 v0, 0x73

    #@12
    goto :goto_0
.end method

.method private computeDigest(ZLjava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "isRequest"    # Z
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "connMethod"    # Ljava/lang/String;
    .param p6, "requestURI"    # Ljava/lang/String;
    .param p7, "nonceString"    # Ljava/lang/String;
    .param p8, "cnonce"    # Ljava/lang/String;
    .param p9, "ncValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 439
    iget-object v12, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@2
    invoke-virtual {v12}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getAlgorithm()Ljava/lang/String;

    #@5
    move-result-object v5

    #@6
    .line 440
    .local v5, "algorithm":Ljava/lang/String;
    const-string/jumbo v12, "MD5-sess"

    #@9
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c
    move-result v9

    #@d
    .line 442
    .local v9, "md5sess":Z
    if-eqz v9, :cond_0

    #@f
    const-string/jumbo v5, "MD5"

    #@12
    .end local v5    # "algorithm":Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@15
    move-result-object v8

    #@16
    .line 444
    .local v8, "md":Ljava/security/MessageDigest;
    if-eqz v9, :cond_2

    #@18
    .line 445
    iget-object v12, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@1a
    invoke-virtual {v12}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getCachedHA1()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .local v3, "HashA1":Ljava/lang/String;
    if-nez v3, :cond_1

    #@20
    .line 446
    new-instance v12, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    move-object/from16 v0, p2

    #@27
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v12

    #@2b
    const-string/jumbo v13, ":"

    #@2e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v12

    #@32
    move-object/from16 v0, p4

    #@34
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v12

    #@38
    const-string/jumbo v13, ":"

    #@3b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v12

    #@3f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v10

    #@43
    .line 447
    .local v10, "s":Ljava/lang/String;
    move-object/from16 v0, p3

    #@45
    invoke-direct {p0, v10, v0, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    #@48
    move-result-object v11

    #@49
    .line 448
    .local v11, "s1":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v12

    #@52
    const-string/jumbo v13, ":"

    #@55
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v12

    #@59
    move-object/from16 v0, p7

    #@5b
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v12

    #@5f
    const-string/jumbo v13, ":"

    #@62
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v12

    #@66
    move-object/from16 v0, p8

    #@68
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v12

    #@6c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    .line 449
    .local v1, "A1":Ljava/lang/String;
    const/4 v12, 0x0

    #@71
    invoke-direct {p0, v1, v12, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    #@74
    move-result-object v3

    #@75
    .line 450
    iget-object v12, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@77
    invoke-virtual {v12, v3}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setCachedHA1(Ljava/lang/String;)V

    #@7a
    .line 458
    .end local v1    # "A1":Ljava/lang/String;
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "s1":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    #@7c
    .line 459
    new-instance v12, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    move-object/from16 v0, p5

    #@83
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v12

    #@87
    const-string/jumbo v13, ":"

    #@8a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v12

    #@8e
    move-object/from16 v0, p6

    #@90
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v12

    #@94
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    .line 463
    .local v2, "A2":Ljava/lang/String;
    :goto_1
    const/4 v12, 0x0

    #@99
    invoke-direct {p0, v2, v12, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    #@9c
    move-result-object v4

    #@9d
    .line 466
    .local v4, "HashA2":Ljava/lang/String;
    iget-object v12, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@9f
    invoke-virtual {v12}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->authQop()Z

    #@a2
    move-result v12

    #@a3
    if-eqz v12, :cond_4

    #@a5
    .line 467
    new-instance v12, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v12

    #@ae
    const-string/jumbo v13, ":"

    #@b1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v12

    #@b5
    move-object/from16 v0, p7

    #@b7
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v12

    #@bb
    const-string/jumbo v13, ":"

    #@be
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v12

    #@c2
    move-object/from16 v0, p9

    #@c4
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v12

    #@c8
    const-string/jumbo v13, ":"

    #@cb
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v12

    #@cf
    move-object/from16 v0, p8

    #@d1
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v12

    #@d5
    .line 468
    const-string/jumbo v13, ":auth:"

    #@d8
    .line 467
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v12

    #@dc
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v12

    #@e0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v6

    #@e4
    .line 475
    .local v6, "combo":Ljava/lang/String;
    :goto_2
    const/4 v12, 0x0

    #@e5
    invoke-direct {p0, v6, v12, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    #@e8
    move-result-object v7

    #@e9
    .line 476
    .local v7, "finalHash":Ljava/lang/String;
    return-object v7

    #@ea
    .line 453
    .end local v2    # "A2":Ljava/lang/String;
    .end local v3    # "HashA1":Ljava/lang/String;
    .end local v4    # "HashA2":Ljava/lang/String;
    .end local v6    # "combo":Ljava/lang/String;
    .end local v7    # "finalHash":Ljava/lang/String;
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    move-object/from16 v0, p2

    #@f1
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v12

    #@f5
    const-string/jumbo v13, ":"

    #@f8
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v12

    #@fc
    move-object/from16 v0, p4

    #@fe
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v12

    #@102
    const-string/jumbo v13, ":"

    #@105
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v12

    #@109
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10c
    move-result-object v1

    #@10d
    .line 454
    .restart local v1    # "A1":Ljava/lang/String;
    move-object/from16 v0, p3

    #@10f
    invoke-direct {p0, v1, v0, v8}, Lsun/net/www/protocol/http/DigestAuthentication;->encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;

    #@112
    move-result-object v3

    #@113
    .restart local v3    # "HashA1":Ljava/lang/String;
    goto/16 :goto_0

    #@115
    .line 461
    .end local v1    # "A1":Ljava/lang/String;
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    #@117
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@11a
    const-string/jumbo v13, ":"

    #@11d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v12

    #@121
    move-object/from16 v0, p6

    #@123
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v12

    #@127
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v2

    #@12b
    .restart local v2    # "A2":Ljava/lang/String;
    goto/16 :goto_1

    #@12d
    .line 471
    .restart local v4    # "HashA2":Ljava/lang/String;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v12

    #@136
    const-string/jumbo v13, ":"

    #@139
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v12

    #@13d
    move-object/from16 v0, p7

    #@13f
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v12

    #@143
    .line 472
    const-string/jumbo v13, ":"

    #@146
    .line 471
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v12

    #@14a
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v12

    #@14e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@151
    move-result-object v6

    #@152
    .restart local v6    # "combo":Ljava/lang/String;
    goto :goto_2
.end method

.method private encode(Ljava/lang/String;[CLjava/security/MessageDigest;)Ljava/lang/String;
    .locals 7
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "passwd"    # [C
    .param p3, "md"    # Ljava/security/MessageDigest;

    #@0
    .prologue
    .line 491
    :try_start_0
    const-string/jumbo v6, "ISO-8859-1"

    #@3
    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@6
    move-result-object v6

    #@7
    invoke-virtual {p3, v6}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 495
    :cond_0
    if-eqz p2, :cond_2

    #@c
    .line 496
    array-length v6, p2

    #@d
    new-array v3, v6, [B

    #@f
    .line 497
    .local v3, "passwdBytes":[B
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    array-length v6, p2

    #@11
    if-ge v2, v6, :cond_1

    #@13
    .line 498
    aget-char v6, p2, v2

    #@15
    int-to-byte v6, v6

    #@16
    aput-byte v6, v3, v2

    #@18
    .line 497
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 492
    .end local v2    # "i":I
    .end local v3    # "passwdBytes":[B
    :catch_0
    move-exception v5

    #@1c
    .line 493
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v6, Lsun/net/www/protocol/http/DigestAuthentication;->-assertionsDisabled:Z

    #@1e
    if-nez v6, :cond_0

    #@20
    new-instance v6, Ljava/lang/AssertionError;

    #@22
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@25
    throw v6

    #@26
    .line 499
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i":I
    .restart local v3    # "passwdBytes":[B
    :cond_1
    invoke-virtual {p3, v3}, Ljava/security/MessageDigest;->update([B)V

    #@29
    .line 500
    const/4 v6, 0x0

    #@2a
    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([BB)V

    #@2d
    .line 502
    .end local v2    # "i":I
    .end local v3    # "passwdBytes":[B
    :cond_2
    invoke-virtual {p3}, Ljava/security/MessageDigest;->digest()[B

    #@30
    move-result-object v0

    #@31
    .line 504
    .local v0, "digest":[B
    new-instance v4, Ljava/lang/StringBuffer;

    #@33
    array-length v6, v0

    #@34
    mul-int/lit8 v6, v6, 0x2

    #@36
    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    #@39
    .line 505
    .local v4, "res":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    #@3a
    .restart local v2    # "i":I
    :goto_1
    array-length v6, v0

    #@3b
    if-ge v2, v6, :cond_3

    #@3d
    .line 506
    aget-byte v6, v0, v2

    #@3f
    ushr-int/lit8 v6, v6, 0x4

    #@41
    and-int/lit8 v1, v6, 0xf

    #@43
    .line 507
    .local v1, "hashchar":I
    sget-object v6, Lsun/net/www/protocol/http/DigestAuthentication;->charArray:[C

    #@45
    aget-char v6, v6, v1

    #@47
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4a
    .line 508
    aget-byte v6, v0, v2

    #@4c
    and-int/lit8 v1, v6, 0xf

    #@4e
    .line 509
    sget-object v6, Lsun/net/www/protocol/http/DigestAuthentication;->charArray:[C

    #@50
    aget-char v6, v6, v1

    #@52
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@55
    .line 505
    add-int/lit8 v2, v2, 0x1

    #@57
    goto :goto_1

    #@58
    .line 511
    .end local v1    # "hashchar":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    return-object v6
.end method

.method private getHeaderValueImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 331
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@4
    invoke-virtual {v1}, Ljava/net/PasswordAuthentication;->getPassword()[C

    #@7
    move-result-object v4

    #@8
    .line 332
    .local v4, "passwd":[C
    move-object/from16 v0, p0

    #@a
    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@c
    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->authQop()Z

    #@f
    move-result v17

    #@10
    .line 333
    .local v17, "qop":Z
    move-object/from16 v0, p0

    #@12
    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@14
    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getOpaque()Ljava/lang/String;

    #@17
    move-result-object v16

    #@18
    .line 334
    .local v16, "opaque":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a
    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@1c
    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getCnonce()Ljava/lang/String;

    #@1f
    move-result-object v9

    #@20
    .line 335
    .local v9, "cnonce":Ljava/lang/String;
    move-object/from16 v0, p0

    #@22
    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@24
    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getNonce()Ljava/lang/String;

    #@27
    move-result-object v8

    #@28
    .line 336
    .local v8, "nonce":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2a
    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@2c
    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getAlgorithm()Ljava/lang/String;

    #@2f
    move-result-object v11

    #@30
    .line 337
    .local v11, "algorithm":Ljava/lang/String;
    move-object/from16 v0, p0

    #@32
    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@34
    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->incrementNC()V

    #@37
    .line 338
    move-object/from16 v0, p0

    #@39
    iget-object v1, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@3b
    invoke-virtual {v1}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getNCCount()I

    #@3e
    move-result v14

    #@3f
    .line 339
    .local v14, "nccount":I
    const/4 v10, 0x0

    #@40
    .line 341
    .local v10, "ncstring":Ljava/lang/String;
    const/4 v1, -0x1

    #@41
    if-eq v14, v1, :cond_0

    #@43
    .line 342
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4a
    move-result-object v10

    #@4b
    .line 343
    .local v10, "ncstring":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@4e
    move-result v13

    #@4f
    .line 344
    .local v13, "len":I
    const/16 v1, 0x8

    #@51
    if-ge v13, v1, :cond_0

    #@53
    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    sget-object v2, Lsun/net/www/protocol/http/DigestAuthentication;->zeroPad:[Ljava/lang/String;

    #@5a
    aget-object v2, v2, v13

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v10

    #@68
    .line 349
    .end local v10    # "ncstring":Ljava/lang/String;
    .end local v13    # "len":I
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    #@6a
    iget-object v1, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@6c
    invoke-virtual {v1}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    move-object/from16 v0, p0

    #@72
    iget-object v5, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    #@74
    const/4 v2, 0x1

    #@75
    move-object/from16 v1, p0

    #@77
    move-object/from16 v6, p2

    #@79
    move-object/from16 v7, p1

    #@7b
    invoke-direct/range {v1 .. v10}, Lsun/net/www/protocol/http/DigestAuthentication;->computeDigest(ZLjava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@7e
    move-result-object v18

    #@7f
    .line 355
    .local v18, "response":Ljava/lang/String;
    const-string/jumbo v15, "\""

    #@82
    .line 356
    .local v15, "ncfield":Ljava/lang/String;
    if-eqz v17, :cond_1

    #@84
    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v2, "\", nc="

    #@8c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v15

    #@98
    .line 360
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    move-object/from16 v0, p0

    #@9f
    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    #@a1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    .line 361
    const-string/jumbo v2, " username=\""

    #@a8
    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    .line 361
    move-object/from16 v0, p0

    #@ae
    iget-object v2, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@b0
    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    #@b3
    move-result-object v2

    #@b4
    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v1

    #@b8
    .line 362
    const-string/jumbo v2, "\", realm=\""

    #@bb
    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v1

    #@bf
    .line 362
    move-object/from16 v0, p0

    #@c1
    iget-object v2, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    #@c3
    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v1

    #@c7
    .line 363
    const-string/jumbo v2, "\", nonce=\""

    #@ca
    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v1

    #@ce
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v1

    #@d2
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    .line 365
    const-string/jumbo v2, ", uri=\""

    #@d9
    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v1

    #@dd
    move-object/from16 v0, p1

    #@df
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v1

    #@e3
    .line 366
    const-string/jumbo v2, "\", response=\""

    #@e6
    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v1

    #@ea
    move-object/from16 v0, v18

    #@ec
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v1

    #@f0
    .line 367
    const-string/jumbo v2, "\", algorithm=\""

    #@f3
    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v1

    #@f7
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v1

    #@fb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v19

    #@ff
    .line 368
    .local v19, "value":Ljava/lang/String;
    if-eqz v16, :cond_2

    #@101
    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    move-object/from16 v0, v19

    #@108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v1

    #@10c
    const-string/jumbo v2, "\", opaque=\""

    #@10f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v1

    #@113
    move-object/from16 v0, v16

    #@115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v1

    #@119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v19

    #@11d
    .line 371
    :cond_2
    if-eqz v9, :cond_3

    #@11f
    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    #@121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@124
    move-object/from16 v0, v19

    #@126
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v1

    #@12a
    const-string/jumbo v2, "\", cnonce=\""

    #@12d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v1

    #@131
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v1

    #@135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v19

    #@139
    .line 374
    :cond_3
    if-eqz v17, :cond_4

    #@13b
    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    move-object/from16 v0, v19

    #@142
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v1

    #@146
    const-string/jumbo v2, "\", qop=\"auth"

    #@149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v1

    #@14d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v19

    #@151
    .line 377
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    #@153
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@156
    move-object/from16 v0, v19

    #@158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v1

    #@15c
    const-string/jumbo v2, "\""

    #@15f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v1

    #@163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@166
    move-result-object v19

    #@167
    .line 378
    return-object v19

    #@168
    .line 351
    .end local v15    # "ncfield":Ljava/lang/String;
    .end local v18    # "response":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :catch_0
    move-exception v12

    #@169
    .line 352
    .local v12, "ex":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    #@16a
    return-object v1
.end method


# virtual methods
.method public checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 388
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@4
    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    #@7
    move-result-object v5

    #@8
    .line 389
    .local v5, "passwd":[C
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@c
    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 390
    .local v4, "username":Ljava/lang/String;
    move-object/from16 v0, p0

    #@12
    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@14
    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->authQop()Z

    #@17
    move-result v20

    #@18
    .line 391
    .local v20, "qop":Z
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@1c
    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getOpaque()Ljava/lang/String;

    #@1f
    move-result-object v18

    #@20
    .line 392
    .local v18, "opaque":Ljava/lang/String;
    move-object/from16 v0, p0

    #@22
    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@24
    invoke-static {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->-get0(Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)Ljava/lang/String;

    #@27
    move-result-object v10

    #@28
    .line 393
    .local v10, "cnonce":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2a
    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@2c
    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getNonce()Ljava/lang/String;

    #@2f
    move-result-object v9

    #@30
    .line 394
    .local v9, "nonce":Ljava/lang/String;
    move-object/from16 v0, p0

    #@32
    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@34
    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getAlgorithm()Ljava/lang/String;

    #@37
    move-result-object v12

    #@38
    .line 395
    .local v12, "algorithm":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@3c
    invoke-virtual {v2}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->getNCCount()I

    #@3f
    move-result v16

    #@40
    .line 396
    .local v16, "nccount":I
    const/4 v11, 0x0

    #@41
    .line 398
    .local v11, "ncstring":Ljava/lang/String;
    if-nez p1, :cond_0

    #@43
    .line 399
    new-instance v2, Ljava/net/ProtocolException;

    #@45
    const-string/jumbo v3, "No authentication information in response"

    #@48
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2

    #@4c
    .line 402
    :cond_0
    const/4 v2, -0x1

    #@4d
    move/from16 v0, v16

    #@4f
    if-eq v0, v2, :cond_1

    #@51
    .line 403
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@58
    move-result-object v11

    #@59
    .line 404
    .local v11, "ncstring":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@5c
    move-result v15

    #@5d
    .line 405
    .local v15, "len":I
    const/16 v2, 0x8

    #@5f
    if-ge v15, v2, :cond_1

    #@61
    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    sget-object v3, Lsun/net/www/protocol/http/DigestAuthentication;->zeroPad:[Ljava/lang/String;

    #@68
    aget-object v3, v3, v15

    #@6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v11

    #@76
    .line 409
    .end local v11    # "ncstring":Ljava/lang/String;
    .end local v15    # "len":I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    #@78
    iget-object v6, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    #@7a
    const/4 v3, 0x0

    #@7b
    move-object/from16 v2, p0

    #@7d
    move-object/from16 v7, p2

    #@7f
    move-object/from16 v8, p3

    #@81
    invoke-direct/range {v2 .. v11}, Lsun/net/www/protocol/http/DigestAuthentication;->computeDigest(ZLjava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@84
    move-result-object v14

    #@85
    .line 411
    .local v14, "expected":Ljava/lang/String;
    new-instance v19, Lsun/net/www/HeaderParser;

    #@87
    move-object/from16 v0, v19

    #@89
    move-object/from16 v1, p1

    #@8b
    invoke-direct {v0, v1}, Lsun/net/www/HeaderParser;-><init>(Ljava/lang/String;)V

    #@8e
    .line 412
    .local v19, "p":Lsun/net/www/HeaderParser;
    const-string/jumbo v2, "rspauth"

    #@91
    move-object/from16 v0, v19

    #@93
    invoke-virtual {v0, v2}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@96
    move-result-object v21

    #@97
    .line 413
    .local v21, "rspauth":Ljava/lang/String;
    if-nez v21, :cond_2

    #@99
    .line 414
    new-instance v2, Ljava/net/ProtocolException;

    #@9b
    const-string/jumbo v3, "No digest in response"

    #@9e
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@a2
    .line 425
    .end local v14    # "expected":Ljava/lang/String;
    .end local v19    # "p":Lsun/net/www/HeaderParser;
    .end local v21    # "rspauth":Ljava/lang/String;
    :catch_0
    move-exception v13

    #@a3
    .line 426
    .local v13, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/net/ProtocolException;

    #@a5
    const-string/jumbo v3, "Unsupported algorithm in response"

    #@a8
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@ab
    throw v2

    #@ac
    .line 416
    .end local v13    # "ex":Ljava/security/NoSuchAlgorithmException;
    .restart local v14    # "expected":Ljava/lang/String;
    .restart local v19    # "p":Lsun/net/www/HeaderParser;
    .restart local v21    # "rspauth":Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, v21

    #@ae
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v2

    #@b2
    if-nez v2, :cond_3

    #@b4
    .line 417
    new-instance v2, Ljava/net/ProtocolException;

    #@b6
    const-string/jumbo v3, "Response digest invalid"

    #@b9
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v2

    #@bd
    .line 420
    :cond_3
    const-string/jumbo v2, "nextnonce"

    #@c0
    move-object/from16 v0, v19

    #@c2
    invoke-virtual {v0, v2}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@c5
    move-result-object v17

    #@c6
    .line 421
    .local v17, "nextnonce":Ljava/lang/String;
    if-eqz v17, :cond_4

    #@c8
    const-string/jumbo v2, ""

    #@cb
    move-object/from16 v0, v17

    #@cd
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d0
    move-result v2

    #@d1
    if-eqz v2, :cond_5

    #@d3
    .line 387
    :cond_4
    :goto_0
    return-void

    #@d4
    .line 422
    :cond_5
    move-object/from16 v0, p0

    #@d6
    iget-object v2, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@d8
    move-object/from16 v0, v17

    #@da
    invoke-virtual {v2, v0}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNonce(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    #@dd
    goto :goto_0
.end method

.method public checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 383
    invoke-virtual {p3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Lsun/net/www/protocol/http/DigestAuthentication;->checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 382
    return-void
.end method

.method getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "requestURI"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValueImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 224
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValueImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public isAuthorizationStale(Ljava/lang/String;)Z
    .locals 5
    .param p1, "header"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 255
    new-instance v1, Lsun/net/www/HeaderParser;

    #@3
    invoke-direct {v1, p1}, Lsun/net/www/HeaderParser;-><init>(Ljava/lang/String;)V

    #@6
    .line 256
    .local v1, "p":Lsun/net/www/HeaderParser;
    const-string/jumbo v3, "stale"

    #@9
    invoke-virtual {v1, v3}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 257
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@f
    const-string/jumbo v3, "true"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 259
    const-string/jumbo v3, "nonce"

    #@1b
    invoke-virtual {v1, v3}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 260
    .local v0, "newNonce":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@21
    const-string/jumbo v3, ""

    #@24
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 261
    :cond_0
    return v4

    #@2b
    .line 258
    .end local v0    # "newNonce":Ljava/lang/String;
    :cond_1
    return v4

    #@2c
    .line 263
    .restart local v0    # "newNonce":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@2e
    invoke-virtual {v3, v0}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNonce(Ljava/lang/String;)V

    #@31
    .line 264
    const/4 v3, 0x1

    #@32
    return v3
.end method

.method public setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z
    .locals 9
    .param p1, "conn"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .param p2, "p"    # Lsun/net/www/HeaderParser;
    .param p3, "raw"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 276
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@4
    const-string/jumbo v6, "nonce"

    #@7
    invoke-virtual {p2, v6}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v6

    #@b
    invoke-virtual {v5, v6}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNonce(Ljava/lang/String;)V

    #@e
    .line 277
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@10
    const-string/jumbo v6, "opaque"

    #@13
    invoke-virtual {p2, v6}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v5, v6}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setOpaque(Ljava/lang/String;)V

    #@1a
    .line 278
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@1c
    const-string/jumbo v6, "qop"

    #@1f
    invoke-virtual {p2, v6}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v5, v6}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setQop(Ljava/lang/String;)V

    #@26
    .line 280
    const-string/jumbo v3, ""

    #@29
    .line 282
    .local v3, "uri":Ljava/lang/String;
    iget-char v5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    #@2b
    const/16 v6, 0x70

    #@2d
    if-ne v5, v6, :cond_1

    #@2f
    .line 283
    invoke-virtual {p1}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@32
    move-result-object v5

    #@33
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@35
    if-ne v5, v6, :cond_1

    #@37
    .line 284
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    #@3a
    move-result-object v5

    #@3b
    invoke-static {v5}, Lsun/net/www/protocol/http/HttpURLConnection;->connectRequestURI(Ljava/net/URL;)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    .line 285
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    #@41
    .line 293
    .local v2, "method":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@43
    invoke-static {v5}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->-get1(Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    if-eqz v5, :cond_0

    #@49
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    #@4b
    if-nez v5, :cond_2

    #@4d
    .line 294
    :cond_0
    return v7

    #@4e
    .line 288
    .end local v2    # "method":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    move-result-object v3

    #@52
    .line 290
    :goto_1
    invoke-virtual {p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getMethod()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    .restart local v2    # "method":Ljava/lang/String;
    goto :goto_0

    #@57
    .line 289
    .end local v2    # "method":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@58
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    #@59
    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "method":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@5b
    if-eqz v5, :cond_0

    #@5d
    iget-object v5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    #@5f
    if-eqz v5, :cond_0

    #@61
    .line 296
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    #@63
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@66
    move-result v5

    #@67
    if-lt v5, v8, :cond_3

    #@69
    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    iget-object v6, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    #@70
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    #@73
    move-result v6

    #@74
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    #@77
    move-result v6

    #@78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    .line 301
    iget-object v6, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    #@7e
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@81
    move-result-object v6

    #@82
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@85
    move-result-object v6

    #@86
    .line 300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v5

    #@8e
    iput-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->authMethod:Ljava/lang/String;

    #@90
    .line 303
    :cond_3
    const-string/jumbo v5, "algorithm"

    #@93
    invoke-virtual {p2, v5}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@96
    move-result-object v0

    #@97
    .line 304
    .local v0, "algorithm":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@99
    const-string/jumbo v5, ""

    #@9c
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result v5

    #@a0
    if-eqz v5, :cond_5

    #@a2
    .line 305
    :cond_4
    const-string/jumbo v0, "MD5"

    #@a5
    .line 307
    :cond_5
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@a7
    invoke-virtual {v5, v0}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setAlgorithm(Ljava/lang/String;)V

    #@aa
    .line 313
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@ac
    invoke-virtual {v5}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->authQop()Z

    #@af
    move-result v5

    #@b0
    if-eqz v5, :cond_6

    #@b2
    .line 314
    iget-object v5, p0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@b4
    invoke-virtual {v5}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNewCnonce()V

    #@b7
    .line 317
    :cond_6
    invoke-direct {p0, v3, v2}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValueImpl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ba
    move-result-object v4

    #@bb
    .line 318
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_7

    #@bd
    .line 319
    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    #@c0
    move-result-object v5

    #@c1
    invoke-virtual {p1, v5, v4}, Lsun/net/www/protocol/http/HttpURLConnection;->setAuthenticationProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@c4
    .line 320
    return v8

    #@c5
    .line 322
    :cond_7
    return v7
.end method

.method public supportsPreemptiveAuthorization()Z
    .locals 1

    #@0
    .prologue
    .line 205
    const/4 v0, 0x1

    #@1
    return v0
.end method
