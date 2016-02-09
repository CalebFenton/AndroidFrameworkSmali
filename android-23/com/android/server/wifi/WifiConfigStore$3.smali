.class Lcom/android/server/wifi/WifiConfigStore$3;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"

# interfaces
.implements Lcom/android/server/net/DelayedDiskWrite$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigStore;

.field final synthetic val$networks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigStore;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigStore;

    #@0
    .prologue
    .line 2062
    .local p2, "val$networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$3;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStore$3;->val$networks:Ljava/util/List;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onWriteCalled(Ljava/io/DataOutputStream;)V
    .locals 21
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2064
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore$3;->val$networks:Ljava/util/List;

    #@4
    move-object/from16 v18, v0

    #@6
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v5

    #@a
    .local v5, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v18

    #@e
    if-eqz v18, :cond_10

    #@10
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    #@16
    .line 2072
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->-get0()Z

    #@19
    move-result v18

    #@1a
    if-eqz v18, :cond_3

    #@1c
    .line 2073
    const/4 v11, 0x0

    #@1d
    .line 2074
    .local v11, "num":I
    const/4 v12, 0x0

    #@1e
    .line 2075
    .local v12, "numlink":I
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@20
    move-object/from16 v18, v0

    #@22
    if-eqz v18, :cond_1

    #@24
    .line 2076
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@26
    move-object/from16 v18, v0

    #@28
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    #@2b
    move-result v11

    #@2c
    .line 2078
    :cond_1
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@2e
    move-object/from16 v18, v0

    #@30
    if-eqz v18, :cond_2

    #@32
    .line 2079
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@34
    move-object/from16 v18, v0

    #@36
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    #@39
    move-result v12

    #@3a
    .line 2081
    :cond_2
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore$3;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@3e
    move-object/from16 v18, v0

    #@40
    new-instance v19, Ljava/lang/StringBuilder;

    #@42
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v20, "saving network history: "

    #@48
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v19

    #@4c
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@4f
    move-result-object v20

    #@50
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v19

    #@54
    const-string/jumbo v20, " gw: "

    #@57
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v19

    #@5b
    .line 2082
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@5d
    move-object/from16 v20, v0

    #@5f
    .line 2081
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v19

    #@63
    .line 2082
    const-string/jumbo v20, " autojoin-status: "

    #@66
    .line 2081
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v19

    #@6a
    .line 2083
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@6c
    move/from16 v20, v0

    #@6e
    .line 2081
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v19

    #@72
    .line 2083
    const-string/jumbo v20, " ephemeral="

    #@75
    .line 2081
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v19

    #@79
    .line 2083
    iget-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@7b
    move/from16 v20, v0

    #@7d
    .line 2081
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@80
    move-result-object v19

    #@81
    .line 2084
    const-string/jumbo v20, " choices:"

    #@84
    .line 2081
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v19

    #@88
    .line 2084
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8b
    move-result-object v20

    #@8c
    .line 2081
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v19

    #@90
    .line 2085
    const-string/jumbo v20, " link:"

    #@93
    .line 2081
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v19

    #@97
    .line 2085
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9a
    move-result-object v20

    #@9b
    .line 2081
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v19

    #@9f
    .line 2086
    const-string/jumbo v20, " status:"

    #@a2
    .line 2081
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v19

    #@a6
    .line 2086
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    #@a8
    move/from16 v20, v0

    #@aa
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@ad
    move-result-object v20

    #@ae
    .line 2081
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v19

    #@b2
    .line 2087
    const-string/jumbo v20, " nid:"

    #@b5
    .line 2081
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v19

    #@b9
    .line 2087
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@bb
    move/from16 v20, v0

    #@bd
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c0
    move-result-object v20

    #@c1
    .line 2081
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v19

    #@c5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v19

    #@c9
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@cc
    .line 2090
    .end local v11    # "num":I
    .end local v12    # "numlink":I
    :cond_3
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    #@cf
    move-result v18

    #@d0
    if-eqz v18, :cond_0

    #@d2
    .line 2093
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@d4
    move-object/from16 v18, v0

    #@d6
    if-nez v18, :cond_4

    #@d8
    .line 2094
    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->-get0()Z

    #@db
    move-result v18

    #@dc
    if-eqz v18, :cond_0

    #@de
    .line 2095
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore$3;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@e2
    move-object/from16 v18, v0

    #@e4
    const-string/jumbo v19, "writeKnownNetworkHistory trying to write config with null SSID"

    #@e7
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@ea
    goto/16 :goto_0

    #@ec
    .line 2099
    :cond_4
    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->-get0()Z

    #@ef
    move-result v18

    #@f0
    if-eqz v18, :cond_5

    #@f2
    .line 2100
    move-object/from16 v0, p0

    #@f4
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore$3;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@f6
    move-object/from16 v18, v0

    #@f8
    new-instance v19, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v20, "writeKnownNetworkHistory write config "

    #@100
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v19

    #@104
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@107
    move-result-object v20

    #@108
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v19

    #@10c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v19

    #@110
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@113
    .line 2102
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    #@115
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    const-string/jumbo v19, "CONFIG:  "

    #@11b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v18

    #@11f
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@122
    move-result-object v19

    #@123
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v18

    #@127
    const-string/jumbo v19, "\n"

    #@12a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v18

    #@12e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v18

    #@132
    move-object/from16 v0, p1

    #@134
    move-object/from16 v1, v18

    #@136
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@139
    .line 2104
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@13b
    move-object/from16 v18, v0

    #@13d
    if-eqz v18, :cond_6

    #@13f
    .line 2105
    new-instance v18, Ljava/lang/StringBuilder;

    #@141
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@144
    const-string/jumbo v19, "SSID:  "

    #@147
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v18

    #@14b
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@14d
    move-object/from16 v19, v0

    #@14f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v18

    #@153
    const-string/jumbo v19, "\n"

    #@156
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v18

    #@15a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v18

    #@15e
    move-object/from16 v0, p1

    #@160
    move-object/from16 v1, v18

    #@162
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@165
    .line 2107
    :cond_6
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@167
    move-object/from16 v18, v0

    #@169
    if-eqz v18, :cond_7

    #@16b
    .line 2108
    new-instance v18, Ljava/lang/StringBuilder;

    #@16d
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@170
    const-string/jumbo v19, "FQDN:  "

    #@173
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v18

    #@177
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@179
    move-object/from16 v19, v0

    #@17b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v18

    #@17f
    const-string/jumbo v19, "\n"

    #@182
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v18

    #@186
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v18

    #@18a
    move-object/from16 v0, p1

    #@18c
    move-object/from16 v1, v18

    #@18e
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@191
    .line 2111
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    #@193
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@196
    const-string/jumbo v19, "PRIORITY:  "

    #@199
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v18

    #@19d
    .line 2112
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@19f
    move/from16 v19, v0

    #@1a1
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1a4
    move-result-object v19

    #@1a5
    .line 2111
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v18

    #@1a9
    .line 2112
    const-string/jumbo v19, "\n"

    #@1ac
    .line 2111
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v18

    #@1b0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b3
    move-result-object v18

    #@1b4
    move-object/from16 v0, p1

    #@1b6
    move-object/from16 v1, v18

    #@1b8
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@1bb
    .line 2113
    new-instance v18, Ljava/lang/StringBuilder;

    #@1bd
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1c0
    const-string/jumbo v19, "AUTO_JOIN_STATUS:  "

    #@1c3
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v18

    #@1c7
    .line 2114
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@1c9
    move/from16 v19, v0

    #@1cb
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1ce
    move-result-object v19

    #@1cf
    .line 2113
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v18

    #@1d3
    .line 2114
    const-string/jumbo v19, "\n"

    #@1d6
    .line 2113
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v18

    #@1da
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dd
    move-result-object v18

    #@1de
    move-object/from16 v0, p1

    #@1e0
    move-object/from16 v1, v18

    #@1e2
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@1e5
    .line 2115
    new-instance v18, Ljava/lang/StringBuilder;

    #@1e7
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1ea
    const-string/jumbo v19, "SUP_STATUS:  "

    #@1ed
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v18

    #@1f1
    .line 2116
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    #@1f3
    move/from16 v19, v0

    #@1f5
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1f8
    move-result-object v19

    #@1f9
    .line 2115
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v18

    #@1fd
    .line 2116
    const-string/jumbo v19, "\n"

    #@200
    .line 2115
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@203
    move-result-object v18

    #@204
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@207
    move-result-object v18

    #@208
    move-object/from16 v0, p1

    #@20a
    move-object/from16 v1, v18

    #@20c
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@20f
    .line 2117
    new-instance v18, Ljava/lang/StringBuilder;

    #@211
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@214
    const-string/jumbo v19, "SUP_DIS_REASON:  "

    #@217
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v18

    #@21b
    .line 2118
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@21d
    move/from16 v19, v0

    #@21f
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@222
    move-result-object v19

    #@223
    .line 2117
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@226
    move-result-object v18

    #@227
    .line 2118
    const-string/jumbo v19, "\n"

    #@22a
    .line 2117
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v18

    #@22e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@231
    move-result-object v18

    #@232
    move-object/from16 v0, p1

    #@234
    move-object/from16 v1, v18

    #@236
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@239
    .line 2119
    new-instance v18, Ljava/lang/StringBuilder;

    #@23b
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@23e
    const-string/jumbo v19, "ID:  "

    #@241
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v18

    #@245
    .line 2120
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@247
    move/from16 v19, v0

    #@249
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@24c
    move-result-object v19

    #@24d
    .line 2119
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@250
    move-result-object v18

    #@251
    .line 2120
    const-string/jumbo v19, "\n"

    #@254
    .line 2119
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v18

    #@258
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25b
    move-result-object v18

    #@25c
    move-object/from16 v0, p1

    #@25e
    move-object/from16 v1, v18

    #@260
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@263
    .line 2121
    new-instance v18, Ljava/lang/StringBuilder;

    #@265
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@268
    const-string/jumbo v19, "SELF_ADDED:  "

    #@26b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v18

    #@26f
    .line 2122
    iget-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@271
    move/from16 v19, v0

    #@273
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@276
    move-result-object v19

    #@277
    .line 2121
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27a
    move-result-object v18

    #@27b
    .line 2122
    const-string/jumbo v19, "\n"

    #@27e
    .line 2121
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v18

    #@282
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@285
    move-result-object v18

    #@286
    move-object/from16 v0, p1

    #@288
    move-object/from16 v1, v18

    #@28a
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@28d
    .line 2123
    new-instance v18, Ljava/lang/StringBuilder;

    #@28f
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@292
    const-string/jumbo v19, "DID_SELF_ADD:  "

    #@295
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@298
    move-result-object v18

    #@299
    .line 2124
    iget-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@29b
    move/from16 v19, v0

    #@29d
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2a0
    move-result-object v19

    #@2a1
    .line 2123
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a4
    move-result-object v18

    #@2a5
    .line 2124
    const-string/jumbo v19, "\n"

    #@2a8
    .line 2123
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ab
    move-result-object v18

    #@2ac
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2af
    move-result-object v18

    #@2b0
    move-object/from16 v0, p1

    #@2b2
    move-object/from16 v1, v18

    #@2b4
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@2b7
    .line 2125
    new-instance v18, Ljava/lang/StringBuilder;

    #@2b9
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2bc
    const-string/jumbo v19, "NO_INTERNET_ACCESS_REPORTS:  "

    #@2bf
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v18

    #@2c3
    .line 2126
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@2c5
    move/from16 v19, v0

    #@2c7
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2ca
    move-result-object v19

    #@2cb
    .line 2125
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v18

    #@2cf
    .line 2126
    const-string/jumbo v19, "\n"

    #@2d2
    .line 2125
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v18

    #@2d6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d9
    move-result-object v18

    #@2da
    move-object/from16 v0, p1

    #@2dc
    move-object/from16 v1, v18

    #@2de
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@2e1
    .line 2127
    new-instance v18, Ljava/lang/StringBuilder;

    #@2e3
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2e6
    const-string/jumbo v19, "VALIDATED_INTERNET_ACCESS:  "

    #@2e9
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ec
    move-result-object v18

    #@2ed
    .line 2128
    iget-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@2ef
    move/from16 v19, v0

    #@2f1
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2f4
    move-result-object v19

    #@2f5
    .line 2127
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f8
    move-result-object v18

    #@2f9
    .line 2128
    const-string/jumbo v19, "\n"

    #@2fc
    .line 2127
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ff
    move-result-object v18

    #@300
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@303
    move-result-object v18

    #@304
    move-object/from16 v0, p1

    #@306
    move-object/from16 v1, v18

    #@308
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@30b
    .line 2129
    new-instance v18, Ljava/lang/StringBuilder;

    #@30d
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@310
    const-string/jumbo v19, "EPHEMERAL:  "

    #@313
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@316
    move-result-object v18

    #@317
    .line 2130
    iget-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@319
    move/from16 v19, v0

    #@31b
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@31e
    move-result-object v19

    #@31f
    .line 2129
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@322
    move-result-object v18

    #@323
    .line 2130
    const-string/jumbo v19, "\n"

    #@326
    .line 2129
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@329
    move-result-object v18

    #@32a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32d
    move-result-object v18

    #@32e
    move-object/from16 v0, p1

    #@330
    move-object/from16 v1, v18

    #@332
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@335
    .line 2131
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@337
    move-object/from16 v18, v0

    #@339
    if-eqz v18, :cond_8

    #@33b
    .line 2132
    new-instance v18, Ljava/lang/StringBuilder;

    #@33d
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@340
    const-string/jumbo v19, "CREATION_TIME:  "

    #@343
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@346
    move-result-object v18

    #@347
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@349
    move-object/from16 v19, v0

    #@34b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34e
    move-result-object v18

    #@34f
    const-string/jumbo v19, "\n"

    #@352
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@355
    move-result-object v18

    #@356
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@359
    move-result-object v18

    #@35a
    move-object/from16 v0, p1

    #@35c
    move-object/from16 v1, v18

    #@35e
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@361
    .line 2134
    :cond_8
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@363
    move-object/from16 v18, v0

    #@365
    if-eqz v18, :cond_9

    #@367
    .line 2135
    new-instance v18, Ljava/lang/StringBuilder;

    #@369
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@36c
    const-string/jumbo v19, "UPDATE_TIME:  "

    #@36f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@372
    move-result-object v18

    #@373
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@375
    move-object/from16 v19, v0

    #@377
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37a
    move-result-object v18

    #@37b
    const-string/jumbo v19, "\n"

    #@37e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@381
    move-result-object v18

    #@382
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@385
    move-result-object v18

    #@386
    move-object/from16 v0, p1

    #@388
    move-object/from16 v1, v18

    #@38a
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@38d
    .line 2137
    :cond_9
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@38f
    move-object/from16 v18, v0

    #@391
    if-eqz v18, :cond_a

    #@393
    .line 2138
    new-instance v18, Ljava/lang/StringBuilder;

    #@395
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@398
    const-string/jumbo v19, "PEER_CONFIGURATION:  "

    #@39b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39e
    move-result-object v18

    #@39f
    .line 2139
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@3a1
    move-object/from16 v19, v0

    #@3a3
    .line 2138
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a6
    move-result-object v18

    #@3a7
    .line 2139
    const-string/jumbo v19, "\n"

    #@3aa
    .line 2138
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ad
    move-result-object v18

    #@3ae
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b1
    move-result-object v18

    #@3b2
    move-object/from16 v0, p1

    #@3b4
    move-object/from16 v1, v18

    #@3b6
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@3b9
    .line 2141
    :cond_a
    new-instance v18, Ljava/lang/StringBuilder;

    #@3bb
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@3be
    const-string/jumbo v19, "CONNECT_FAILURES:  "

    #@3c1
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c4
    move-result-object v18

    #@3c5
    .line 2142
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@3c7
    move/from16 v19, v0

    #@3c9
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3cc
    move-result-object v19

    #@3cd
    .line 2141
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d0
    move-result-object v18

    #@3d1
    .line 2142
    const-string/jumbo v19, "\n"

    #@3d4
    .line 2141
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d7
    move-result-object v18

    #@3d8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3db
    move-result-object v18

    #@3dc
    move-object/from16 v0, p1

    #@3de
    move-object/from16 v1, v18

    #@3e0
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@3e3
    .line 2143
    new-instance v18, Ljava/lang/StringBuilder;

    #@3e5
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@3e8
    const-string/jumbo v19, "AUTH_FAILURES:  "

    #@3eb
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ee
    move-result-object v18

    #@3ef
    .line 2144
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@3f1
    move/from16 v19, v0

    #@3f3
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3f6
    move-result-object v19

    #@3f7
    .line 2143
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fa
    move-result-object v18

    #@3fb
    .line 2144
    const-string/jumbo v19, "\n"

    #@3fe
    .line 2143
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@401
    move-result-object v18

    #@402
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@405
    move-result-object v18

    #@406
    move-object/from16 v0, p1

    #@408
    move-object/from16 v1, v18

    #@40a
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@40d
    .line 2145
    new-instance v18, Ljava/lang/StringBuilder;

    #@40f
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@412
    const-string/jumbo v19, "IP_CONFIG_FAILURES:  "

    #@415
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@418
    move-result-object v18

    #@419
    .line 2146
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@41b
    move/from16 v19, v0

    #@41d
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@420
    move-result-object v19

    #@421
    .line 2145
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@424
    move-result-object v18

    #@425
    .line 2146
    const-string/jumbo v19, "\n"

    #@428
    .line 2145
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42b
    move-result-object v18

    #@42c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42f
    move-result-object v18

    #@430
    move-object/from16 v0, p1

    #@432
    move-object/from16 v1, v18

    #@434
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@437
    .line 2147
    new-instance v18, Ljava/lang/StringBuilder;

    #@439
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@43c
    const-string/jumbo v19, "SCORER_OVERRIDE:  "

    #@43f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@442
    move-result-object v18

    #@443
    .line 2148
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    #@445
    move/from16 v19, v0

    #@447
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@44a
    move-result-object v19

    #@44b
    .line 2147
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44e
    move-result-object v18

    #@44f
    .line 2148
    const-string/jumbo v19, "\n"

    #@452
    .line 2147
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@455
    move-result-object v18

    #@456
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@459
    move-result-object v18

    #@45a
    move-object/from16 v0, p1

    #@45c
    move-object/from16 v1, v18

    #@45e
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@461
    .line 2149
    new-instance v18, Ljava/lang/StringBuilder;

    #@463
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@466
    const-string/jumbo v19, "SCORER_OVERRIDE_AND_SWITCH:  "

    #@469
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46c
    move-result-object v18

    #@46d
    .line 2150
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@46f
    move/from16 v19, v0

    #@471
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@474
    move-result-object v19

    #@475
    .line 2149
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@478
    move-result-object v18

    #@479
    .line 2150
    const-string/jumbo v19, "\n"

    #@47c
    .line 2149
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47f
    move-result-object v18

    #@480
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@483
    move-result-object v18

    #@484
    move-object/from16 v0, p1

    #@486
    move-object/from16 v1, v18

    #@488
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@48b
    .line 2151
    new-instance v18, Ljava/lang/StringBuilder;

    #@48d
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@490
    const-string/jumbo v19, "NUM_ASSOCIATION:  "

    #@493
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@496
    move-result-object v18

    #@497
    .line 2152
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@499
    move/from16 v19, v0

    #@49b
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@49e
    move-result-object v19

    #@49f
    .line 2151
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a2
    move-result-object v18

    #@4a3
    .line 2152
    const-string/jumbo v19, "\n"

    #@4a6
    .line 2151
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a9
    move-result-object v18

    #@4aa
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ad
    move-result-object v18

    #@4ae
    move-object/from16 v0, p1

    #@4b0
    move-object/from16 v1, v18

    #@4b2
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@4b5
    .line 2153
    new-instance v18, Ljava/lang/StringBuilder;

    #@4b7
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@4ba
    const-string/jumbo v19, "JOIN_ATTEMPT_BOOST:  "

    #@4bd
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c0
    move-result-object v18

    #@4c1
    .line 2154
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    #@4c3
    move/from16 v19, v0

    #@4c5
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4c8
    move-result-object v19

    #@4c9
    .line 2153
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4cc
    move-result-object v18

    #@4cd
    .line 2154
    const-string/jumbo v19, "\n"

    #@4d0
    .line 2153
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d3
    move-result-object v18

    #@4d4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d7
    move-result-object v18

    #@4d8
    move-object/from16 v0, p1

    #@4da
    move-object/from16 v1, v18

    #@4dc
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@4df
    .line 2157
    new-instance v18, Ljava/lang/StringBuilder;

    #@4e1
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@4e4
    const-string/jumbo v19, "CREATOR_UID_KEY:  "

    #@4e7
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ea
    move-result-object v18

    #@4eb
    .line 2158
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@4ed
    move/from16 v19, v0

    #@4ef
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4f2
    move-result-object v19

    #@4f3
    .line 2157
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f6
    move-result-object v18

    #@4f7
    .line 2158
    const-string/jumbo v19, "\n"

    #@4fa
    .line 2157
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fd
    move-result-object v18

    #@4fe
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@501
    move-result-object v18

    #@502
    move-object/from16 v0, p1

    #@504
    move-object/from16 v1, v18

    #@506
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@509
    .line 2159
    new-instance v18, Ljava/lang/StringBuilder;

    #@50b
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@50e
    const-string/jumbo v19, "CONNECT_UID_KEY:  "

    #@511
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@514
    move-result-object v18

    #@515
    .line 2160
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@517
    move/from16 v19, v0

    #@519
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@51c
    move-result-object v19

    #@51d
    .line 2159
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@520
    move-result-object v18

    #@521
    .line 2160
    const-string/jumbo v19, "\n"

    #@524
    .line 2159
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@527
    move-result-object v18

    #@528
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52b
    move-result-object v18

    #@52c
    move-object/from16 v0, p1

    #@52e
    move-object/from16 v1, v18

    #@530
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@533
    .line 2161
    new-instance v18, Ljava/lang/StringBuilder;

    #@535
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@538
    const-string/jumbo v19, "UPDATE_UID:  "

    #@53b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53e
    move-result-object v18

    #@53f
    .line 2162
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@541
    move/from16 v19, v0

    #@543
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@546
    move-result-object v19

    #@547
    .line 2161
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54a
    move-result-object v18

    #@54b
    .line 2162
    const-string/jumbo v19, "\n"

    #@54e
    .line 2161
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@551
    move-result-object v18

    #@552
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@555
    move-result-object v18

    #@556
    move-object/from16 v0, p1

    #@558
    move-object/from16 v1, v18

    #@55a
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@55d
    .line 2163
    new-instance v18, Ljava/lang/StringBuilder;

    #@55f
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@562
    const-string/jumbo v19, "CREATOR_NAME:  "

    #@565
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@568
    move-result-object v18

    #@569
    .line 2164
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@56b
    move-object/from16 v19, v0

    #@56d
    .line 2163
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@570
    move-result-object v18

    #@571
    .line 2164
    const-string/jumbo v19, "\n"

    #@574
    .line 2163
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@577
    move-result-object v18

    #@578
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57b
    move-result-object v18

    #@57c
    move-object/from16 v0, p1

    #@57e
    move-object/from16 v1, v18

    #@580
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@583
    .line 2165
    new-instance v18, Ljava/lang/StringBuilder;

    #@585
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@588
    const-string/jumbo v19, "UPDATE_NAME:  "

    #@58b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58e
    move-result-object v18

    #@58f
    .line 2166
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@591
    move-object/from16 v19, v0

    #@593
    .line 2165
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@596
    move-result-object v18

    #@597
    .line 2166
    const-string/jumbo v19, "\n"

    #@59a
    .line 2165
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59d
    move-result-object v18

    #@59e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a1
    move-result-object v18

    #@5a2
    move-object/from16 v0, p1

    #@5a4
    move-object/from16 v1, v18

    #@5a6
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@5a9
    .line 2167
    new-instance v18, Ljava/lang/StringBuilder;

    #@5ab
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@5ae
    const-string/jumbo v19, "USER_APPROVED:  "

    #@5b1
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b4
    move-result-object v18

    #@5b5
    .line 2168
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@5b7
    move/from16 v19, v0

    #@5b9
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5bc
    move-result-object v19

    #@5bd
    .line 2167
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c0
    move-result-object v18

    #@5c1
    .line 2168
    const-string/jumbo v19, "\n"

    #@5c4
    .line 2167
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c7
    move-result-object v18

    #@5c8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5cb
    move-result-object v18

    #@5cc
    move-object/from16 v0, p1

    #@5ce
    move-object/from16 v1, v18

    #@5d0
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@5d3
    .line 2170
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@5d5
    move-object/from16 v18, v0

    #@5d7
    .line 2171
    sget-object v19, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@5d9
    .line 2170
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiConfigStore;->-wrap0(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    #@5dc
    move-result-object v2

    #@5dd
    .line 2172
    .local v2, "allowedKeyManagementString":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    #@5df
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@5e2
    const-string/jumbo v19, "AUTH:  "

    #@5e5
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e8
    move-result-object v18

    #@5e9
    move-object/from16 v0, v18

    #@5eb
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ee
    move-result-object v18

    #@5ef
    .line 2173
    const-string/jumbo v19, "\n"

    #@5f2
    .line 2172
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f5
    move-result-object v18

    #@5f6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f9
    move-result-object v18

    #@5fa
    move-object/from16 v0, p1

    #@5fc
    move-object/from16 v1, v18

    #@5fe
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@601
    .line 2175
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@603
    move-object/from16 v18, v0

    #@605
    if-eqz v18, :cond_b

    #@607
    .line 2176
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@609
    move-object/from16 v18, v0

    #@60b
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@60e
    move-result-object v18

    #@60f
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@612
    move-result-object v9

    #@613
    .local v9, "key$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@616
    move-result v18

    #@617
    if-eqz v18, :cond_b

    #@619
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61c
    move-result-object v8

    #@61d
    check-cast v8, Ljava/lang/String;

    #@61f
    .line 2177
    .local v8, "key":Ljava/lang/String;
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@621
    move-object/from16 v18, v0

    #@623
    move-object/from16 v0, v18

    #@625
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@628
    move-result-object v3

    #@629
    check-cast v3, Ljava/lang/Integer;

    #@62b
    .line 2178
    .local v3, "choice":Ljava/lang/Integer;
    new-instance v18, Ljava/lang/StringBuilder;

    #@62d
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@630
    const-string/jumbo v19, "CHOICE:  "

    #@633
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@636
    move-result-object v18

    #@637
    move-object/from16 v0, v18

    #@639
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63c
    move-result-object v18

    #@63d
    .line 2179
    const-string/jumbo v19, "="

    #@640
    .line 2178
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@643
    move-result-object v18

    #@644
    .line 2179
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@647
    move-result-object v19

    #@648
    .line 2178
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64b
    move-result-object v18

    #@64c
    .line 2179
    const-string/jumbo v19, "\n"

    #@64f
    .line 2178
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@652
    move-result-object v18

    #@653
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@656
    move-result-object v18

    #@657
    move-object/from16 v0, p1

    #@659
    move-object/from16 v1, v18

    #@65b
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@65e
    goto :goto_1

    #@65f
    .line 2182
    .end local v3    # "choice":Ljava/lang/Integer;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "key$iterator":Ljava/util/Iterator;
    :cond_b
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@661
    move-object/from16 v18, v0

    #@663
    if-eqz v18, :cond_c

    #@665
    .line 2183
    move-object/from16 v0, p0

    #@667
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore$3;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@669
    move-object/from16 v18, v0

    #@66b
    new-instance v19, Ljava/lang/StringBuilder;

    #@66d
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@670
    const-string/jumbo v20, "writeKnownNetworkHistory write linked "

    #@673
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@676
    move-result-object v19

    #@677
    .line 2184
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@679
    move-object/from16 v20, v0

    #@67b
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    #@67e
    move-result v20

    #@67f
    .line 2183
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@682
    move-result-object v19

    #@683
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@686
    move-result-object v19

    #@687
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@68a
    .line 2186
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@68c
    move-object/from16 v18, v0

    #@68e
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@691
    move-result-object v18

    #@692
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@695
    move-result-object v9

    #@696
    .restart local v9    # "key$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@699
    move-result v18

    #@69a
    if-eqz v18, :cond_c

    #@69c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@69f
    move-result-object v8

    #@6a0
    check-cast v8, Ljava/lang/String;

    #@6a2
    .line 2187
    .restart local v8    # "key":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    #@6a4
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@6a7
    const-string/jumbo v19, "LINK:  "

    #@6aa
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ad
    move-result-object v18

    #@6ae
    move-object/from16 v0, v18

    #@6b0
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b3
    move-result-object v18

    #@6b4
    const-string/jumbo v19, "\n"

    #@6b7
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ba
    move-result-object v18

    #@6bb
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6be
    move-result-object v18

    #@6bf
    move-object/from16 v0, p1

    #@6c1
    move-object/from16 v1, v18

    #@6c3
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@6c6
    goto :goto_2

    #@6c7
    .line 2191
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "key$iterator":Ljava/util/Iterator;
    :cond_c
    iget-object v10, v4, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@6c9
    .line 2192
    .local v10, "macAddress":Ljava/lang/String;
    if-eqz v10, :cond_d

    #@6cb
    .line 2193
    new-instance v18, Ljava/lang/StringBuilder;

    #@6cd
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@6d0
    const-string/jumbo v19, "DEFAULT_GW:  "

    #@6d3
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d6
    move-result-object v18

    #@6d7
    move-object/from16 v0, v18

    #@6d9
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6dc
    move-result-object v18

    #@6dd
    const-string/jumbo v19, "\n"

    #@6e0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e3
    move-result-object v18

    #@6e4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e7
    move-result-object v18

    #@6e8
    move-object/from16 v0, p1

    #@6ea
    move-object/from16 v1, v18

    #@6ec
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@6ef
    .line 2196
    :cond_d
    move-object/from16 v0, p0

    #@6f1
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore$3;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@6f3
    move-object/from16 v18, v0

    #@6f5
    move-object/from16 v0, v18

    #@6f7
    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@6fa
    move-result-object v18

    #@6fb
    if-eqz v18, :cond_e

    #@6fd
    .line 2197
    move-object/from16 v0, p0

    #@6ff
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore$3;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@701
    move-object/from16 v18, v0

    #@703
    move-object/from16 v0, v18

    #@705
    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@708
    move-result-object v18

    #@709
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@70c
    move-result-object v18

    #@70d
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@710
    move-result-object v15

    #@711
    .local v15, "scanDetail$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@714
    move-result v18

    #@715
    if-eqz v18, :cond_e

    #@717
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71a
    move-result-object v14

    #@71b
    check-cast v14, Lcom/android/server/wifi/ScanDetail;

    #@71d
    .line 2198
    .local v14, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@720
    move-result-object v13

    #@721
    .line 2199
    .local v13, "result":Landroid/net/wifi/ScanResult;
    new-instance v18, Ljava/lang/StringBuilder;

    #@723
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@726
    const-string/jumbo v19, "BSSID:  "

    #@729
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72c
    move-result-object v18

    #@72d
    .line 2200
    iget-object v0, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@72f
    move-object/from16 v19, v0

    #@731
    .line 2199
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@734
    move-result-object v18

    #@735
    .line 2200
    const-string/jumbo v19, "\n"

    #@738
    .line 2199
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73b
    move-result-object v18

    #@73c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73f
    move-result-object v18

    #@740
    move-object/from16 v0, p1

    #@742
    move-object/from16 v1, v18

    #@744
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@747
    .line 2202
    new-instance v18, Ljava/lang/StringBuilder;

    #@749
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@74c
    const-string/jumbo v19, "FREQ:  "

    #@74f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@752
    move-result-object v18

    #@753
    .line 2203
    iget v0, v13, Landroid/net/wifi/ScanResult;->frequency:I

    #@755
    move/from16 v19, v0

    #@757
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@75a
    move-result-object v19

    #@75b
    .line 2202
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75e
    move-result-object v18

    #@75f
    .line 2203
    const-string/jumbo v19, "\n"

    #@762
    .line 2202
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@765
    move-result-object v18

    #@766
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@769
    move-result-object v18

    #@76a
    move-object/from16 v0, p1

    #@76c
    move-object/from16 v1, v18

    #@76e
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@771
    .line 2205
    new-instance v18, Ljava/lang/StringBuilder;

    #@773
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@776
    const-string/jumbo v19, "RSSI:  "

    #@779
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77c
    move-result-object v18

    #@77d
    .line 2206
    iget v0, v13, Landroid/net/wifi/ScanResult;->level:I

    #@77f
    move/from16 v19, v0

    #@781
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@784
    move-result-object v19

    #@785
    .line 2205
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@788
    move-result-object v18

    #@789
    .line 2206
    const-string/jumbo v19, "\n"

    #@78c
    .line 2205
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78f
    move-result-object v18

    #@790
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@793
    move-result-object v18

    #@794
    move-object/from16 v0, p1

    #@796
    move-object/from16 v1, v18

    #@798
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@79b
    .line 2208
    new-instance v18, Ljava/lang/StringBuilder;

    #@79d
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@7a0
    const-string/jumbo v19, "BSSID_STATUS:  "

    #@7a3
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a6
    move-result-object v18

    #@7a7
    .line 2209
    iget v0, v13, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@7a9
    move/from16 v19, v0

    #@7ab
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7ae
    move-result-object v19

    #@7af
    .line 2208
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b2
    move-result-object v18

    #@7b3
    .line 2209
    const-string/jumbo v19, "\n"

    #@7b6
    .line 2208
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b9
    move-result-object v18

    #@7ba
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7bd
    move-result-object v18

    #@7be
    move-object/from16 v0, p1

    #@7c0
    move-object/from16 v1, v18

    #@7c2
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@7c5
    .line 2215
    const-string/jumbo v18, "/BSSID\n"

    #@7c8
    move-object/from16 v0, p1

    #@7ca
    move-object/from16 v1, v18

    #@7cc
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@7cf
    goto/16 :goto_3

    #@7d1
    .line 2218
    .end local v13    # "result":Landroid/net/wifi/ScanResult;
    .end local v14    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v15    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_e
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    #@7d3
    move-object/from16 v18, v0

    #@7d5
    if-eqz v18, :cond_f

    #@7d7
    .line 2219
    new-instance v18, Ljava/lang/StringBuilder;

    #@7d9
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@7dc
    const-string/jumbo v19, "FAILURE:  "

    #@7df
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e2
    move-result-object v18

    #@7e3
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    #@7e5
    move-object/from16 v19, v0

    #@7e7
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7ea
    move-result-object v18

    #@7eb
    const-string/jumbo v19, "\n"

    #@7ee
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f1
    move-result-object v18

    #@7f2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f5
    move-result-object v18

    #@7f6
    move-object/from16 v0, p1

    #@7f8
    move-object/from16 v1, v18

    #@7fa
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@7fd
    .line 2221
    :cond_f
    const-string/jumbo v18, "\n"

    #@800
    move-object/from16 v0, p1

    #@802
    move-object/from16 v1, v18

    #@804
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@807
    .line 2223
    const-string/jumbo v18, "\n"

    #@80a
    move-object/from16 v0, p1

    #@80c
    move-object/from16 v1, v18

    #@80e
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@811
    .line 2224
    const-string/jumbo v18, "\n"

    #@814
    move-object/from16 v0, p1

    #@816
    move-object/from16 v1, v18

    #@818
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@81b
    goto/16 :goto_0

    #@81d
    .line 2226
    .end local v2    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "macAddress":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    #@81f
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore$3;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@821
    move-object/from16 v18, v0

    #@823
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiConfigStore;->-get1(Lcom/android/server/wifi/WifiConfigStore;)Ljava/util/Set;

    #@826
    move-result-object v18

    #@827
    if-eqz v18, :cond_11

    #@829
    move-object/from16 v0, p0

    #@82b
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore$3;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@82d
    move-object/from16 v18, v0

    #@82f
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiConfigStore;->-get1(Lcom/android/server/wifi/WifiConfigStore;)Ljava/util/Set;

    #@832
    move-result-object v18

    #@833
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    #@836
    move-result v18

    #@837
    if-lez v18, :cond_11

    #@839
    .line 2227
    move-object/from16 v0, p0

    #@83b
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore$3;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@83d
    move-object/from16 v18, v0

    #@83f
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiConfigStore;->-get1(Lcom/android/server/wifi/WifiConfigStore;)Ljava/util/Set;

    #@842
    move-result-object v18

    #@843
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@846
    move-result-object v7

    #@847
    .local v7, "i$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@84a
    move-result v18

    #@84b
    if-eqz v18, :cond_11

    #@84d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@850
    move-result-object v6

    #@851
    check-cast v6, Ljava/lang/Long;

    #@853
    .line 2228
    .local v6, "i":Ljava/lang/Long;
    const-string/jumbo v18, "DELETED_CRC32"

    #@856
    move-object/from16 v0, p1

    #@858
    move-object/from16 v1, v18

    #@85a
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@85d
    .line 2229
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@860
    move-result-object v18

    #@861
    move-object/from16 v0, p1

    #@863
    move-object/from16 v1, v18

    #@865
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@868
    .line 2230
    const-string/jumbo v18, "\n"

    #@86b
    move-object/from16 v0, p1

    #@86d
    move-object/from16 v1, v18

    #@86f
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@872
    goto :goto_4

    #@873
    .line 2233
    .end local v6    # "i":Ljava/lang/Long;
    .end local v7    # "i$iterator":Ljava/util/Iterator;
    :cond_11
    move-object/from16 v0, p0

    #@875
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore$3;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@877
    move-object/from16 v18, v0

    #@879
    move-object/from16 v0, v18

    #@87b
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@87d
    move-object/from16 v18, v0

    #@87f
    if-eqz v18, :cond_12

    #@881
    move-object/from16 v0, p0

    #@883
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore$3;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@885
    move-object/from16 v18, v0

    #@887
    move-object/from16 v0, v18

    #@889
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@88b
    move-object/from16 v18, v0

    #@88d
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    #@890
    move-result v18

    #@891
    if-lez v18, :cond_12

    #@893
    .line 2234
    move-object/from16 v0, p0

    #@895
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore$3;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@897
    move-object/from16 v18, v0

    #@899
    move-object/from16 v0, v18

    #@89b
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@89d
    move-object/from16 v18, v0

    #@89f
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8a2
    move-result-object v17

    #@8a3
    .local v17, "ssid$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@8a6
    move-result v18

    #@8a7
    if-eqz v18, :cond_12

    #@8a9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8ac
    move-result-object v16

    #@8ad
    check-cast v16, Ljava/lang/String;

    #@8af
    .line 2235
    .local v16, "ssid":Ljava/lang/String;
    const-string/jumbo v18, "DELETED_EPHEMERAL"

    #@8b2
    move-object/from16 v0, p1

    #@8b4
    move-object/from16 v1, v18

    #@8b6
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@8b9
    .line 2236
    move-object/from16 v0, p1

    #@8bb
    move-object/from16 v1, v16

    #@8bd
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@8c0
    .line 2237
    const-string/jumbo v18, "\n"

    #@8c3
    move-object/from16 v0, p1

    #@8c5
    move-object/from16 v1, v18

    #@8c7
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@8ca
    goto :goto_5

    #@8cb
    .line 2063
    .end local v16    # "ssid":Ljava/lang/String;
    .end local v17    # "ssid$iterator":Ljava/util/Iterator;
    :cond_12
    return-void
.end method
