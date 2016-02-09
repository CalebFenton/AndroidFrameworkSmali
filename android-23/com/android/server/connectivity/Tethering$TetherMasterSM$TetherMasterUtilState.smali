.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterUtilState"
.end annotation


# static fields
.field protected static final TRY_TO_SETUP_MOBILE_CONNECTION:Z = true

.field protected static final WAIT_FOR_NETWORK_TO_SETTLE:Z


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@0
    .prologue
    .line 1192
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected chooseUpstreamType(Z)V
    .locals 23
    .param p1, "tryCell"    # Z

    #@0
    .prologue
    .line 1283
    const/16 v17, -0x1

    #@2
    .line 1284
    .local v17, "upType":I
    const/4 v9, 0x0

    #@3
    .line 1286
    .local v9, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@7
    move-object/from16 v19, v0

    #@9
    move-object/from16 v0, v19

    #@b
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@d
    move-object/from16 v19, v0

    #@f
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    #@12
    .line 1288
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@16
    move-object/from16 v19, v0

    #@18
    move-object/from16 v0, v19

    #@1a
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@1c
    move-object/from16 v19, v0

    #@1e
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@21
    move-result-object v20

    #@22
    monitor-enter v20

    #@23
    .line 1296
    :try_start_0
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@27
    move-object/from16 v19, v0

    #@29
    move-object/from16 v0, v19

    #@2b
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2d
    move-object/from16 v19, v0

    #@2f
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    #@32
    move-result-object v19

    #@33
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v14

    #@37
    .local v14, "netType$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v19

    #@3b
    if-eqz v19, :cond_1

    #@3d
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v13

    #@41
    check-cast v13, Ljava/lang/Integer;

    #@43
    .line 1298
    .local v13, "netType":Ljava/lang/Integer;
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@47
    move-object/from16 v19, v0

    #@49
    move-object/from16 v0, v19

    #@4b
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@4d
    move-object/from16 v19, v0

    #@4f
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@52
    move-result-object v19

    #@53
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    #@56
    move-result v21

    #@57
    move-object/from16 v0, v19

    #@59
    move/from16 v1, v21

    #@5b
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    #@5e
    move-result-object v10

    #@5f
    .line 1299
    .local v10, "info":Landroid/net/NetworkInfo;
    if-eqz v10, :cond_0

    #@61
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    #@64
    move-result v19

    #@65
    if-eqz v19, :cond_0

    #@67
    .line 1300
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6a
    move-result v17

    #@6b
    .end local v10    # "info":Landroid/net/NetworkInfo;
    .end local v13    # "netType":Ljava/lang/Integer;
    :cond_1
    monitor-exit v20

    #@6c
    .line 1307
    const-string/jumbo v19, "Tethering"

    #@6f
    new-instance v20, Ljava/lang/StringBuilder;

    #@71
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v21, "chooseUpstreamType("

    #@77
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v20

    #@7b
    move-object/from16 v0, v20

    #@7d
    move/from16 v1, p1

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@82
    move-result-object v20

    #@83
    const-string/jumbo v21, "), preferredApn ="

    #@86
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v20

    #@8a
    .line 1308
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@8e
    move-object/from16 v21, v0

    #@90
    move-object/from16 v0, v21

    #@92
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@94
    move-object/from16 v21, v0

    #@96
    invoke-static/range {v21 .. v21}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)I

    #@99
    move-result v21

    #@9a
    .line 1307
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v20

    #@9e
    .line 1308
    const-string/jumbo v21, ", got type="

    #@a1
    .line 1307
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v20

    #@a5
    move-object/from16 v0, v20

    #@a7
    move/from16 v1, v17

    #@a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v20

    #@ad
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v20

    #@b1
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b4
    .line 1312
    const/16 v19, 0x4

    #@b6
    move/from16 v0, v17

    #@b8
    move/from16 v1, v19

    #@ba
    if-eq v0, v1, :cond_2

    #@bc
    .line 1313
    const/16 v19, 0x5

    #@be
    move/from16 v0, v17

    #@c0
    move/from16 v1, v19

    #@c2
    if-ne v0, v1, :cond_6

    #@c4
    .line 1314
    :cond_2
    move-object/from16 v0, p0

    #@c6
    move/from16 v1, v17

    #@c8
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    #@cb
    .line 1325
    :cond_3
    :goto_0
    const/16 v19, -0x1

    #@cd
    move/from16 v0, v17

    #@cf
    move/from16 v1, v19

    #@d1
    if-ne v0, v1, :cond_7

    #@d3
    .line 1326
    const/16 v16, 0x1

    #@d5
    .line 1327
    .local v16, "tryAgainLater":Z
    if-eqz p1, :cond_4

    #@d7
    .line 1328
    move-object/from16 v0, p0

    #@d9
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@db
    move-object/from16 v19, v0

    #@dd
    move-object/from16 v0, v19

    #@df
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@e1
    move-object/from16 v19, v0

    #@e3
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)I

    #@e6
    move-result v19

    #@e7
    move-object/from16 v0, p0

    #@e9
    move/from16 v1, v19

    #@eb
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    #@ee
    move-result v19

    #@ef
    if-eqz v19, :cond_4

    #@f1
    .line 1330
    const/16 v16, 0x0

    #@f3
    .line 1332
    :cond_4
    if-eqz v16, :cond_5

    #@f5
    .line 1333
    move-object/from16 v0, p0

    #@f7
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@f9
    move-object/from16 v19, v0

    #@fb
    const-wide/16 v20, 0x2710

    #@fd
    const/16 v22, 0x5

    #@ff
    move-object/from16 v0, v19

    #@101
    move/from16 v1, v22

    #@103
    move-wide/from16 v2, v20

    #@105
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    #@108
    .line 1385
    .end local v9    # "iface":Ljava/lang/String;
    .end local v16    # "tryAgainLater":Z
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    #@10a
    invoke-virtual {v0, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    #@10d
    .line 1282
    return-void

    #@10e
    .line 1288
    .end local v14    # "netType$iterator":Ljava/util/Iterator;
    .restart local v9    # "iface":Ljava/lang/String;
    :catchall_0
    move-exception v19

    #@10f
    monitor-exit v20

    #@110
    throw v19

    #@111
    .line 1315
    .restart local v14    # "netType$iterator":Ljava/util/Iterator;
    :cond_6
    const/16 v19, -0x1

    #@113
    move/from16 v0, v17

    #@115
    move/from16 v1, v19

    #@117
    if-eq v0, v1, :cond_3

    #@119
    .line 1322
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    #@11c
    goto :goto_0

    #@11d
    .line 1337
    :cond_7
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@121
    move-object/from16 v19, v0

    #@123
    move-object/from16 v0, v19

    #@125
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@127
    move-object/from16 v19, v0

    #@129
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@12c
    move-result-object v19

    #@12d
    move-object/from16 v0, v19

    #@12f
    move/from16 v1, v17

    #@131
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    #@134
    move-result-object v12

    #@135
    .line 1338
    .local v12, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v12, :cond_8

    #@137
    .line 1342
    const-string/jumbo v19, "Tethering"

    #@13a
    new-instance v20, Ljava/lang/StringBuilder;

    #@13c
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@13f
    const-string/jumbo v21, "Finding IPv4 upstream interface on: "

    #@142
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v20

    #@146
    move-object/from16 v0, v20

    #@148
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v20

    #@14c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v20

    #@150
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@153
    .line 1344
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@156
    move-result-object v19

    #@157
    sget-object v20, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@159
    .line 1343
    invoke-static/range {v19 .. v20}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    #@15c
    move-result-object v11

    #@15d
    .line 1345
    .local v11, "ipv4Default":Landroid/net/RouteInfo;
    if-eqz v11, :cond_a

    #@15f
    .line 1346
    invoke-virtual {v11}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@162
    move-result-object v9

    #@163
    .line 1347
    .local v9, "iface":Ljava/lang/String;
    const-string/jumbo v19, "Tethering"

    #@166
    new-instance v20, Ljava/lang/StringBuilder;

    #@168
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@16b
    const-string/jumbo v21, "Found interface "

    #@16e
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v20

    #@172
    invoke-virtual {v11}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@175
    move-result-object v21

    #@176
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v20

    #@17a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17d
    move-result-object v20

    #@17e
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@181
    .line 1353
    .end local v9    # "iface":Ljava/lang/String;
    .end local v11    # "ipv4Default":Landroid/net/RouteInfo;
    :cond_8
    :goto_2
    if-eqz v9, :cond_5

    #@183
    .line 1354
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@187
    move-object/from16 v19, v0

    #@189
    move-object/from16 v0, v19

    #@18b
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@18d
    move-object/from16 v19, v0

    #@18f
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->-get1(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    #@192
    move-result-object v6

    #@193
    .line 1355
    .local v6, "dnsServers":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@196
    move-result-object v7

    #@197
    .line 1356
    .local v7, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v7, :cond_c

    #@199
    .line 1359
    new-instance v18, Ljava/util/ArrayList;

    #@19b
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    #@19e
    move-result v19

    #@19f
    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(I)V

    #@1a2
    .line 1360
    .local v18, "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a5
    move-result-object v5

    #@1a6
    .local v5, "dnsAddress$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1a9
    move-result v19

    #@1aa
    if-eqz v19, :cond_b

    #@1ac
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1af
    move-result-object v4

    #@1b0
    check-cast v4, Ljava/net/InetAddress;

    #@1b2
    .line 1361
    .local v4, "dnsAddress":Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet4Address;

    #@1b4
    move/from16 v19, v0

    #@1b6
    if-eqz v19, :cond_9

    #@1b8
    .line 1362
    move-object/from16 v0, v18

    #@1ba
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1bd
    goto :goto_3

    #@1be
    .line 1349
    .end local v4    # "dnsAddress":Ljava/net/InetAddress;
    .end local v5    # "dnsAddress$iterator":Ljava/util/Iterator;
    .end local v6    # "dnsServers":[Ljava/lang/String;
    .end local v7    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v18    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .local v9, "iface":Ljava/lang/String;
    .restart local v11    # "ipv4Default":Landroid/net/RouteInfo;
    :cond_a
    const-string/jumbo v19, "Tethering"

    #@1c1
    const-string/jumbo v20, "No IPv4 upstream interface, giving up."

    #@1c4
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1c7
    goto :goto_2

    #@1c8
    .line 1365
    .end local v9    # "iface":Ljava/lang/String;
    .end local v11    # "ipv4Default":Landroid/net/RouteInfo;
    .restart local v5    # "dnsAddress$iterator":Ljava/util/Iterator;
    .restart local v6    # "dnsServers":[Ljava/lang/String;
    .restart local v7    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v18    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@1cb
    move-result v19

    #@1cc
    if-lez v19, :cond_c

    #@1ce
    .line 1366
    invoke-static/range {v18 .. v18}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    #@1d1
    move-result-object v6

    #@1d2
    .line 1370
    .end local v5    # "dnsAddress$iterator":Ljava/util/Iterator;
    .end local v18    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    #@1d4
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@1d6
    move-object/from16 v19, v0

    #@1d8
    move-object/from16 v0, v19

    #@1da
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@1dc
    move-object/from16 v19, v0

    #@1de
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@1e1
    move-result-object v19

    #@1e2
    move-object/from16 v0, v19

    #@1e4
    move/from16 v1, v17

    #@1e6
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    #@1e9
    move-result-object v15

    #@1ea
    .line 1371
    .local v15, "network":Landroid/net/Network;
    if-nez v15, :cond_d

    #@1ec
    .line 1372
    const-string/jumbo v19, "Tethering"

    #@1ef
    new-instance v20, Ljava/lang/StringBuilder;

    #@1f1
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1f4
    const-string/jumbo v21, "No Network for upstream type "

    #@1f7
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v20

    #@1fb
    move-object/from16 v0, v20

    #@1fd
    move/from16 v1, v17

    #@1ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@202
    move-result-object v20

    #@203
    const-string/jumbo v21, "!"

    #@206
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@209
    move-result-object v20

    #@20a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20d
    move-result-object v20

    #@20e
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@211
    .line 1378
    :cond_d
    move-object/from16 v0, p0

    #@213
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@215
    move-object/from16 v19, v0

    #@217
    move-object/from16 v0, v19

    #@219
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@21b
    move-object/from16 v19, v0

    #@21d
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@220
    move-result-object v19

    #@221
    move-object/from16 v0, v19

    #@223
    invoke-interface {v0, v15, v6}, Landroid/os/INetworkManagementService;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@226
    goto/16 :goto_1

    #@228
    .line 1379
    .end local v15    # "network":Landroid/net/Network;
    :catch_0
    move-exception v8

    #@229
    .line 1380
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "Tethering"

    #@22c
    const-string/jumbo v20, "Setting DNS forwarders failed!"

    #@22f
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@232
    .line 1381
    move-object/from16 v0, p0

    #@234
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@236
    move-object/from16 v19, v0

    #@238
    move-object/from16 v0, p0

    #@23a
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@23c
    move-object/from16 v20, v0

    #@23e
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@241
    move-result-object v20

    #@242
    invoke-static/range {v19 .. v20}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@245
    goto/16 :goto_1
.end method

.method protected enableString(I)Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # I

    #@0
    .prologue
    .line 1201
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1208
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 1203
    :pswitch_1
    const-string/jumbo v0, "enableDUNAlways"

    #@8
    return-object v0

    #@9
    .line 1206
    :pswitch_2
    const-string/jumbo v0, "enableHIPRI"

    #@c
    return-object v0

    #@d
    .line 1201
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1389
    const-string/jumbo v2, "Tethering"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "notifying tethered with iface ="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1390
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@1c
    invoke-static {v2, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    .line 1391
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@21
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@24
    move-result-object v2

    #@25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v1

    #@29
    .local v1, "sm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_0

    #@2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@35
    .line 1392
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const/16 v2, 0xc

    #@37
    invoke-virtual {v0, v2, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    #@3a
    goto :goto_0

    #@3b
    .line 1388
    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1198
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected turnOffMasterTetherSettings()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1267
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@3
    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@5
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1273
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@e
    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@10
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x0

    #@15
    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@18
    .line 1278
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@1a
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@1c
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@23
    .line 1279
    const/4 v1, 0x1

    #@24
    return v1

    #@25
    .line 1268
    :catch_0
    move-exception v0

    #@26
    .line 1269
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@28
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2a
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get9(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@31
    .line 1270
    return v3

    #@32
    .line 1274
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@33
    .line 1275
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@35
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@37
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get5(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@3e
    .line 1276
    return v3
.end method

.method protected turnOffUpstreamMobileConnection()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1237
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@3
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    #@6
    move-result v1

    #@7
    add-int/lit8 v1, v1, 0x1

    #@9
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    #@c
    .line 1238
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@e
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    #@11
    move-result v0

    #@12
    if-eq v0, v3, :cond_0

    #@14
    .line 1239
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@16
    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@18
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@1b
    move-result-object v0

    #@1c
    .line 1240
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@1e
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    #@21
    move-result v1

    #@22
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->enableString(I)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    const/4 v2, 0x0

    #@27
    .line 1239
    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    #@2a
    .line 1241
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2c
    invoke-static {v0, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    #@2f
    .line 1243
    :cond_0
    const/4 v0, 0x1

    #@30
    return v0
.end method

.method protected turnOnMasterTetherSettings()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1247
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@4
    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@6
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x1

    #@b
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1253
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@10
    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@12
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@18
    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@1a
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@21
    .line 1263
    :goto_0
    return v5

    #@22
    .line 1248
    :catch_0
    move-exception v0

    #@23
    .line 1249
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@25
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@27
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get6(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@2e
    .line 1250
    return v4

    #@2f
    .line 1254
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@30
    .line 1256
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@32
    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@34
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@37
    move-result-object v2

    #@38
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V

    #@3b
    .line 1257
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@3d
    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@3f
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    #@42
    move-result-object v2

    #@43
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@45
    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@47
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@4e
    goto :goto_0

    #@4f
    .line 1258
    :catch_2
    move-exception v1

    #@50
    .line 1259
    .local v1, "ee":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@52
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@54
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get8(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    #@57
    move-result-object v3

    #@58
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    #@5b
    .line 1260
    return v4
.end method

.method protected turnOnUpstreamMobileConnection(I)Z
    .locals 8
    .param p1, "apnType"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1211
    const/4 v3, 0x1

    #@2
    .line 1212
    .local v3, "retValue":Z
    const/4 v4, -0x1

    #@3
    if-ne p1, v4, :cond_0

    #@5
    return v5

    #@6
    .line 1213
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@8
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    #@b
    move-result v4

    #@c
    if-eq p1, v4, :cond_1

    #@e
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    #@11
    .line 1214
    :cond_1
    const/4 v2, 0x3

    #@12
    .line 1215
    .local v2, "result":I
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->enableString(I)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 1216
    .local v0, "enableString":Ljava/lang/String;
    if-nez v0, :cond_2

    #@18
    return v5

    #@19
    .line 1217
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@1b
    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@1d
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, v5, v0}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    #@24
    move-result v2

    #@25
    .line 1219
    packed-switch v2, :pswitch_data_0

    #@28
    .line 1229
    const/4 v3, 0x0

    #@29
    .line 1233
    :goto_0
    return v3

    #@2a
    .line 1222
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2c
    invoke-static {v4, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    #@2f
    .line 1223
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@31
    const/4 v5, 0x4

    #@32
    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->obtainMessage(I)Landroid/os/Message;

    #@35
    move-result-object v1

    #@36
    .line 1224
    .local v1, "m":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@38
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    #@3b
    move-result v5

    #@3c
    add-int/lit8 v5, v5, 0x1

    #@3e
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    #@41
    move-result v4

    #@42
    iput v4, v1, Landroid/os/Message;->arg1:I

    #@44
    .line 1225
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@46
    const-wide/32 v6, 0x9c40

    #@49
    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(Landroid/os/Message;J)V

    #@4c
    goto :goto_0

    #@4d
    .line 1219
    nop

    #@4e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
