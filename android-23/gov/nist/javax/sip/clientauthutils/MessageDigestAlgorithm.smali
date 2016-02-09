.class public Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;
.super Ljava/lang/Object;
.source "MessageDigestAlgorithm.java"


# static fields
.field private static final toHex:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 206
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->toHex:[C

    #@9
    .line 15
    return-void

    #@a
    .line 206
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

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static H(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 181
    :try_start_0
    const-string/jumbo v2, "MD5"

    #@3
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v0

    #@7
    .line 183
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    #@e
    move-result-object v2

    #@f
    invoke-static {v2}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 184
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    #@15
    .line 186
    .local v1, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@17
    const-string/jumbo v3, "Failed to instantiate an MD5 algorithm"

    #@1a
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1d
    throw v2
.end method

.method private static KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "secret"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ":"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->H(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method static calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "hashUserNameRealmPasswd"    # Ljava/lang/String;
    .param p2, "nonce_value"    # Ljava/lang/String;
    .param p3, "nc_value"    # Ljava/lang/String;
    .param p4, "cnonce_value"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "digest_uri_value"    # Ljava/lang/String;
    .param p7, "entity_body"    # Ljava/lang/String;
    .param p8, "qop_value"    # Ljava/lang/String;
    .param p9, "stackLogger"    # Lgov/nist/core/StackLogger;

    #@0
    .prologue
    .line 42
    invoke-interface {p9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "trying to authenticate using : "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, ", "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 44
    const-string/jumbo v3, ", "

    #@24
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 44
    const-string/jumbo v3, ", "

    #@2f
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 45
    const-string/jumbo v3, ", "

    #@3a
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 45
    const-string/jumbo v3, ", "

    #@45
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 45
    const-string/jumbo v3, ", "

    #@50
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    .line 46
    const-string/jumbo v3, ", "

    #@5b
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    .line 46
    const-string/jumbo v3, ", "

    #@66
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    invoke-interface {p9, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@75
    .line 49
    :cond_0
    if-eqz p1, :cond_1

    #@77
    if-nez p5, :cond_2

    #@79
    .line 51
    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    #@7b
    .line 52
    const-string/jumbo v3, "Null parameter to MessageDigestAlgorithm.calculateResponse()"

    #@7e
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@81
    throw v2

    #@82
    .line 50
    :cond_2
    if-eqz p6, :cond_1

    #@84
    if-eqz p2, :cond_1

    #@86
    .line 57
    if-eqz p4, :cond_3

    #@88
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@8b
    move-result v2

    #@8c
    if-nez v2, :cond_4

    #@8e
    .line 58
    :cond_3
    new-instance v2, Ljava/lang/NullPointerException;

    #@90
    .line 59
    const-string/jumbo v3, "cnonce_value may not be absent for MD5-Sess algorithm."

    #@93
    .line 58
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@96
    throw v2

    #@97
    .line 62
    :cond_4
    const/4 v0, 0x0

    #@98
    .line 63
    .local v0, "A2":Ljava/lang/String;
    if-eqz p8, :cond_5

    #@9a
    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@a1
    move-result v2

    #@a2
    if-nez v2, :cond_7

    #@a4
    .line 65
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v2

    #@ad
    const-string/jumbo v3, ":"

    #@b0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v2

    #@b8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v0

    #@bc
    .line 72
    .local v0, "A2":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    #@bd
    .line 74
    .local v1, "request_digest":Ljava/lang/String;
    if-eqz p4, :cond_9

    #@bf
    if-eqz p8, :cond_9

    #@c1
    if-eqz p3, :cond_9

    #@c3
    .line 75
    const-string/jumbo v2, "auth"

    #@c6
    invoke-virtual {p8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c9
    move-result v2

    #@ca
    if-nez v2, :cond_6

    #@cc
    const-string/jumbo v2, "auth-int"

    #@cf
    invoke-virtual {p8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d2
    move-result v2

    #@d3
    .line 74
    if-eqz v2, :cond_9

    #@d5
    .line 78
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v2

    #@de
    const-string/jumbo v3, ":"

    #@e1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v2

    #@e5
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v2

    #@e9
    const-string/jumbo v3, ":"

    #@ec
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v2

    #@f0
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v2

    #@f4
    const-string/jumbo v3, ":"

    #@f7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v2

    #@fb
    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v2

    #@ff
    .line 79
    const-string/jumbo v3, ":"

    #@102
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v2

    #@106
    .line 79
    invoke-static {v0}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->H(Ljava/lang/String;)Ljava/lang/String;

    #@109
    move-result-object v3

    #@10a
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v2

    #@10e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v2

    #@112
    invoke-static {p1, v2}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@115
    move-result-object v1

    #@116
    .line 85
    .local v1, "request_digest":Ljava/lang/String;
    :goto_1
    return-object v1

    #@117
    .line 64
    .end local v1    # "request_digest":Ljava/lang/String;
    .local v0, "A2":Ljava/lang/String;
    :cond_7
    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@11a
    move-result-object v2

    #@11b
    const-string/jumbo v3, "auth"

    #@11e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@121
    move-result v2

    #@122
    .line 63
    if-nez v2, :cond_5

    #@124
    .line 67
    if-nez p7, :cond_8

    #@126
    .line 68
    const-string/jumbo p7, ""

    #@129
    .line 69
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v2

    #@132
    const-string/jumbo v3, ":"

    #@135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v2

    #@139
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v2

    #@13d
    const-string/jumbo v3, ":"

    #@140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v2

    #@144
    invoke-static {p7}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->H(Ljava/lang/String;)Ljava/lang/String;

    #@147
    move-result-object v3

    #@148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v2

    #@14c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v0

    #@150
    .local v0, "A2":Ljava/lang/String;
    goto/16 :goto_0

    #@152
    .line 82
    .local v1, "request_digest":Ljava/lang/String;
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    #@154
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@157
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v2

    #@15b
    const-string/jumbo v3, ":"

    #@15e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v2

    #@162
    invoke-static {v0}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->H(Ljava/lang/String;)Ljava/lang/String;

    #@165
    move-result-object v3

    #@166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v2

    #@16a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v2

    #@16e
    invoke-static {p1, v2}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@171
    move-result-object v1

    #@172
    .local v1, "request_digest":Ljava/lang/String;
    goto :goto_1
.end method

.method static calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;
    .locals 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "username_value"    # Ljava/lang/String;
    .param p2, "realm_value"    # Ljava/lang/String;
    .param p3, "passwd"    # Ljava/lang/String;
    .param p4, "nonce_value"    # Ljava/lang/String;
    .param p5, "nc_value"    # Ljava/lang/String;
    .param p6, "cnonce_value"    # Ljava/lang/String;
    .param p7, "method"    # Ljava/lang/String;
    .param p8, "digest_uri_value"    # Ljava/lang/String;
    .param p9, "entity_body"    # Ljava/lang/String;
    .param p10, "qop_value"    # Ljava/lang/String;
    .param p11, "stackLogger"    # Lgov/nist/core/StackLogger;

    #@0
    .prologue
    .line 118
    invoke-interface/range {p11 .. p11}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "trying to authenticate using : "

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    const-string/jumbo v5, ", "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 120
    const-string/jumbo v5, ", "

    #@24
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 120
    const-string/jumbo v5, ", "

    #@2f
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    .line 121
    if-eqz p3, :cond_2

    #@35
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@3c
    move-result v4

    #@3d
    if-lez v4, :cond_2

    #@3f
    const/4 v4, 0x1

    #@40
    .line 119
    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 121
    const-string/jumbo v5, ", "

    #@47
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 121
    const-string/jumbo v5, ", "

    #@52
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    .line 122
    const-string/jumbo v5, ", "

    #@5d
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    .line 122
    const-string/jumbo v5, ", "

    #@68
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    .line 122
    const-string/jumbo v5, ", "

    #@73
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    .line 123
    const-string/jumbo v5, ", "

    #@7e
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    move-object/from16 v0, p9

    #@84
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    .line 123
    const-string/jumbo v5, ", "

    #@8b
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v4

    #@8f
    move-object/from16 v0, p10

    #@91
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v4

    #@99
    move-object/from16 v0, p11

    #@9b
    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@9e
    .line 126
    :cond_0
    if-eqz p1, :cond_1

    #@a0
    if-nez p2, :cond_3

    #@a2
    .line 128
    :cond_1
    new-instance v4, Ljava/lang/NullPointerException;

    #@a4
    .line 129
    const-string/jumbo v5, "Null parameter to MessageDigestAlgorithm.calculateResponse()"

    #@a7
    .line 128
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v4

    #@ab
    .line 121
    :cond_2
    const/4 v4, 0x0

    #@ac
    goto :goto_0

    #@ad
    .line 126
    :cond_3
    if-eqz p3, :cond_1

    #@af
    if-eqz p7, :cond_1

    #@b1
    .line 127
    if-eqz p8, :cond_1

    #@b3
    if-eqz p4, :cond_1

    #@b5
    .line 133
    const/4 v1, 0x0

    #@b6
    .line 135
    .local v1, "A1":Ljava/lang/String;
    if-eqz p0, :cond_4

    #@b8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@bb
    move-result-object v4

    #@bc
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@bf
    move-result v4

    #@c0
    if-nez v4, :cond_7

    #@c2
    .line 137
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v4

    #@cb
    const-string/jumbo v5, ":"

    #@ce
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v4

    #@d2
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v4

    #@d6
    const-string/jumbo v5, ":"

    #@d9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v4

    #@dd
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v4

    #@e1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v1

    #@e5
    .line 147
    .local v1, "A1":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    #@e6
    .line 148
    .local v2, "A2":Ljava/lang/String;
    if-eqz p10, :cond_5

    #@e8
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@eb
    move-result-object v4

    #@ec
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@ef
    move-result v4

    #@f0
    if-nez v4, :cond_a

    #@f2
    .line 150
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v4

    #@fb
    const-string/jumbo v5, ":"

    #@fe
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v4

    #@102
    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v4

    #@106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v2

    #@10a
    .line 157
    .local v2, "A2":Ljava/lang/String;
    :goto_2
    const/4 v3, 0x0

    #@10b
    .line 159
    .local v3, "request_digest":Ljava/lang/String;
    if-eqz p6, :cond_c

    #@10d
    if-eqz p10, :cond_c

    #@10f
    if-eqz p5, :cond_c

    #@111
    .line 160
    const-string/jumbo v4, "auth"

    #@114
    move-object/from16 v0, p10

    #@116
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@119
    move-result v4

    #@11a
    if-nez v4, :cond_6

    #@11c
    const-string/jumbo v4, "auth-int"

    #@11f
    move-object/from16 v0, p10

    #@121
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@124
    move-result v4

    #@125
    .line 159
    if-eqz v4, :cond_c

    #@127
    .line 163
    :cond_6
    invoke-static {v1}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->H(Ljava/lang/String;)Ljava/lang/String;

    #@12a
    move-result-object v4

    #@12b
    new-instance v5, Ljava/lang/StringBuilder;

    #@12d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@130
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v5

    #@134
    const-string/jumbo v6, ":"

    #@137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v5

    #@13b
    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v5

    #@13f
    const-string/jumbo v6, ":"

    #@142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v5

    #@146
    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v5

    #@14a
    const-string/jumbo v6, ":"

    #@14d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v5

    #@151
    move-object/from16 v0, p10

    #@153
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v5

    #@157
    .line 164
    const-string/jumbo v6, ":"

    #@15a
    .line 163
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v5

    #@15e
    .line 164
    invoke-static {v2}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->H(Ljava/lang/String;)Ljava/lang/String;

    #@161
    move-result-object v6

    #@162
    .line 163
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v5

    #@166
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v5

    #@16a
    invoke-static {v4, v5}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16d
    move-result-object v3

    #@16e
    .line 170
    .local v3, "request_digest":Ljava/lang/String;
    :goto_3
    return-object v3

    #@16f
    .line 136
    .end local v2    # "A2":Ljava/lang/String;
    .end local v3    # "request_digest":Ljava/lang/String;
    .local v1, "A1":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@172
    move-result-object v4

    #@173
    const-string/jumbo v5, "MD5"

    #@176
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@179
    move-result v4

    #@17a
    .line 135
    if-nez v4, :cond_4

    #@17c
    .line 139
    if-eqz p6, :cond_8

    #@17e
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    #@181
    move-result v4

    #@182
    if-nez v4, :cond_9

    #@184
    .line 140
    :cond_8
    new-instance v4, Ljava/lang/NullPointerException;

    #@186
    .line 141
    const-string/jumbo v5, "cnonce_value may not be absent for MD5-Sess algorithm."

    #@189
    .line 140
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18c
    throw v4

    #@18d
    .line 143
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    #@18f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@192
    new-instance v5, Ljava/lang/StringBuilder;

    #@194
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@197
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v5

    #@19b
    const-string/jumbo v6, ":"

    #@19e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v5

    #@1a2
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v5

    #@1a6
    const-string/jumbo v6, ":"

    #@1a9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v5

    #@1ad
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v5

    #@1b1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b4
    move-result-object v5

    #@1b5
    invoke-static {v5}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->H(Ljava/lang/String;)Ljava/lang/String;

    #@1b8
    move-result-object v5

    #@1b9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v4

    #@1bd
    const-string/jumbo v5, ":"

    #@1c0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v4

    #@1c4
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v4

    #@1c8
    const-string/jumbo v5, ":"

    #@1cb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v4

    #@1cf
    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v4

    #@1d3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d6
    move-result-object v1

    #@1d7
    .local v1, "A1":Ljava/lang/String;
    goto/16 :goto_1

    #@1d9
    .line 149
    .local v2, "A2":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1dc
    move-result-object v4

    #@1dd
    const-string/jumbo v5, "auth"

    #@1e0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e3
    move-result v4

    #@1e4
    .line 148
    if-nez v4, :cond_5

    #@1e6
    .line 152
    if-nez p9, :cond_b

    #@1e8
    .line 153
    const-string/jumbo p9, ""

    #@1eb
    .line 154
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1ed
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f0
    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v4

    #@1f4
    const-string/jumbo v5, ":"

    #@1f7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v4

    #@1fb
    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v4

    #@1ff
    const-string/jumbo v5, ":"

    #@202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v4

    #@206
    invoke-static/range {p9 .. p9}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->H(Ljava/lang/String;)Ljava/lang/String;

    #@209
    move-result-object v5

    #@20a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v4

    #@20e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@211
    move-result-object v2

    #@212
    .local v2, "A2":Ljava/lang/String;
    goto/16 :goto_2

    #@214
    .line 167
    .local v3, "request_digest":Ljava/lang/String;
    :cond_c
    invoke-static {v1}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->H(Ljava/lang/String;)Ljava/lang/String;

    #@217
    move-result-object v4

    #@218
    new-instance v5, Ljava/lang/StringBuilder;

    #@21a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@21d
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v5

    #@221
    const-string/jumbo v6, ":"

    #@224
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@227
    move-result-object v5

    #@228
    invoke-static {v2}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->H(Ljava/lang/String;)Ljava/lang/String;

    #@22b
    move-result-object v6

    #@22c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v5

    #@230
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@233
    move-result-object v5

    #@234
    invoke-static {v4, v5}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@237
    move-result-object v3

    #@238
    .local v3, "request_digest":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B

    #@0
    .prologue
    .line 217
    const/4 v2, 0x0

    #@1
    .line 218
    .local v2, "pos":I
    array-length v4, p0

    #@2
    mul-int/lit8 v4, v4, 0x2

    #@4
    new-array v0, v4, [C

    #@6
    .line 219
    .local v0, "c":[C
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v4, p0

    #@8
    if-ge v1, v4, :cond_0

    #@a
    .line 220
    add-int/lit8 v3, v2, 0x1

    #@c
    .end local v2    # "pos":I
    .local v3, "pos":I
    sget-object v4, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->toHex:[C

    #@e
    aget-byte v5, p0, v1

    #@10
    shr-int/lit8 v5, v5, 0x4

    #@12
    and-int/lit8 v5, v5, 0xf

    #@14
    aget-char v4, v4, v5

    #@16
    aput-char v4, v0, v2

    #@18
    .line 221
    add-int/lit8 v2, v3, 0x1

    #@1a
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    sget-object v4, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->toHex:[C

    #@1c
    aget-byte v5, p0, v1

    #@1e
    and-int/lit8 v5, v5, 0xf

    #@20
    aget-char v4, v4, v5

    #@22
    aput-char v4, v0, v3

    #@24
    .line 219
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 223
    :cond_0
    new-instance v4, Ljava/lang/String;

    #@29
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    #@2c
    return-object v4
.end method
