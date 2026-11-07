.class public Landroid/net/WebAddress;
.super Ljava/lang/Object;
.source "WebAddress.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field static final greylist-max-o MATCH_GROUP_AUTHORITY:I = 0x2

.field static final greylist-max-o MATCH_GROUP_HOST:I = 0x3

.field static final greylist-max-o MATCH_GROUP_PATH:I = 0x5

.field static final greylist-max-o MATCH_GROUP_PORT:I = 0x4

.field static final greylist-max-o MATCH_GROUP_SCHEME:I = 0x1

.field static greylist-max-o sAddressPattern:Ljava/util/regex/Pattern;


# instance fields
.field private greylist-max-o mAuthInfo:Ljava/lang/String;

.field private greylist mHost:Ljava/lang/String;

.field private greylist mPath:Ljava/lang/String;

.field private greylist-max-p mPort:I

.field private greylist mScheme:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 67
    const-string v0, "(?:(http|https|file)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*\'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*\'(),;?&=]+)?)@)?([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_-][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_\\.-]*|\\[[0-9a-fA-F:\\.]+\\])?(?:\\:([0-9]*))?(\\/?[^#]*)?.*"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ParseException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-eqz p1, :cond_c7

    .line 83
    const-string v0, ""

    iput-object v0, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/WebAddress;->mPort:I

    .line 86
    const-string v2, "/"

    iput-object v2, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 89
    sget-object v3, Landroid/net/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 91
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 92
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "t":Ljava/lang/String;
    if-eqz v4, :cond_2f

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    .line 94
    :cond_2f
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 95
    if-eqz v4, :cond_38

    iput-object v4, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 96
    :cond_38
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    if-eqz v4, :cond_41

    iput-object v4, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    .line 98
    :cond_41
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5e

    .line 102
    :try_start_4e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/net/WebAddress;->mPort:I
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_54} :catch_55

    .line 105
    goto :goto_5e

    .line 103
    :catch_55
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Landroid/net/ParseException;

    const-string v2, "Bad port"

    invoke-direct {v1, v2}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_5e
    :goto_5e
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 108
    if-eqz v4, :cond_8a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8a

    .line 111
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_77

    .line 112
    iput-object v4, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    goto :goto_8a

    .line 114
    :cond_77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    .line 125
    :cond_8a
    :goto_8a
    iget v2, p0, Landroid/net/WebAddress;->mPort:I

    const-string/jumbo v5, "https"

    const/16 v6, 0x1bb

    if-ne v2, v6, :cond_9e

    iget-object v2, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 126
    iput-object v5, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    goto :goto_b1

    .line 127
    :cond_9e
    iget v2, p0, Landroid/net/WebAddress;->mPort:I

    if-ne v2, v1, :cond_b1

    .line 128
    iget-object v1, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 129
    iput v6, p0, Landroid/net/WebAddress;->mPort:I

    goto :goto_b1

    .line 131
    :cond_ad
    const/16 v1, 0x50

    iput v1, p0, Landroid/net/WebAddress;->mPort:I

    .line 133
    :cond_b1
    :goto_b1
    iget-object v1, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    const-string/jumbo v0, "http"

    iput-object v0, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    .line 134
    :cond_be
    return-void

    .line 120
    .end local v4    # "t":Ljava/lang/String;
    :cond_bf
    new-instance v0, Landroid/net/ParseException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_c7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public greylist-max-r getAuthInfo()Ljava/lang/String;
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getHost()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPath()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPort()I
    .registers 2

    .line 183
    iget v0, p0, Landroid/net/WebAddress;->mPort:I

    return v0
.end method

.method public greylist getScheme()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o setAuthInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "authInfo"    # Ljava/lang/String;

    .line 200
    iput-object p1, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public greylist-max-r setHost(Ljava/lang/String;)V
    .registers 2
    .param p1, "host"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public greylist setPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 189
    iput-object p1, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public greylist-max-o setPort(I)V
    .registers 2
    .param p1, "port"    # I

    .line 177
    iput p1, p0, Landroid/net/WebAddress;->mPort:I

    .line 178
    return-void
.end method

.method public greylist-max-o setScheme(Ljava/lang/String;)V
    .registers 2
    .param p1, "scheme"    # Ljava/lang/String;

    .line 154
    iput-object p1, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 139
    const-string v0, ""

    .line 140
    .local v0, "port":Ljava/lang/String;
    iget v1, p0, Landroid/net/WebAddress;->mPort:I

    const/16 v2, 0x1bb

    if-eq v1, v2, :cond_13

    iget-object v1, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    :cond_13
    iget v1, p0, Landroid/net/WebAddress;->mPort:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_3d

    iget-object v1, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    .line 141
    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 142
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/WebAddress;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_3d
    const-string v1, ""

    .line 145
    .local v1, "authInfo":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5c

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
