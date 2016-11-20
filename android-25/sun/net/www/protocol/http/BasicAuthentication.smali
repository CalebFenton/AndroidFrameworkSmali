.class Lsun/net/www/protocol/http/BasicAuthentication;
.super Lsun/net/www/protocol/http/AuthenticationInfo;
.source "BasicAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x64L


# instance fields
.field auth:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/net/www/protocol/http/BasicAuthentication;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/http/BasicAuthentication;->-assertionsDisabled:Z

    #@b
    .line 45
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "isProxy"    # Z
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "auth"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    if-eqz p1, :cond_0

    #@2
    const/16 v1, 0x70

    #@4
    .line 89
    :goto_0
    sget-object v2, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    #@6
    move-object v0, p0

    #@7
    move-object v3, p2

    #@8
    move v4, p3

    #@9
    move-object v5, p4

    #@a
    .line 88
    invoke-direct/range {v0 .. v5}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/lang/String;ILjava/lang/String;)V

    #@d
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v1, "Basic "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lsun/net/www/protocol/http/BasicAuthentication;->auth:Ljava/lang/String;

    #@23
    .line 87
    return-void

    #@24
    .line 88
    :cond_0
    const/16 v1, 0x73

    #@26
    goto :goto_0
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;Ljava/net/PasswordAuthentication;)V
    .locals 14
    .param p1, "isProxy"    # Z
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "pw"    # Ljava/net/PasswordAuthentication;

    #@0
    .prologue
    .line 58
    if-eqz p1, :cond_1

    #@2
    const/16 v2, 0x70

    #@4
    .line 59
    :goto_0
    sget-object v3, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    #@6
    move-object v1, p0

    #@7
    move-object/from16 v4, p2

    #@9
    move/from16 v5, p3

    #@b
    move-object/from16 v6, p4

    #@d
    .line 58
    invoke-direct/range {v1 .. v6}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/lang/String;ILjava/lang/String;)V

    #@10
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual/range {p5 .. p5}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, ":"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v12

    #@28
    .line 61
    .local v12, "plain":Ljava/lang/String;
    const/4 v9, 0x0

    #@29
    .line 63
    .local v9, "nameBytes":[B
    :try_start_0
    const-string/jumbo v1, "ISO-8859-1"

    #@2c
    invoke-virtual {v12, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    move-result-object v9

    #@30
    .line 69
    .end local v9    # "nameBytes":[B
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/net/PasswordAuthentication;->getPassword()[C

    #@33
    move-result-object v10

    #@34
    .line 70
    .local v10, "passwd":[C
    array-length v1, v10

    #@35
    new-array v11, v1, [B

    #@37
    .line 71
    .local v11, "passwdBytes":[B
    const/4 v8, 0x0

    #@38
    .local v8, "i":I
    :goto_1
    array-length v1, v10

    #@39
    if-ge v8, v1, :cond_2

    #@3b
    .line 72
    aget-char v1, v10, v8

    #@3d
    int-to-byte v1, v1

    #@3e
    aput-byte v1, v11, v8

    #@40
    .line 71
    add-int/lit8 v8, v8, 0x1

    #@42
    goto :goto_1

    #@43
    .line 58
    .end local v8    # "i":I
    .end local v10    # "passwd":[C
    .end local v11    # "passwdBytes":[B
    .end local v12    # "plain":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x73

    #@45
    goto :goto_0

    #@46
    .line 64
    .restart local v9    # "nameBytes":[B
    .restart local v12    # "plain":Ljava/lang/String;
    :catch_0
    move-exception v13

    #@47
    .line 65
    .local v13, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v1, Lsun/net/www/protocol/http/BasicAuthentication;->-assertionsDisabled:Z

    #@49
    if-nez v1, :cond_0

    #@4b
    new-instance v1, Ljava/lang/AssertionError;

    #@4d
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@50
    throw v1

    #@51
    .line 75
    .end local v9    # "nameBytes":[B
    .end local v13    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v8    # "i":I
    .restart local v10    # "passwd":[C
    .restart local v11    # "passwdBytes":[B
    :cond_2
    array-length v1, v9

    #@52
    array-length v2, v11

    #@53
    add-int/2addr v1, v2

    #@54
    new-array v7, v1, [B

    #@56
    .line 76
    .local v7, "concat":[B
    array-length v1, v9

    #@57
    const/4 v2, 0x0

    #@58
    const/4 v3, 0x0

    #@59
    invoke-static {v9, v2, v7, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@5c
    .line 77
    array-length v1, v9

    #@5d
    .line 78
    array-length v2, v11

    #@5e
    .line 77
    const/4 v3, 0x0

    #@5f
    invoke-static {v11, v3, v7, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@62
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v2, "Basic "

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    new-instance v2, Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;

    #@70
    const/4 v3, 0x0

    #@71
    invoke-direct {v2, p0, v3}, Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;-><init>(Lsun/net/www/protocol/http/BasicAuthentication;Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;)V

    #@74
    invoke-virtual {v2, v7}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    iput-object v1, p0, Lsun/net/www/protocol/http/BasicAuthentication;->auth:Ljava/lang/String;

    #@82
    .line 80
    move-object/from16 v0, p5

    #@84
    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@86
    .line 57
    return-void
.end method

.method public constructor <init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "isProxy"    # Z
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "auth"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    if-eqz p1, :cond_0

    #@2
    const/16 v0, 0x70

    #@4
    .line 129
    :goto_0
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    #@6
    .line 128
    invoke-direct {p0, v0, v1, p2, p3}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/net/URL;Ljava/lang/String;)V

    #@9
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "Basic "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lsun/net/www/protocol/http/BasicAuthentication;->auth:Ljava/lang/String;

    #@1f
    .line 127
    return-void

    #@20
    .line 128
    :cond_0
    const/16 v0, 0x73

    #@22
    goto :goto_0
.end method

.method public constructor <init>(ZLjava/net/URL;Ljava/lang/String;Ljava/net/PasswordAuthentication;)V
    .locals 10
    .param p1, "isProxy"    # Z
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "pw"    # Ljava/net/PasswordAuthentication;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 98
    if-eqz p1, :cond_1

    #@3
    const/16 v7, 0x70

    #@5
    .line 99
    :goto_0
    sget-object v8, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    #@7
    .line 98
    invoke-direct {p0, v7, v8, p2, p3}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/net/URL;Ljava/lang/String;)V

    #@a
    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {p4}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    #@12
    move-result-object v8

    #@13
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v7

    #@17
    const-string/jumbo v8, ":"

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    .line 101
    .local v5, "plain":Ljava/lang/String;
    const/4 v2, 0x0

    #@23
    .line 103
    .local v2, "nameBytes":[B
    :try_start_0
    const-string/jumbo v7, "ISO-8859-1"

    #@26
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result-object v2

    #@2a
    .line 109
    .end local v2    # "nameBytes":[B
    :cond_0
    invoke-virtual {p4}, Ljava/net/PasswordAuthentication;->getPassword()[C

    #@2d
    move-result-object v3

    #@2e
    .line 110
    .local v3, "passwd":[C
    array-length v7, v3

    #@2f
    new-array v4, v7, [B

    #@31
    .line 111
    .local v4, "passwdBytes":[B
    const/4 v1, 0x0

    #@32
    .local v1, "i":I
    :goto_1
    array-length v7, v3

    #@33
    if-ge v1, v7, :cond_2

    #@35
    .line 112
    aget-char v7, v3, v1

    #@37
    int-to-byte v7, v7

    #@38
    aput-byte v7, v4, v1

    #@3a
    .line 111
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 98
    .end local v1    # "i":I
    .end local v3    # "passwd":[C
    .end local v4    # "passwdBytes":[B
    .end local v5    # "plain":Ljava/lang/String;
    :cond_1
    const/16 v7, 0x73

    #@3f
    goto :goto_0

    #@40
    .line 104
    .restart local v2    # "nameBytes":[B
    .restart local v5    # "plain":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@41
    .line 105
    .local v6, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v7, Lsun/net/www/protocol/http/BasicAuthentication;->-assertionsDisabled:Z

    #@43
    if-nez v7, :cond_0

    #@45
    new-instance v7, Ljava/lang/AssertionError;

    #@47
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@4a
    throw v7

    #@4b
    .line 115
    .end local v2    # "nameBytes":[B
    .end local v6    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    .restart local v3    # "passwd":[C
    .restart local v4    # "passwdBytes":[B
    :cond_2
    array-length v7, v2

    #@4c
    array-length v8, v4

    #@4d
    add-int/2addr v7, v8

    #@4e
    new-array v0, v7, [B

    #@50
    .line 116
    .local v0, "concat":[B
    array-length v7, v2

    #@51
    invoke-static {v2, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@54
    .line 117
    array-length v7, v2

    #@55
    .line 118
    array-length v8, v4

    #@56
    .line 117
    invoke-static {v4, v9, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@59
    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v8, "Basic "

    #@61
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    new-instance v8, Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;

    #@67
    const/4 v9, 0x0

    #@68
    invoke-direct {v8, p0, v9}, Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;-><init>(Lsun/net/www/protocol/http/BasicAuthentication;Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;)V

    #@6b
    invoke-virtual {v8, v0}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    #@6e
    move-result-object v8

    #@6f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v7

    #@77
    iput-object v7, p0, Lsun/net/www/protocol/http/BasicAuthentication;->auth:Ljava/lang/String;

    #@79
    .line 120
    iput-object p4, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@7b
    .line 97
    return-void
.end method

.method static getRootPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "npath"    # Ljava/lang/String;
    .param p1, "opath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 183
    const/4 v1, 0x0

    #@2
    .line 188
    .local v1, "index":I
    :try_start_0
    new-instance v3, Ljava/net/URI;

    #@4
    invoke-direct {v3, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    .line 189
    new-instance v3, Ljava/net/URI;

    #@11
    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object p1

    #@1c
    .line 194
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1f
    move-result v3

    #@20
    if-ge v1, v3, :cond_1

    #@22
    .line 195
    const/16 v3, 0x2f

    #@24
    add-int/lit8 v4, v1, 0x1

    #@26
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    #@29
    move-result v2

    #@2a
    .line 196
    .local v2, "toindex":I
    const/4 v3, -0x1

    #@2b
    if-eq v2, v3, :cond_0

    #@2d
    add-int/lit8 v3, v2, 0x1

    #@2f
    invoke-virtual {p1, v5, p0, v5, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_0

    #@35
    .line 197
    move v1, v2

    #@36
    goto :goto_0

    #@37
    .line 199
    :cond_0
    add-int/lit8 v3, v1, 0x1

    #@39
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    return-object v3

    #@3e
    .line 202
    .end local v2    # "toindex":I
    :cond_1
    return-object p0

    #@3f
    .line 190
    :catch_0
    move-exception v0

    #@40
    .local v0, "e":Ljava/net/URISyntaxException;
    goto :goto_0
.end method


# virtual methods
.method public getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lsun/net/www/protocol/http/BasicAuthentication;->auth:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isAuthorizationStale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    #@0
    .prologue
    .line 173
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z
    .locals 2
    .param p1, "conn"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .param p2, "p"    # Lsun/net/www/HeaderParser;
    .param p3, "raw"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 151
    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v1, v1}, Lsun/net/www/protocol/http/BasicAuthentication;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p1, v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->setAuthenticationProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 152
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method public supportsPreemptiveAuthorization()Z
    .locals 1

    #@0
    .prologue
    .line 138
    const/4 v0, 0x1

    #@1
    return v0
.end method
