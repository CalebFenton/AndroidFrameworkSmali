.class Lsun/net/spi/DefaultProxySelector$1;
.super Ljava/lang/Object;
.source "DefaultProxySelector.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/spi/DefaultProxySelector;->select(Ljava/net/URI;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/Proxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/spi/DefaultProxySelector;

.field final synthetic val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field final synthetic val$proto:Ljava/lang/String;

.field final synthetic val$urlhost:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;Lsun/net/spi/DefaultProxySelector$NonProxyInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/spi/DefaultProxySelector;
    .param p2, "val$proto"    # Ljava/lang/String;
    .param p3, "val$nprop"    # Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    .param p4, "val$urlhost"    # Ljava/lang/String;

    #@0
    .prologue
    .line 190
    iput-object p1, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    #@2
    iput-object p2, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@6
    iput-object p4, p0, Lsun/net/spi/DefaultProxySelector$1;->val$urlhost:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 191
    invoke-virtual {p0}, Lsun/net/spi/DefaultProxySelector$1;->run()Ljava/net/Proxy;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/net/Proxy;
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 193
    const/4 v5, 0x0

    #@2
    .line 194
    .local v5, "phost":Ljava/lang/String;
    const/4 v7, 0x0

    #@3
    .line 195
    .local v7, "pport":I
    const/4 v4, 0x0

    #@4
    .line 196
    .local v4, "nphosts":Ljava/lang/String;
    const/4 v8, 0x0

    #@5
    .line 199
    .local v8, "saddr":Ljava/net/InetSocketAddress;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    #@8
    array-length v11, v11

    #@9
    if-ge v1, v11, :cond_11

    #@b
    .line 200
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    #@d
    aget-object v11, v11, v1

    #@f
    aget-object v11, v11, v14

    #@11
    iget-object v12, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    #@13
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v11

    #@17
    if-eqz v11, :cond_10

    #@19
    .line 201
    const/4 v2, 0x1

    #@1a
    .end local v5    # "phost":Ljava/lang/String;
    .local v2, "j":I
    :goto_1
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    #@1c
    aget-object v11, v11, v1

    #@1e
    array-length v11, v11

    #@1f
    if-ge v2, v11, :cond_0

    #@21
    .line 206
    new-instance v11, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    sget-object v12, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    #@28
    aget-object v12, v12, v1

    #@2a
    aget-object v12, v12, v2

    #@2c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v11

    #@30
    const-string/jumbo v12, "Host"

    #@33
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v11

    #@37
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v11

    #@3b
    invoke-static {v11}, Lsun/net/NetProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 207
    .local v5, "phost":Ljava/lang/String;
    if-eqz v5, :cond_2

    #@41
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@44
    move-result v11

    #@45
    if-eqz v11, :cond_2

    #@47
    .line 210
    .end local v5    # "phost":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    #@49
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@4c
    move-result v11

    #@4d
    if-nez v11, :cond_3

    #@4f
    .line 218
    :cond_1
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@51
    return-object v11

    #@52
    .line 201
    .restart local v5    # "phost":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@54
    goto :goto_1

    #@55
    .line 222
    .end local v5    # "phost":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@57
    if-eqz v11, :cond_a

    #@59
    .line 223
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@5b
    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->property:Ljava/lang/String;

    #@5d
    invoke-static {v11}, Lsun/net/NetProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    .line 224
    .local v4, "nphosts":Ljava/lang/String;
    iget-object v12, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@63
    monitor-enter v12

    #@64
    .line 225
    if-nez v4, :cond_8

    #@66
    .line 226
    :try_start_0
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@68
    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    #@6a
    if-eqz v11, :cond_7

    #@6c
    .line 227
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@6e
    iget-object v4, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    #@70
    .line 239
    :cond_4
    :goto_2
    if-eqz v4, :cond_6

    #@72
    .line 240
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@74
    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    #@76
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v11

    #@7a
    if-nez v11, :cond_6

    #@7c
    .line 241
    new-instance v6, Lsun/misc/RegexpPool;

    #@7e
    invoke-direct {v6}, Lsun/misc/RegexpPool;-><init>()V

    #@81
    .line 242
    .local v6, "pool":Lsun/misc/RegexpPool;
    new-instance v9, Ljava/util/StringTokenizer;

    #@83
    const-string/jumbo v11, "|"

    #@86
    const/4 v13, 0x0

    #@87
    invoke-direct {v9, v4, v11, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8a
    .line 244
    .local v9, "st":Ljava/util/StringTokenizer;
    :goto_3
    :try_start_1
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@8d
    move-result v11

    #@8e
    if-eqz v11, :cond_5

    #@90
    .line 245
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@93
    move-result-object v11

    #@94
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@97
    move-result-object v11

    #@98
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@9a
    invoke-virtual {v6, v11, v13}, Lsun/misc/RegexpPool;->add(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lsun/misc/REException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9d
    goto :goto_3

    #@9e
    .line 247
    :catch_0
    move-exception v0

    #@9f
    .line 249
    :cond_5
    :try_start_2
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@a1
    iput-object v6, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;

    #@a3
    .line 250
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@a5
    iput-object v4, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    #@a7
    .line 253
    .end local v6    # "pool":Lsun/misc/RegexpPool;
    .end local v9    # "st":Ljava/util/StringTokenizer;
    :cond_6
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@a9
    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;

    #@ab
    if-eqz v11, :cond_9

    #@ad
    .line 254
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@af
    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;

    #@b1
    iget-object v13, p0, Lsun/net/spi/DefaultProxySelector$1;->val$urlhost:Ljava/lang/String;

    #@b3
    invoke-virtual {v11, v13}, Lsun/misc/RegexpPool;->match(Ljava/lang/String;)Ljava/lang/Object;

    #@b6
    move-result-object v11

    #@b7
    if-eqz v11, :cond_9

    #@b9
    .line 255
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@bb
    monitor-exit v12

    #@bc
    return-object v11

    #@bd
    .line 229
    :cond_7
    :try_start_3
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@bf
    const/4 v13, 0x0

    #@c0
    iput-object v13, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    #@c2
    .line 230
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@c4
    const/4 v13, 0x0

    #@c5
    iput-object v13, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c7
    goto :goto_2

    #@c8
    .line 224
    :catchall_0
    move-exception v11

    #@c9
    monitor-exit v12

    #@ca
    throw v11

    #@cb
    .line 232
    :cond_8
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@ce
    move-result v11

    #@cf
    if-eqz v11, :cond_4

    #@d1
    .line 236
    new-instance v11, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v11

    #@da
    const-string/jumbo v13, "|localhost|127.*|[::1]|0.0.0.0|[::0]"

    #@dd
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v11

    #@e1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e4
    move-result-object v4

    #@e5
    goto :goto_2

    #@e6
    :cond_9
    monitor-exit v12

    #@e7
    .line 261
    .end local v4    # "nphosts":Ljava/lang/String;
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    sget-object v12, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    #@ee
    aget-object v12, v12, v1

    #@f0
    aget-object v12, v12, v2

    #@f2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v11

    #@f6
    const-string/jumbo v12, "Port"

    #@f9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v11

    #@fd
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v11

    #@101
    invoke-static {v11, v14}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    #@104
    move-result-object v11

    #@105
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@108
    move-result v7

    #@109
    .line 262
    if-nez v7, :cond_c

    #@10b
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    #@10d
    aget-object v11, v11, v1

    #@10f
    array-length v11, v11

    #@110
    add-int/lit8 v11, v11, -0x1

    #@112
    if-ge v2, v11, :cond_c

    #@114
    .line 266
    const/4 v3, 0x1

    #@115
    .local v3, "k":I
    :goto_4
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    #@117
    aget-object v11, v11, v1

    #@119
    array-length v11, v11

    #@11a
    add-int/lit8 v11, v11, -0x1

    #@11c
    if-ge v3, v11, :cond_c

    #@11e
    .line 267
    if-eq v3, v2, :cond_b

    #@120
    if-nez v7, :cond_b

    #@122
    .line 268
    new-instance v11, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    sget-object v12, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    #@129
    aget-object v12, v12, v1

    #@12b
    aget-object v12, v12, v3

    #@12d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v11

    #@131
    const-string/jumbo v12, "Port"

    #@134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v11

    #@138
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v11

    #@13c
    invoke-static {v11, v14}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    #@13f
    move-result-object v11

    #@140
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@143
    move-result v7

    #@144
    .line 266
    :cond_b
    add-int/lit8 v3, v3, 0x1

    #@146
    goto :goto_4

    #@147
    .line 273
    .end local v3    # "k":I
    :cond_c
    if-nez v7, :cond_d

    #@149
    .line 274
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    #@14b
    aget-object v11, v11, v1

    #@14d
    array-length v11, v11

    #@14e
    add-int/lit8 v11, v11, -0x1

    #@150
    if-ne v2, v11, :cond_e

    #@152
    .line 275
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    #@154
    const-string/jumbo v12, "socket"

    #@157
    invoke-static {v11, v12}, Lsun/net/spi/DefaultProxySelector;->-wrap0(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I

    #@15a
    move-result v7

    #@15b
    .line 282
    :cond_d
    :goto_5
    invoke-static {v5, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    #@15e
    move-result-object v8

    #@15f
    .line 284
    .local v8, "saddr":Ljava/net/InetSocketAddress;
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    #@161
    aget-object v11, v11, v1

    #@163
    array-length v11, v11

    #@164
    add-int/lit8 v11, v11, -0x1

    #@166
    if-ne v2, v11, :cond_f

    #@168
    .line 285
    const-string/jumbo v11, "socksProxyVersion"

    #@16b
    const/4 v12, 0x5

    #@16c
    invoke-static {v11, v12}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    #@16f
    move-result-object v11

    #@170
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@173
    move-result v10

    #@174
    .line 286
    .local v10, "version":I
    invoke-static {v8, v10}, Lsun/net/SocksProxy;->create(Ljava/net/SocketAddress;I)Lsun/net/SocksProxy;

    #@177
    move-result-object v11

    #@178
    return-object v11

    #@179
    .line 277
    .end local v10    # "version":I
    .local v8, "saddr":Ljava/net/InetSocketAddress;
    :cond_e
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    #@17b
    iget-object v12, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    #@17d
    invoke-static {v11, v12}, Lsun/net/spi/DefaultProxySelector;->-wrap0(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I

    #@180
    move-result v7

    #@181
    goto :goto_5

    #@182
    .line 288
    .local v8, "saddr":Ljava/net/InetSocketAddress;
    :cond_f
    new-instance v11, Ljava/net/Proxy;

    #@184
    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@186
    invoke-direct {v11, v12, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    #@189
    return-object v11

    #@18a
    .line 199
    .end local v2    # "j":I
    .local v4, "nphosts":Ljava/lang/String;
    .local v5, "phost":Ljava/lang/String;
    .local v8, "saddr":Ljava/net/InetSocketAddress;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    #@18c
    goto/16 :goto_0

    #@18e
    .line 292
    :cond_11
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@190
    return-object v11
.end method
