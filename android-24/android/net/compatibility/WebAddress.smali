.class public Landroid/net/compatibility/WebAddress;
.super Ljava/lang/Object;
.source "WebAddress.java"


# static fields
.field static final MATCH_GROUP_AUTHORITY:I = 0x2

.field static final MATCH_GROUP_HOST:I = 0x3

.field static final MATCH_GROUP_PATH:I = 0x5

.field static final MATCH_GROUP_PORT:I = 0x4

.field static final MATCH_GROUP_SCHEME:I = 0x1

.field static sAddressPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAuthInfo:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPort:I

.field private mScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 54
    const-string/jumbo v0, "(?:(http|https|file)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*\'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*\'(),;?&=]+)?)@)?([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_-][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_\\.-]*|\\[[0-9a-fA-F:\\.]+\\])?(?:\\:([0-9]*))?(\\/?[^#]*)?.*"

    #@3
    .line 59
    const/4 v1, 0x2

    #@4
    .line 53
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroid/net/compatibility/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    #@a
    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x1bb

    #@2
    const/4 v5, -0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 63
    if-nez p1, :cond_0

    #@9
    .line 64
    new-instance v3, Ljava/lang/NullPointerException;

    #@b
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@e
    throw v3

    #@f
    .line 69
    :cond_0
    const-string/jumbo v3, ""

    #@12
    iput-object v3, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    #@14
    .line 70
    const-string/jumbo v3, ""

    #@17
    iput-object v3, p0, Landroid/net/compatibility/WebAddress;->mHost:Ljava/lang/String;

    #@19
    .line 71
    iput v5, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    #@1b
    .line 72
    const-string/jumbo v3, "/"

    #@1e
    iput-object v3, p0, Landroid/net/compatibility/WebAddress;->mPath:Ljava/lang/String;

    #@20
    .line 73
    const-string/jumbo v3, ""

    #@23
    iput-object v3, p0, Landroid/net/compatibility/WebAddress;->mAuthInfo:Ljava/lang/String;

    #@25
    .line 75
    sget-object v3, Landroid/net/compatibility/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    #@27
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@2a
    move-result-object v1

    #@2b
    .line 77
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_9

    #@31
    .line 78
    const/4 v3, 0x1

    #@32
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 79
    .local v2, "t":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@38
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    iput-object v3, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    #@40
    .line 80
    :cond_1
    const/4 v3, 0x2

    #@41
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 81
    if-eqz v2, :cond_2

    #@47
    iput-object v2, p0, Landroid/net/compatibility/WebAddress;->mAuthInfo:Ljava/lang/String;

    #@49
    .line 82
    :cond_2
    const/4 v3, 0x3

    #@4a
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .line 83
    if-eqz v2, :cond_3

    #@50
    iput-object v2, p0, Landroid/net/compatibility/WebAddress;->mHost:Ljava/lang/String;

    #@52
    .line 84
    :cond_3
    const/4 v3, 0x4

    #@53
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    .line 85
    if-eqz v2, :cond_4

    #@59
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@5c
    move-result v3

    #@5d
    if-lez v3, :cond_4

    #@5f
    .line 88
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@62
    move-result v3

    #@63
    iput v3, p0, Landroid/net/compatibility/WebAddress;->mPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@65
    .line 93
    :cond_4
    const/4 v3, 0x5

    #@66
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    .line 94
    if-eqz v2, :cond_5

    #@6c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@6f
    move-result v3

    #@70
    if-lez v3, :cond_5

    #@72
    .line 97
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    #@75
    move-result v3

    #@76
    const/16 v4, 0x2f

    #@78
    if-ne v3, v4, :cond_8

    #@7a
    .line 98
    iput-object v2, p0, Landroid/net/compatibility/WebAddress;->mPath:Ljava/lang/String;

    #@7c
    .line 111
    :cond_5
    :goto_0
    iget v3, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    #@7e
    if-ne v3, v6, :cond_a

    #@80
    iget-object v3, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    #@82
    const-string/jumbo v4, ""

    #@85
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v3

    #@89
    if-eqz v3, :cond_a

    #@8b
    .line 112
    const-string/jumbo v3, "https"

    #@8e
    iput-object v3, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    #@90
    .line 119
    :cond_6
    :goto_1
    iget-object v3, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    #@92
    const-string/jumbo v4, ""

    #@95
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v3

    #@99
    if-eqz v3, :cond_7

    #@9b
    const-string/jumbo v3, "http"

    #@9e
    iput-object v3, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    #@a0
    .line 62
    :cond_7
    return-void

    #@a1
    .line 89
    :catch_0
    move-exception v0

    #@a2
    .line 90
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a4
    const-string/jumbo v4, "Bad port"

    #@a7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v3

    #@ab
    .line 100
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v4, "/"

    #@b3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v3

    #@b7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v3

    #@bb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v3

    #@bf
    iput-object v3, p0, Landroid/net/compatibility/WebAddress;->mPath:Ljava/lang/String;

    #@c1
    goto :goto_0

    #@c2
    .line 106
    .end local v2    # "t":Ljava/lang/String;
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@c4
    const-string/jumbo v4, "Bad address"

    #@c7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ca
    throw v3

    #@cb
    .line 113
    .restart local v2    # "t":Ljava/lang/String;
    :cond_a
    iget v3, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    #@cd
    if-ne v3, v5, :cond_6

    #@cf
    .line 114
    iget-object v3, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    #@d1
    const-string/jumbo v4, "https"

    #@d4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result v3

    #@d8
    if-eqz v3, :cond_b

    #@da
    .line 115
    iput v6, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    #@dc
    goto :goto_1

    #@dd
    .line 117
    :cond_b
    const/16 v3, 0x50

    #@df
    iput v3, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    #@e1
    goto :goto_1
.end method


# virtual methods
.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Landroid/net/compatibility/WebAddress;->mAuthInfo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/net/compatibility/WebAddress;->mHost:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Landroid/net/compatibility/WebAddress;->mPath:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 158
    iget v0, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    #@2
    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "authInfo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    iput-object p1, p0, Landroid/net/compatibility/WebAddress;->mAuthInfo:Ljava/lang/String;

    #@2
    .line 169
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    #@0
    .prologue
    .line 146
    iput-object p1, p0, Landroid/net/compatibility/WebAddress;->mHost:Ljava/lang/String;

    #@2
    .line 145
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    iput-object p1, p0, Landroid/net/compatibility/WebAddress;->mPath:Ljava/lang/String;

    #@2
    .line 161
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    #@0
    .prologue
    .line 154
    iput p1, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    #@2
    .line 153
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 138
    iput-object p1, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    #@2
    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 124
    const-string/jumbo v1, ""

    #@3
    .line 125
    .local v1, "port":Ljava/lang/String;
    iget v2, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    #@5
    const/16 v3, 0x1bb

    #@7
    if-eq v2, v3, :cond_0

    #@9
    iget-object v2, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    #@b
    const-string/jumbo v3, "https"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_1

    #@14
    .line 126
    :cond_0
    iget v2, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    #@16
    const/16 v3, 0x50

    #@18
    if-eq v2, v3, :cond_2

    #@1a
    iget-object v2, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    #@1c
    const-string/jumbo v3, "http"

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    .line 125
    if-eqz v2, :cond_2

    #@25
    .line 127
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, ":"

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    iget v3, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    #@33
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 129
    :cond_2
    const-string/jumbo v0, ""

    #@42
    .line 130
    .local v0, "authInfo":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/compatibility/WebAddress;->mAuthInfo:Ljava/lang/String;

    #@44
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@47
    move-result v2

    #@48
    if-lez v2, :cond_3

    #@4a
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    iget-object v3, p0, Landroid/net/compatibility/WebAddress;->mAuthInfo:Ljava/lang/String;

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    const-string/jumbo v3, "@"

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    .line 134
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    iget-object v3, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    const-string/jumbo v3, "://"

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    iget-object v3, p0, Landroid/net/compatibility/WebAddress;->mHost:Ljava/lang/String;

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    iget-object v3, p0, Landroid/net/compatibility/WebAddress;->mPath:Ljava/lang/String;

    #@82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v2

    #@8a
    return-object v2
.end method
