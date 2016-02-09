.class abstract Landroid/net/Uri$AbstractHierarchicalUri;
.super Landroid/net/Uri;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractHierarchicalUri"
.end annotation


# instance fields
.field private volatile host:Ljava/lang/String;

.field private volatile port:I

.field private userInfo:Landroid/net/Uri$Part;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1037
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/net/Uri;-><init>(Landroid/net/Uri;)V

    #@4
    .line 1076
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    #@a
    .line 1102
    const/4 v0, -0x2

    #@b
    iput v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    #@d
    .line 1037
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri$AbstractHierarchicalUri;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;-><init>()V

    #@3
    return-void
.end method

.method private getUserInfoPart()Landroid/net/Uri$Part;
    .locals 1

    #@0
    .prologue
    .line 1054
    iget-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->userInfo:Landroid/net/Uri$Part;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1055
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->parseUserInfo()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->userInfo:Landroid/net/Uri$Part;

    #@e
    .line 1054
    :goto_0
    return-object v0

    #@f
    .line 1055
    :cond_0
    iget-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->userInfo:Landroid/net/Uri$Part;

    #@11
    goto :goto_0
.end method

.method private parseHost()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1086
    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getEncodedAuthority()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1087
    .local v0, "authority":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 1088
    return-object v4

    #@8
    .line 1092
    :cond_0
    const/16 v4, 0x40

    #@a
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v3

    #@e
    .line 1093
    .local v3, "userInfoSeparator":I
    const/16 v4, 0x3a

    #@10
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    #@13
    move-result v2

    #@14
    .line 1095
    .local v2, "portSeparator":I
    const/4 v4, -0x1

    #@15
    if-ne v2, v4, :cond_1

    #@17
    .line 1096
    add-int/lit8 v4, v3, 0x1

    #@19
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 1099
    .local v1, "encodedHost":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/net/Uri$AbstractHierarchicalUri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    return-object v4

    #@22
    .line 1097
    .end local v1    # "encodedHost":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v3, 0x1

    #@24
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .restart local v1    # "encodedHost":Ljava/lang/String;
    goto :goto_0
.end method

.method private parsePort()I
    .locals 8

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 1111
    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getEncodedAuthority()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1112
    .local v0, "authority":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 1113
    return v7

    #@8
    .line 1118
    :cond_0
    const/16 v5, 0x40

    #@a
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v4

    #@e
    .line 1119
    .local v4, "userInfoSeparator":I
    const/16 v5, 0x3a

    #@10
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    #@13
    move-result v2

    #@14
    .line 1121
    .local v2, "portSeparator":I
    if-ne v2, v7, :cond_1

    #@16
    .line 1122
    return v7

    #@17
    .line 1125
    :cond_1
    add-int/lit8 v5, v2, 0x1

    #@19
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-static {v5}, Landroid/net/Uri$AbstractHierarchicalUri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 1127
    .local v3, "portString":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result v5

    #@25
    return v5

    #@26
    .line 1128
    :catch_0
    move-exception v1

    #@27
    .line 1129
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Landroid/net/Uri;->-get0()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    const-string/jumbo v6, "Error parsing port string."

    #@2e
    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    .line 1130
    return v7
.end method

.method private parseUserInfo()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1063
    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getEncodedAuthority()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1064
    .local v0, "authority":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 1065
    return-object v2

    #@8
    .line 1068
    :cond_0
    const/16 v3, 0x40

    #@a
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v1

    #@e
    .line 1069
    .local v1, "end":I
    const/4 v3, -0x1

    #@f
    if-ne v1, v3, :cond_1

    #@11
    :goto_0
    return-object v2

    #@12
    :cond_1
    const/4 v2, 0x0

    #@13
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    goto :goto_0
.end method


# virtual methods
.method public final getEncodedUserInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1059
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getUserInfoPart()Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1080
    iget-object v1, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    #@2
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    if-eq v1, v2, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .line 1081
    .local v0, "cached":Z
    :goto_0
    if-eqz v0, :cond_1

    #@b
    iget-object v1, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    #@d
    :goto_1
    return-object v1

    #@e
    .line 1080
    .end local v0    # "cached":Z
    :cond_0
    const/4 v0, 0x0

    #@f
    .restart local v0    # "cached":Z
    goto :goto_0

    #@10
    .line 1082
    :cond_1
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->parseHost()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    #@16
    goto :goto_1
.end method

.method public getLastPathSegment()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1043
    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getPathSegments()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1044
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    .line 1045
    .local v1, "size":I
    if-nez v1, :cond_0

    #@a
    .line 1046
    const/4 v2, 0x0

    #@b
    return-object v2

    #@c
    .line 1048
    :cond_0
    add-int/lit8 v2, v1, -0x1

    #@e
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/lang/String;

    #@14
    return-object v2
.end method

.method public getPort()I
    .locals 2

    #@0
    .prologue
    .line 1105
    iget v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    #@2
    const/4 v1, -0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1106
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->parsePort()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    #@b
    .line 1105
    :goto_0
    return v0

    #@c
    .line 1107
    :cond_0
    iget v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    #@e
    goto :goto_0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1073
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getUserInfoPart()Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
