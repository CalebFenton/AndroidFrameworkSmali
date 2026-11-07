.class public Landroid/net/ProxyInfo;
.super Ljava/lang/Object;
.source "ProxyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ProxyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o LOCAL_EXCL_LIST:Ljava/lang/String; = ""

.field public static final greylist-max-o LOCAL_HOST:Ljava/lang/String; = "localhost"

.field public static final greylist-max-o LOCAL_PORT:I = -0x1


# instance fields
.field private final greylist-max-o mExclusionList:Ljava/lang/String;

.field private final greylist-max-o mHost:Ljava/lang/String;

.field private final greylist-max-o mPacFileUrl:Landroid/net/Uri;

.field private final greylist-max-o mParsedExclusionList:[Ljava/lang/String;

.field private final greylist-max-o mPort:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 356
    new-instance v0, Landroid/net/ProxyInfo$1;

    invoke-direct {v0}, Landroid/net/ProxyInfo$1;-><init>()V

    sput-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/ProxyInfo;)V
    .registers 4
    .param p1, "source"    # Landroid/net/ProxyInfo;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    if-eqz p1, :cond_20

    .line 170
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0

    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 172
    iget-object v0, p1, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 173
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    goto :goto_2e

    .line 176
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 177
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 178
    iput-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    .line 180
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 182
    :goto_2e
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/Uri;)V
    .registers 3
    .param p1, "pacFileUrl"    # Landroid/net/Uri;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-string v0, "localhost"

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 126
    const-string v0, ""

    iput-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/ProxyInfo;->parseExclusionList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    .line 128
    if-eqz p1, :cond_1b

    .line 131
    iput-object p1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 132
    return-void

    .line 129
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/net/Uri;I)V
    .registers 4
    .param p1, "pacFileUrl"    # Landroid/net/Uri;
    .param p2, "localProxyPort"    # I

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-string v0, "localhost"

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 140
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 141
    const-string v0, ""

    iput-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/ProxyInfo;->parseExclusionList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    .line 143
    if-eqz p1, :cond_1a

    .line 146
    iput-object p1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 147
    return-void

    .line 144
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor greylist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "exclList"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 113
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 114
    iput-object p3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/ProxyInfo;->parseExclusionList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    .line 116
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 117
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "parsedExclList"    # [Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 159
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 160
    iput-object p3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 161
    iput-object p4, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    .line 162
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 163
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static whitelist buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;
    .registers 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 72
    new-instance v0, Landroid/net/ProxyInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;
    .registers 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/ProxyInfo;"
        }
    .end annotation

    .line 85
    .local p2, "exclList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 86
    .local v0, "array":[Ljava/lang/String;
    new-instance v1, Landroid/net/ProxyInfo;

    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;
    .registers 2
    .param p0, "pacUri"    # Landroid/net/Uri;

    .line 94
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, p0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public static whitelist buildPacProxy(Landroid/net/Uri;I)Landroid/net/ProxyInfo;
    .registers 3
    .param p0, "pacUrl"    # Landroid/net/Uri;
    .param p1, "port"    # I

    .line 103
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, p0, p1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    return-object v0
.end method

.method private static blacklist parseExclusionList(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "exclusionList"    # Ljava/lang/String;

    .line 150
    if-nez p0, :cond_6

    .line 151
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 153
    :cond_6
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 292
    instance-of v0, p1, Landroid/net/ProxyInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 293
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/ProxyInfo;

    .line 296
    .local v0, "p":Landroid/net/ProxyInfo;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v3, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_28

    .line 297
    iget-object v2, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget v2, p0, Landroid/net/ProxyInfo;->mPort:I

    iget v4, v0, Landroid/net/ProxyInfo;->mPort:I

    if-ne v2, v4, :cond_27

    move v1, v3

    :cond_27
    return v1

    .line 299
    :cond_28
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v4, v0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 300
    return v1

    .line 302
    :cond_33
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-eqz v2, :cond_44

    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 303
    return v1

    .line 305
    :cond_44
    iget-object v2, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_5b

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 306
    return v1

    .line 308
    :cond_5b
    iget-object v2, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_64

    iget-object v2, v0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v2, :cond_64

    return v1

    .line 309
    :cond_64
    iget-object v2, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v2, :cond_6d

    iget-object v2, v0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_6d

    return v1

    .line 310
    :cond_6d
    iget v2, p0, Landroid/net/ProxyInfo;->mPort:I

    iget v4, v0, Landroid/net/ProxyInfo;->mPort:I

    if-eq v2, v4, :cond_74

    return v1

    .line 311
    :cond_74
    return v3
.end method

.method public whitelist getExclusionList()[Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getExclusionListAsString()Ljava/lang/String;
    .registers 2

    .line 233
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHost()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPacFileUrl()Landroid/net/Uri;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getPort()I
    .registers 2

    .line 216
    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    return v0
.end method

.method public greylist-max-o getSocketAddress()Ljava/net/InetSocketAddress;
    .registers 5

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    :try_start_1
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_a} :catch_c

    move-object v0, v1

    goto :goto_d

    .line 191
    :catch_c
    move-exception v1

    :goto_d
    nop

    .line 192
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 327
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 328
    :goto_d
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-nez v2, :cond_12

    goto :goto_18

    :cond_12
    iget-object v1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    add-int/2addr v0, v1

    .line 327
    return v0
.end method

.method public blacklist isPacProxy()Z
    .registers 3

    .line 266
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isValid()Z
    .registers 6

    .line 240
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 241
    :cond_c
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_14

    move-object v0, v2

    goto :goto_16

    :cond_14
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 242
    :goto_16
    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    if-nez v3, :cond_1c

    move-object v3, v2

    goto :goto_22

    :cond_1c
    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 243
    :goto_22
    iget-object v4, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-nez v4, :cond_27

    goto :goto_29

    :cond_27
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 241
    :goto_29
    invoke-static {v0, v3, v2}, Landroid/net/connectivity/com/android/net/module/util/ProxyUtils;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_30

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    return v1
.end method

.method public greylist-max-o makeProxy()Ljava/net/Proxy;
    .registers 5

    .line 250
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 251
    .local v0, "proxy":Ljava/net/Proxy;
    iget-object v1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 253
    :try_start_6
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 254
    .local v1, "inetSocketAddress":Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v2, v3, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_16} :catch_18

    move-object v0, v2

    .line 256
    .end local v1    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    goto :goto_19

    .line 255
    :catch_18
    move-exception v1

    .line 258
    :cond_19
    :goto_19
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v2, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 273
    const-string v1, "PAC Script: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    :cond_19
    iget-object v1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v1, :cond_45

    .line 277
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-object v1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-eqz v1, :cond_4a

    .line 282
    const-string v1, " xl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 285
    :cond_45
    const-string v1, "[ProxyProperties.mHost == null]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_4a
    :goto_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 337
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 338
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 339
    iget-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 340
    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    return-void

    .line 343
    :cond_1a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 345
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 346
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 347
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 350
    :cond_2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 352
    :goto_32
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 354
    return-void
.end method
