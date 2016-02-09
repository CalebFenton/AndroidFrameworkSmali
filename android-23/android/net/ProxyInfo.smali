.class public Landroid/net/ProxyInfo;
.super Ljava/lang/Object;
.source "ProxyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ProxyInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/ProxyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCAL_EXCL_LIST:Ljava/lang/String; = ""

.field public static final LOCAL_HOST:Ljava/lang/String; = "localhost"

.field public static final LOCAL_PORT:I = -0x1


# instance fields
.field private mExclusionList:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPacFileUrl:Landroid/net/Uri;

.field private mParsedExclusionList:[Ljava/lang/String;

.field private mPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 338
    new-instance v0, Landroid/net/ProxyInfo$1;

    #@2
    invoke-direct {v0}, Landroid/net/ProxyInfo$1;-><init>()V

    #@5
    .line 337
    sput-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 153
    if-eqz p1, :cond_0

    #@5
    .line 154
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@b
    .line 155
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    #@11
    .line 156
    iget-object v0, p1, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@13
    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@15
    .line 157
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@1b
    .line 158
    iget-object v0, p1, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    #@1d
    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    #@1f
    .line 152
    :goto_0
    return-void

    #@20
    .line 160
    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@22
    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@24
    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "pacFileUrl"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    const-string/jumbo v0, "localhost"

    #@6
    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@8
    .line 107
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    #@b
    .line 108
    const-string/jumbo v0, ""

    #@e
    invoke-direct {p0, v0}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    #@11
    .line 109
    if-nez p1, :cond_0

    #@13
    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    #@15
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@18
    throw v0

    #@19
    .line 112
    :cond_0
    iput-object p1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@1b
    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 1
    .param p1, "pacFileUrl"    # Landroid/net/Uri;
    .param p2, "localProxyPort"    # I

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 131
    const-string/jumbo v0, "localhost"

    #@6
    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@8
    .line 132
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    #@a
    .line 133
    const-string/jumbo v0, ""

    #@d
    invoke-direct {p0, v0}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    #@10
    .line 134
    if-nez p1, :cond_0

    #@12
    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@17
    throw v0

    #@18
    .line 137
    :cond_0
    iput-object p1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@1a
    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pacFileUrl"    # Ljava/lang/String;

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 120
    const-string/jumbo v0, "localhost"

    #@6
    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@8
    .line 121
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    #@b
    .line 122
    const-string/jumbo v0, ""

    #@e
    invoke-direct {p0, v0}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    #@11
    .line 123
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@17
    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "exclList"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@5
    .line 96
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    #@7
    .line 97
    invoke-direct {p0, p3}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    #@a
    .line 98
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@c
    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@e
    .line 94
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "parsedExclList"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 141
    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@5
    .line 142
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    #@7
    .line 143
    iput-object p3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@9
    .line 144
    iput-object p4, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    #@b
    .line 145
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@d
    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@f
    .line 140
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "parsedExclList"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public static buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    #@0
    .prologue
    .line 65
    new-instance v0, Landroid/net/ProxyInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@6
    return-object v0
.end method

.method public static buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/ProxyInfo;"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    .local p2, "exclList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@3
    move-result v1

    #@4
    new-array v1, v1, [Ljava/lang/String;

    #@6
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/lang/String;

    #@c
    .line 79
    .local v0, "array":[Ljava/lang/String;
    new-instance v1, Landroid/net/ProxyInfo;

    #@e
    const-string/jumbo v2, ","

    #@11
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v1, p0, p1, v2, v0}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    #@18
    return-object v1
.end method

.method public static buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;
    .locals 1
    .param p0, "pacUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 87
    new-instance v0, Landroid/net/ProxyInfo;

    #@2
    invoke-direct {v0, p0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    #@5
    return-object v0
.end method

.method private setExclusionList(Ljava/lang/String;)V
    .locals 2
    .param p1, "exclusionList"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    iput-object p1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@2
    .line 218
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 219
    const/4 v0, 0x0

    #@7
    new-array v0, v0, [Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    #@b
    .line 216
    :goto_0
    return-void

    #@c
    .line 221
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ","

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    #@1b
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 300
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 273
    instance-of v3, p1, Landroid/net/ProxyInfo;

    #@4
    if-nez v3, :cond_0

    #@6
    return v2

    #@7
    :cond_0
    move-object v0, p1

    #@8
    .line 274
    check-cast v0, Landroid/net/ProxyInfo;

    #@a
    .line 277
    .local v0, "p":Landroid/net/ProxyInfo;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@c
    iget-object v4, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@e
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_2

    #@14
    .line 278
    iget-object v3, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@16
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    #@22
    iget v4, v0, Landroid/net/ProxyInfo;->mPort:I

    #@24
    if-ne v3, v4, :cond_1

    #@26
    :goto_0
    return v1

    #@27
    :cond_1
    move v1, v2

    #@28
    goto :goto_0

    #@29
    .line 280
    :cond_2
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@2b
    iget-object v4, v0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@2d
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_3

    #@33
    .line 281
    return v2

    #@34
    .line 283
    :cond_3
    iget-object v3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@36
    if-eqz v3, :cond_4

    #@38
    iget-object v3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@3a
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_5

    #@44
    .line 286
    :cond_4
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@46
    if-eqz v3, :cond_6

    #@48
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    if-eqz v3, :cond_6

    #@4e
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@50
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v3

    #@58
    if-nez v3, :cond_6

    #@5a
    .line 287
    return v2

    #@5b
    .line 284
    :cond_5
    return v2

    #@5c
    .line 289
    :cond_6
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@5e
    if-eqz v3, :cond_7

    #@60
    iget-object v3, v0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@62
    if-nez v3, :cond_7

    #@64
    return v2

    #@65
    .line 290
    :cond_7
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@67
    if-nez v3, :cond_8

    #@69
    iget-object v3, v0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@6b
    if-eqz v3, :cond_8

    #@6d
    return v2

    #@6e
    .line 291
    :cond_8
    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    #@70
    iget v4, v0, Landroid/net/ProxyInfo;->mPort:I

    #@72
    if-eq v3, v4, :cond_9

    #@74
    return v2

    #@75
    .line 292
    :cond_9
    return v1
.end method

.method public getExclusionList()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getExclusionListAsString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPacFileUrl()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 196
    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    #@2
    return v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 5

    #@0
    .prologue
    .line 168
    const/4 v1, 0x0

    #@1
    .line 170
    .local v1, "inetSocketAddress":Ljava/net/InetSocketAddress;
    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    #@3
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@5
    iget v4, p0, Landroid/net/ProxyInfo;->mPort:I

    #@7
    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .end local v1    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .local v2, "inetSocketAddress":Ljava/net/InetSocketAddress;
    move-object v1, v2

    #@b
    .line 172
    .end local v2    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    :goto_0
    return-object v1

    #@c
    .line 171
    .restart local v1    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 308
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    move v0, v1

    #@6
    .line 309
    :goto_0
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 308
    :goto_1
    add-int/2addr v0, v1

    #@b
    .line 310
    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    #@d
    .line 308
    add-int/2addr v0, v1

    #@e
    return v0

    #@f
    :cond_0
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@14
    move-result v0

    #@15
    goto :goto_0

    #@16
    .line 309
    :cond_1
    iget-object v1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@1b
    move-result v1

    #@1c
    goto :goto_1
.end method

.method public isValid()Z
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 229
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@4
    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@6
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    return v3

    #@d
    .line 230
    :cond_0
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@f
    if-nez v0, :cond_1

    #@11
    const-string/jumbo v0, ""

    #@14
    .line 231
    :goto_0
    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    #@16
    if-nez v1, :cond_2

    #@18
    const-string/jumbo v1, ""

    #@1b
    .line 232
    :goto_1
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@1d
    if-nez v2, :cond_3

    #@1f
    const-string/jumbo v2, ""

    #@22
    .line 230
    :goto_2
    invoke-static {v0, v1, v2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_4

    #@28
    move v0, v3

    #@29
    :goto_3
    return v0

    #@2a
    :cond_1
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@2c
    goto :goto_0

    #@2d
    .line 231
    :cond_2
    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    #@2f
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    goto :goto_1

    #@34
    .line 232
    :cond_3
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@36
    goto :goto_2

    #@37
    :cond_4
    move v0, v4

    #@38
    .line 230
    goto :goto_3
.end method

.method public makeProxy()Ljava/net/Proxy;
    .locals 6

    #@0
    .prologue
    .line 239
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@2
    .line 240
    .local v2, "proxy":Ljava/net/Proxy;
    iget-object v4, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 242
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    #@8
    iget-object v4, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@a
    iget v5, p0, Landroid/net/ProxyInfo;->mPort:I

    #@c
    invoke-direct {v1, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@f
    .line 243
    .local v1, "inetSocketAddress":Ljava/net/InetSocketAddress;
    new-instance v3, Ljava/net/Proxy;

    #@11
    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@13
    invoke-direct {v3, v4, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .end local v2    # "proxy":Ljava/net/Proxy;
    .local v3, "proxy":Ljava/net/Proxy;
    move-object v2, v3

    #@17
    .line 247
    .end local v1    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v3    # "proxy":Ljava/net/Proxy;
    .restart local v2    # "proxy":Ljava/net/Proxy;
    :cond_0
    :goto_0
    return-object v2

    #@18
    .line 244
    :catch_0
    move-exception v0

    #@19
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 253
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@7
    iget-object v2, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@9
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 254
    const-string/jumbo v1, "PAC Script: "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 255
    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    .line 257
    :cond_0
    iget-object v1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 258
    const-string/jumbo v1, "["

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 259
    iget-object v1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 260
    const-string/jumbo v1, "] "

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 261
    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    #@31
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 262
    iget-object v1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@3a
    if-eqz v1, :cond_1

    #@3c
    .line 263
    const-string/jumbo v1, " xl="

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 268
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    return-object v1

    #@4d
    .line 266
    :cond_2
    const-string/jumbo v1, "[ProxyProperties.mHost == null]"

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 318
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@4
    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@6
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 319
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    #@f
    .line 320
    iget-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    #@11
    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 321
    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 322
    return-void

    #@1a
    .line 324
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@1d
    .line 326
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 327
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    #@24
    .line 328
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    #@26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@29
    .line 329
    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 333
    :goto_0
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@33
    .line 334
    iget-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    #@35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@38
    .line 317
    return-void

    #@39
    .line 331
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@3c
    goto :goto_0
.end method
