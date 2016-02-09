.class final Landroid/net/LinkProperties$1;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/LinkProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1146
    new-instance v4, Landroid/net/LinkProperties;

    #@3
    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    #@6
    .line 1148
    .local v4, "netProp":Landroid/net/LinkProperties;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 1149
    .local v3, "iface":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@c
    .line 1150
    invoke-virtual {v4, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    #@f
    .line 1152
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    .line 1153
    .local v0, "addressCount":I
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@16
    .line 1154
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@19
    move-result-object v8

    #@1a
    check-cast v8, Landroid/net/LinkAddress;

    #@1c
    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    #@1f
    .line 1153
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1156
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v0

    #@26
    .line 1157
    const/4 v2, 0x0

    #@27
    :goto_1
    if-ge v2, v0, :cond_2

    #@29
    .line 1159
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@2c
    move-result-object v8

    #@2d
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 1157
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_1

    #@37
    .line 1162
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    #@3e
    .line 1163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v8

    #@42
    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->setMtu(I)V

    #@45
    .line 1164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    #@4c
    .line 1165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v0

    #@50
    .line 1166
    const/4 v2, 0x0

    #@51
    :goto_3
    if-ge v2, v0, :cond_3

    #@53
    .line 1167
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@56
    move-result-object v8

    #@57
    check-cast v8, Landroid/net/RouteInfo;

    #@59
    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    #@5c
    .line 1166
    add-int/lit8 v2, v2, 0x1

    #@5e
    goto :goto_3

    #@5f
    .line 1169
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@62
    move-result v8

    #@63
    const/4 v9, 0x1

    #@64
    if-ne v8, v9, :cond_4

    #@66
    .line 1170
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@69
    move-result-object v8

    #@6a
    check-cast v8, Landroid/net/ProxyInfo;

    #@6c
    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    #@6f
    .line 1172
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    #@71
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@74
    .line 1173
    .local v7, "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    const-class v8, Landroid/net/LinkProperties;

    #@76
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@79
    move-result-object v8

    #@7a
    invoke-virtual {p1, v7, v8}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    #@7d
    .line 1174
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@80
    move-result-object v6

    #@81
    .local v6, "stackedLink$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@84
    move-result v8

    #@85
    if-eqz v8, :cond_5

    #@87
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8a
    move-result-object v5

    #@8b
    check-cast v5, Landroid/net/LinkProperties;

    #@8d
    .line 1175
    .local v5, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    #@90
    goto :goto_4

    #@91
    .line 1177
    .end local v5    # "stackedLink":Landroid/net/LinkProperties;
    :cond_5
    return-object v4

    #@92
    .line 1160
    .end local v6    # "stackedLink$iterator":Ljava/util/Iterator;
    .end local v7    # "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    :catch_0
    move-exception v1

    #@93
    .local v1, "e":Ljava/net/UnknownHostException;
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1145
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkProperties;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1181
    new-array v0, p1, [Landroid/net/LinkProperties;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1180
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->newArray(I)[Landroid/net/LinkProperties;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
