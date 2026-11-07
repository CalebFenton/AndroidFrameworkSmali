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
.field private volatile greylist-max-o host:Ljava/lang/String;

.field private volatile greylist-max-o port:I

.field private greylist-max-o userInfo:Landroid/net/Uri$Part;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 1074
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/Uri;-><init>(Landroid/net/Uri-IA;)V

    .line 1113
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    .line 1138
    const/4 v0, -0x2

    iput v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;-><init>()V

    return-void
.end method

.method private blacklist findPortSeparator(Ljava/lang/String;)I
    .registers 6
    .param p1, "authority"    # Ljava/lang/String;

    .line 1163
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 1164
    return v0

    .line 1171
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_22

    .line 1172
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1173
    .local v2, "character":I
    const/16 v3, 0x3a

    if-ne v3, v2, :cond_15

    return v1

    .line 1175
    :cond_15
    const/16 v3, 0x30

    if-lt v2, v3, :cond_21

    const/16 v3, 0x39

    if-le v2, v3, :cond_1e

    goto :goto_21

    .line 1171
    .end local v2    # "character":I
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1175
    .restart local v2    # "character":I
    :cond_21
    :goto_21
    return v0

    .line 1177
    .end local v1    # "i":I
    .end local v2    # "character":I
    :cond_22
    return v0
.end method

.method private greylist-max-o getUserInfoPart()Landroid/net/Uri$Part;
    .registers 2

    .line 1091
    iget-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->userInfo:Landroid/net/Uri$Part;

    if-nez v0, :cond_f

    .line 1092
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->parseUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->userInfo:Landroid/net/Uri$Part;

    goto :goto_11

    :cond_f
    iget-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->userInfo:Landroid/net/Uri$Part;

    .line 1091
    :goto_11
    return-object v0
.end method

.method private greylist-max-o parseHost()Ljava/lang/String;
    .registers 6

    .line 1122
    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1123
    .local v0, "authority":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1124
    const/4 v1, 0x0

    return-object v1

    .line 1128
    :cond_8
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1129
    .local v1, "userInfoSeparator":I
    invoke-direct {p0, v0}, Landroid/net/Uri$AbstractHierarchicalUri;->findPortSeparator(Ljava/lang/String;)I

    move-result v2

    .line 1131
    .local v2, "portSeparator":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    .line 1132
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 1133
    :cond_1c
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_22
    nop

    .line 1135
    .local v3, "encodedHost":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri$AbstractHierarchicalUri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private greylist-max-o parsePort()I
    .registers 8

    .line 1147
    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, "authority":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/Uri$AbstractHierarchicalUri;->findPortSeparator(Ljava/lang/String;)I

    move-result v1

    .line 1149
    .local v1, "portSeparator":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 1150
    return v2

    .line 1153
    :cond_c
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri$AbstractHierarchicalUri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1155
    .local v3, "portString":Ljava/lang/String;
    :try_start_16
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1a} :catch_1b

    return v2

    .line 1156
    :catch_1b
    move-exception v4

    .line 1157
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Landroid/net/Uri;->-$$Nest$sfgetLOG()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error parsing port string."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1158
    return v2
.end method

.method private greylist-max-o parseUserInfo()Ljava/lang/String;
    .registers 5

    .line 1100
    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1101
    .local v0, "authority":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1102
    return-object v1

    .line 1105
    :cond_8
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1106
    .local v2, "end":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    goto :goto_17

    :cond_12
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_17
    return-object v1
.end method


# virtual methods
.method public final whitelist getEncodedUserInfo()Ljava/lang/String;
    .registers 2

    .line 1096
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getUserInfoPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHost()Ljava/lang/String;
    .registers 3

    .line 1117
    iget-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    sget-object v1, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1118
    .local v0, "cached":Z
    :goto_9
    if-eqz v0, :cond_e

    iget-object v1, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    goto :goto_14

    :cond_e
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->parseHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    :goto_14
    return-object v1
.end method

.method public whitelist getLastPathSegment()Ljava/lang/String;
    .registers 4

    .line 1080
    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1081
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1082
    .local v1, "size":I
    if-nez v1, :cond_c

    .line 1083
    const/4 v2, 0x0

    return-object v2

    .line 1085
    :cond_c
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public whitelist getPort()I
    .registers 3

    .line 1141
    iget v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_c

    .line 1142
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->parsePort()I

    move-result v0

    iput v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    goto :goto_e

    .line 1143
    :cond_c
    iget v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    .line 1141
    :goto_e
    return v0
.end method

.method public whitelist getUserInfo()Ljava/lang/String;
    .registers 2

    .line 1110
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getUserInfoPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
