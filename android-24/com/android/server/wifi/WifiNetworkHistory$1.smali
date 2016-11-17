.class Lcom/android/server/wifi/WifiNetworkHistory$1;
.super Ljava/lang/Object;
.source "WifiNetworkHistory.java"

# interfaces
.implements Lcom/android/server/net/DelayedDiskWrite$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNetworkHistory;->writeKnownNetworkHistory(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNetworkHistory;

.field final synthetic val$deletedEphemeralSSIDs:Ljava/util/Set;

.field final synthetic val$networks:Ljava/util/List;

.field final synthetic val$scanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNetworkHistory;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiNetworkHistory;

    #@0
    .prologue
    .line 141
    .local p2, "val$networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .local p3, "val$scanDetailCaches":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/android/server/wifi/ScanDetailCache;>;"
    .local p4, "val$deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    #@2
    iput-object p2, p0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$networks:Ljava/util/List;

    #@4
    iput-object p3, p0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$scanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    iput-object p4, p0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$deletedEphemeralSSIDs:Ljava/util/Set;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onWriteCalled(Ljava/io/DataOutputStream;)V
    .locals 22
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$networks:Ljava/util/List;

    #@4
    move-object/from16 v18, v0

    #@6
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v6

    #@a
    .local v6, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v18

    #@e
    if-eqz v18, :cond_f

    #@10
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v5

    #@14
    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    #@16
    .line 150
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@19
    move-result-object v17

    #@1a
    .line 152
    .local v17, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v11, 0x0

    #@1b
    .line 153
    .local v11, "numlink":I
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@1d
    move-object/from16 v18, v0

    #@1f
    if-eqz v18, :cond_1

    #@21
    .line 154
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@23
    move-object/from16 v18, v0

    #@25
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    #@28
    move-result v11

    #@29
    .line 157
    :cond_1
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@2c
    move-result-object v18

    #@2d
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    #@30
    move-result v18

    #@31
    if-eqz v18, :cond_2

    #@33
    .line 158
    const-string/jumbo v7, ""

    #@36
    .line 163
    .local v7, "disableTime":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    #@3a
    move-object/from16 v18, v0

    #@3c
    new-instance v19, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v20, "saving network history: "

    #@44
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v19

    #@48
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@4b
    move-result-object v20

    #@4c
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v19

    #@50
    const-string/jumbo v20, " gw: "

    #@53
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v19

    #@57
    .line 164
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@59
    move-object/from16 v20, v0

    #@5b
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v19

    #@5f
    .line 164
    const-string/jumbo v20, " Network Selection-status: "

    #@62
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v19

    #@66
    .line 165
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    #@69
    move-result-object v20

    #@6a
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v19

    #@6e
    move-object/from16 v0, v19

    #@70
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v19

    #@74
    .line 166
    const-string/jumbo v20, " ephemeral="

    #@77
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v19

    #@7b
    .line 166
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@7d
    move/from16 v20, v0

    #@7f
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@82
    move-result-object v19

    #@83
    .line 167
    const-string/jumbo v20, " choice:"

    #@86
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v19

    #@8a
    .line 167
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@8d
    move-result-object v20

    #@8e
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v19

    #@92
    .line 168
    const-string/jumbo v20, " link:"

    #@95
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v19

    #@99
    move-object/from16 v0, v19

    #@9b
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v19

    #@9f
    .line 169
    const-string/jumbo v20, " status:"

    #@a2
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v19

    #@a6
    .line 169
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    #@a8
    move/from16 v20, v0

    #@aa
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v19

    #@ae
    .line 170
    const-string/jumbo v20, " nid:"

    #@b1
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v19

    #@b5
    .line 170
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@b7
    move/from16 v20, v0

    #@b9
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v19

    #@bd
    .line 171
    const-string/jumbo v20, " hasEverConnected: "

    #@c0
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v19

    #@c4
    .line 171
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    #@c7
    move-result v20

    #@c8
    .line 163
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v19

    #@cc
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v19

    #@d0
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNetworkHistory;->logd(Ljava/lang/String;)V

    #@d3
    .line 174
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    #@d7
    move-object/from16 v18, v0

    #@d9
    move-object/from16 v0, v18

    #@db
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiNetworkHistory;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    #@de
    move-result v18

    #@df
    if-eqz v18, :cond_0

    #@e1
    .line 178
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@e3
    move-object/from16 v18, v0

    #@e5
    if-nez v18, :cond_3

    #@e7
    .line 180
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    #@eb
    move-object/from16 v18, v0

    #@ed
    const-string/jumbo v19, "writeKnownNetworkHistory trying to write config with null SSID"

    #@f0
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNetworkHistory;->logv(Ljava/lang/String;)V

    #@f3
    goto/16 :goto_0

    #@f5
    .line 160
    .end local v7    # "disableTime":Ljava/lang/String;
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    const-string/jumbo v19, "Disable time: "

    #@fd
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v18

    #@101
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    #@104
    move-result-object v19

    #@105
    .line 161
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@108
    move-result-object v20

    #@109
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    #@10c
    move-result-wide v20

    #@10d
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@110
    move-result-object v20

    #@111
    .line 160
    invoke-virtual/range {v19 .. v20}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@114
    move-result-object v19

    #@115
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v18

    #@119
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v7

    #@11d
    .restart local v7    # "disableTime":Ljava/lang/String;
    goto/16 :goto_1

    #@11f
    .line 185
    :cond_3
    move-object/from16 v0, p0

    #@121
    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    #@123
    move-object/from16 v18, v0

    #@125
    new-instance v19, Ljava/lang/StringBuilder;

    #@127
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v20, "writeKnownNetworkHistory write config "

    #@12d
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v19

    #@131
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@134
    move-result-object v20

    #@135
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v19

    #@139
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v19

    #@13d
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNetworkHistory;->logv(Ljava/lang/String;)V

    #@140
    .line 187
    new-instance v18, Ljava/lang/StringBuilder;

    #@142
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    const-string/jumbo v19, "CONFIG:  "

    #@148
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v18

    #@14c
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@14f
    move-result-object v19

    #@150
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v18

    #@154
    const-string/jumbo v19, "\n"

    #@157
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v18

    #@15b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15e
    move-result-object v18

    #@15f
    move-object/from16 v0, p1

    #@161
    move-object/from16 v1, v18

    #@163
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@166
    .line 189
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@168
    move-object/from16 v18, v0

    #@16a
    if-eqz v18, :cond_4

    #@16c
    .line 190
    new-instance v18, Ljava/lang/StringBuilder;

    #@16e
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@171
    const-string/jumbo v19, "SSID:  "

    #@174
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v18

    #@178
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@17a
    move-object/from16 v19, v0

    #@17c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v18

    #@180
    const-string/jumbo v19, "\n"

    #@183
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v18

    #@187
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v18

    #@18b
    move-object/from16 v0, p1

    #@18d
    move-object/from16 v1, v18

    #@18f
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@192
    .line 192
    :cond_4
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@194
    move-object/from16 v18, v0

    #@196
    if-eqz v18, :cond_a

    #@198
    .line 193
    new-instance v18, Ljava/lang/StringBuilder;

    #@19a
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@19d
    const-string/jumbo v19, "CONFIG_BSSID:  "

    #@1a0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v18

    #@1a4
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@1a6
    move-object/from16 v19, v0

    #@1a8
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v18

    #@1ac
    const-string/jumbo v19, "\n"

    #@1af
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v18

    #@1b3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b6
    move-result-object v18

    #@1b7
    move-object/from16 v0, p1

    #@1b9
    move-object/from16 v1, v18

    #@1bb
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@1be
    .line 197
    :goto_2
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@1c0
    move-object/from16 v18, v0

    #@1c2
    if-eqz v18, :cond_5

    #@1c4
    .line 198
    new-instance v18, Ljava/lang/StringBuilder;

    #@1c6
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1c9
    const-string/jumbo v19, "FQDN:  "

    #@1cc
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v18

    #@1d0
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@1d2
    move-object/from16 v19, v0

    #@1d4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v18

    #@1d8
    const-string/jumbo v19, "\n"

    #@1db
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v18

    #@1df
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e2
    move-result-object v18

    #@1e3
    move-object/from16 v0, p1

    #@1e5
    move-object/from16 v1, v18

    #@1e7
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@1ea
    .line 201
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    #@1ec
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1ef
    const-string/jumbo v19, "PRIORITY:  "

    #@1f2
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v18

    #@1f6
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@1f8
    move/from16 v19, v0

    #@1fa
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1fd
    move-result-object v19

    #@1fe
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v18

    #@202
    const-string/jumbo v19, "\n"

    #@205
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v18

    #@209
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20c
    move-result-object v18

    #@20d
    move-object/from16 v0, p1

    #@20f
    move-object/from16 v1, v18

    #@211
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@214
    .line 202
    new-instance v18, Ljava/lang/StringBuilder;

    #@216
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@219
    const-string/jumbo v19, "ID:  "

    #@21c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v18

    #@220
    .line 203
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@222
    move/from16 v19, v0

    #@224
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@227
    move-result-object v19

    #@228
    .line 202
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v18

    #@22c
    .line 203
    const-string/jumbo v19, "\n"

    #@22f
    .line 202
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v18

    #@233
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@236
    move-result-object v18

    #@237
    move-object/from16 v0, p1

    #@239
    move-object/from16 v1, v18

    #@23b
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@23e
    .line 204
    new-instance v18, Ljava/lang/StringBuilder;

    #@240
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@243
    const-string/jumbo v19, "SELF_ADDED:  "

    #@246
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@249
    move-result-object v18

    #@24a
    .line 205
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@24c
    move/from16 v19, v0

    #@24e
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@251
    move-result-object v19

    #@252
    .line 204
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v18

    #@256
    .line 205
    const-string/jumbo v19, "\n"

    #@259
    .line 204
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v18

    #@25d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@260
    move-result-object v18

    #@261
    move-object/from16 v0, p1

    #@263
    move-object/from16 v1, v18

    #@265
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@268
    .line 206
    new-instance v18, Ljava/lang/StringBuilder;

    #@26a
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@26d
    const-string/jumbo v19, "DID_SELF_ADD:  "

    #@270
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v18

    #@274
    .line 207
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@276
    move/from16 v19, v0

    #@278
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@27b
    move-result-object v19

    #@27c
    .line 206
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v18

    #@280
    .line 207
    const-string/jumbo v19, "\n"

    #@283
    .line 206
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@286
    move-result-object v18

    #@287
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28a
    move-result-object v18

    #@28b
    move-object/from16 v0, p1

    #@28d
    move-object/from16 v1, v18

    #@28f
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@292
    .line 208
    new-instance v18, Ljava/lang/StringBuilder;

    #@294
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@297
    const-string/jumbo v19, "NO_INTERNET_ACCESS_REPORTS:  "

    #@29a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29d
    move-result-object v18

    #@29e
    .line 209
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@2a0
    move/from16 v19, v0

    #@2a2
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2a5
    move-result-object v19

    #@2a6
    .line 208
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a9
    move-result-object v18

    #@2aa
    .line 209
    const-string/jumbo v19, "\n"

    #@2ad
    .line 208
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b0
    move-result-object v18

    #@2b1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b4
    move-result-object v18

    #@2b5
    move-object/from16 v0, p1

    #@2b7
    move-object/from16 v1, v18

    #@2b9
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@2bc
    .line 210
    new-instance v18, Ljava/lang/StringBuilder;

    #@2be
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2c1
    const-string/jumbo v19, "VALIDATED_INTERNET_ACCESS:  "

    #@2c4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c7
    move-result-object v18

    #@2c8
    .line 211
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@2ca
    move/from16 v19, v0

    #@2cc
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2cf
    move-result-object v19

    #@2d0
    .line 210
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d3
    move-result-object v18

    #@2d4
    .line 211
    const-string/jumbo v19, "\n"

    #@2d7
    .line 210
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2da
    move-result-object v18

    #@2db
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2de
    move-result-object v18

    #@2df
    move-object/from16 v0, p1

    #@2e1
    move-object/from16 v1, v18

    #@2e3
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@2e6
    .line 212
    new-instance v18, Ljava/lang/StringBuilder;

    #@2e8
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2eb
    const-string/jumbo v19, "NO_INTERNET_ACCESS_EXPECTED:  "

    #@2ee
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f1
    move-result-object v18

    #@2f2
    .line 213
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@2f4
    move/from16 v19, v0

    #@2f6
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2f9
    move-result-object v19

    #@2fa
    .line 212
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fd
    move-result-object v18

    #@2fe
    .line 213
    const-string/jumbo v19, "\n"

    #@301
    .line 212
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@304
    move-result-object v18

    #@305
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@308
    move-result-object v18

    #@309
    move-object/from16 v0, p1

    #@30b
    move-object/from16 v1, v18

    #@30d
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@310
    .line 214
    new-instance v18, Ljava/lang/StringBuilder;

    #@312
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@315
    const-string/jumbo v19, "EPHEMERAL:  "

    #@318
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31b
    move-result-object v18

    #@31c
    .line 215
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@31e
    move/from16 v19, v0

    #@320
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@323
    move-result-object v19

    #@324
    .line 214
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@327
    move-result-object v18

    #@328
    .line 215
    const-string/jumbo v19, "\n"

    #@32b
    .line 214
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32e
    move-result-object v18

    #@32f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@332
    move-result-object v18

    #@333
    move-object/from16 v0, p1

    #@335
    move-object/from16 v1, v18

    #@337
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@33a
    .line 216
    new-instance v18, Ljava/lang/StringBuilder;

    #@33c
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@33f
    const-string/jumbo v19, "METERED_HINT:  "

    #@342
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@345
    move-result-object v18

    #@346
    .line 217
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@348
    move/from16 v19, v0

    #@34a
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@34d
    move-result-object v19

    #@34e
    .line 216
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@351
    move-result-object v18

    #@352
    .line 217
    const-string/jumbo v19, "\n"

    #@355
    .line 216
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@358
    move-result-object v18

    #@359
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35c
    move-result-object v18

    #@35d
    move-object/from16 v0, p1

    #@35f
    move-object/from16 v1, v18

    #@361
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@364
    .line 218
    new-instance v18, Ljava/lang/StringBuilder;

    #@366
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@369
    const-string/jumbo v19, "USE_EXTERNAL_SCORES:  "

    #@36c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36f
    move-result-object v18

    #@370
    .line 219
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@372
    move/from16 v19, v0

    #@374
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@377
    move-result-object v19

    #@378
    .line 218
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37b
    move-result-object v18

    #@37c
    .line 219
    const-string/jumbo v19, "\n"

    #@37f
    .line 218
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@382
    move-result-object v18

    #@383
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@386
    move-result-object v18

    #@387
    move-object/from16 v0, p1

    #@389
    move-object/from16 v1, v18

    #@38b
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@38e
    .line 220
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@390
    move-object/from16 v18, v0

    #@392
    if-eqz v18, :cond_6

    #@394
    .line 221
    new-instance v18, Ljava/lang/StringBuilder;

    #@396
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@399
    const-string/jumbo v19, "CREATION_TIME:  "

    #@39c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39f
    move-result-object v18

    #@3a0
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@3a2
    move-object/from16 v19, v0

    #@3a4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a7
    move-result-object v18

    #@3a8
    const-string/jumbo v19, "\n"

    #@3ab
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ae
    move-result-object v18

    #@3af
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b2
    move-result-object v18

    #@3b3
    move-object/from16 v0, p1

    #@3b5
    move-object/from16 v1, v18

    #@3b7
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@3ba
    .line 223
    :cond_6
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@3bc
    move-object/from16 v18, v0

    #@3be
    if-eqz v18, :cond_7

    #@3c0
    .line 224
    new-instance v18, Ljava/lang/StringBuilder;

    #@3c2
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@3c5
    const-string/jumbo v19, "UPDATE_TIME:  "

    #@3c8
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cb
    move-result-object v18

    #@3cc
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@3ce
    move-object/from16 v19, v0

    #@3d0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d3
    move-result-object v18

    #@3d4
    const-string/jumbo v19, "\n"

    #@3d7
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3da
    move-result-object v18

    #@3db
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3de
    move-result-object v18

    #@3df
    move-object/from16 v0, p1

    #@3e1
    move-object/from16 v1, v18

    #@3e3
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@3e6
    .line 226
    :cond_7
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@3e8
    move-object/from16 v18, v0

    #@3ea
    if-eqz v18, :cond_8

    #@3ec
    .line 227
    new-instance v18, Ljava/lang/StringBuilder;

    #@3ee
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@3f1
    const-string/jumbo v19, "PEER_CONFIGURATION:  "

    #@3f4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f7
    move-result-object v18

    #@3f8
    .line 228
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@3fa
    move-object/from16 v19, v0

    #@3fc
    .line 227
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ff
    move-result-object v18

    #@400
    .line 228
    const-string/jumbo v19, "\n"

    #@403
    .line 227
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@406
    move-result-object v18

    #@407
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40a
    move-result-object v18

    #@40b
    move-object/from16 v0, p1

    #@40d
    move-object/from16 v1, v18

    #@40f
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@412
    .line 230
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    #@414
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@417
    const-string/jumbo v19, "SCORER_OVERRIDE:  "

    #@41a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41d
    move-result-object v18

    #@41e
    .line 231
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    #@420
    move/from16 v19, v0

    #@422
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@425
    move-result-object v19

    #@426
    .line 230
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@429
    move-result-object v18

    #@42a
    .line 231
    const-string/jumbo v19, "\n"

    #@42d
    .line 230
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@430
    move-result-object v18

    #@431
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@434
    move-result-object v18

    #@435
    move-object/from16 v0, p1

    #@437
    move-object/from16 v1, v18

    #@439
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@43c
    .line 232
    new-instance v18, Ljava/lang/StringBuilder;

    #@43e
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@441
    const-string/jumbo v19, "SCORER_OVERRIDE_AND_SWITCH:  "

    #@444
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@447
    move-result-object v18

    #@448
    .line 233
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@44a
    move/from16 v19, v0

    #@44c
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@44f
    move-result-object v19

    #@450
    .line 232
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@453
    move-result-object v18

    #@454
    .line 233
    const-string/jumbo v19, "\n"

    #@457
    .line 232
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45a
    move-result-object v18

    #@45b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45e
    move-result-object v18

    #@45f
    move-object/from16 v0, p1

    #@461
    move-object/from16 v1, v18

    #@463
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@466
    .line 234
    new-instance v18, Ljava/lang/StringBuilder;

    #@468
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@46b
    const-string/jumbo v19, "NUM_ASSOCIATION:  "

    #@46e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@471
    move-result-object v18

    #@472
    .line 235
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@474
    move/from16 v19, v0

    #@476
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@479
    move-result-object v19

    #@47a
    .line 234
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47d
    move-result-object v18

    #@47e
    .line 235
    const-string/jumbo v19, "\n"

    #@481
    .line 234
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@484
    move-result-object v18

    #@485
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@488
    move-result-object v18

    #@489
    move-object/from16 v0, p1

    #@48b
    move-object/from16 v1, v18

    #@48d
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@490
    .line 236
    new-instance v18, Ljava/lang/StringBuilder;

    #@492
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@495
    const-string/jumbo v19, "CREATOR_UID_KEY:  "

    #@498
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49b
    move-result-object v18

    #@49c
    .line 237
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@49e
    move/from16 v19, v0

    #@4a0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4a3
    move-result-object v19

    #@4a4
    .line 236
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a7
    move-result-object v18

    #@4a8
    .line 237
    const-string/jumbo v19, "\n"

    #@4ab
    .line 236
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ae
    move-result-object v18

    #@4af
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b2
    move-result-object v18

    #@4b3
    move-object/from16 v0, p1

    #@4b5
    move-object/from16 v1, v18

    #@4b7
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@4ba
    .line 238
    new-instance v18, Ljava/lang/StringBuilder;

    #@4bc
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@4bf
    const-string/jumbo v19, "CONNECT_UID_KEY:  "

    #@4c2
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c5
    move-result-object v18

    #@4c6
    .line 239
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@4c8
    move/from16 v19, v0

    #@4ca
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4cd
    move-result-object v19

    #@4ce
    .line 238
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d1
    move-result-object v18

    #@4d2
    .line 239
    const-string/jumbo v19, "\n"

    #@4d5
    .line 238
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d8
    move-result-object v18

    #@4d9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4dc
    move-result-object v18

    #@4dd
    move-object/from16 v0, p1

    #@4df
    move-object/from16 v1, v18

    #@4e1
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@4e4
    .line 240
    new-instance v18, Ljava/lang/StringBuilder;

    #@4e6
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@4e9
    const-string/jumbo v19, "UPDATE_UID:  "

    #@4ec
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ef
    move-result-object v18

    #@4f0
    .line 241
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@4f2
    move/from16 v19, v0

    #@4f4
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4f7
    move-result-object v19

    #@4f8
    .line 240
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fb
    move-result-object v18

    #@4fc
    .line 241
    const-string/jumbo v19, "\n"

    #@4ff
    .line 240
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@502
    move-result-object v18

    #@503
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@506
    move-result-object v18

    #@507
    move-object/from16 v0, p1

    #@509
    move-object/from16 v1, v18

    #@50b
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@50e
    .line 242
    new-instance v18, Ljava/lang/StringBuilder;

    #@510
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@513
    const-string/jumbo v19, "CREATOR_NAME:  "

    #@516
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@519
    move-result-object v18

    #@51a
    .line 243
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@51c
    move-object/from16 v19, v0

    #@51e
    .line 242
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@521
    move-result-object v18

    #@522
    .line 243
    const-string/jumbo v19, "\n"

    #@525
    .line 242
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@528
    move-result-object v18

    #@529
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52c
    move-result-object v18

    #@52d
    move-object/from16 v0, p1

    #@52f
    move-object/from16 v1, v18

    #@531
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@534
    .line 244
    new-instance v18, Ljava/lang/StringBuilder;

    #@536
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@539
    const-string/jumbo v19, "UPDATE_NAME:  "

    #@53c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53f
    move-result-object v18

    #@540
    .line 245
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@542
    move-object/from16 v19, v0

    #@544
    .line 244
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@547
    move-result-object v18

    #@548
    .line 245
    const-string/jumbo v19, "\n"

    #@54b
    .line 244
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54e
    move-result-object v18

    #@54f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@552
    move-result-object v18

    #@553
    move-object/from16 v0, p1

    #@555
    move-object/from16 v1, v18

    #@557
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@55a
    .line 246
    new-instance v18, Ljava/lang/StringBuilder;

    #@55c
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@55f
    const-string/jumbo v19, "USER_APPROVED:  "

    #@562
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@565
    move-result-object v18

    #@566
    .line 247
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@568
    move/from16 v19, v0

    #@56a
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@56d
    move-result-object v19

    #@56e
    .line 246
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@571
    move-result-object v18

    #@572
    .line 247
    const-string/jumbo v19, "\n"

    #@575
    .line 246
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@578
    move-result-object v18

    #@579
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57c
    move-result-object v18

    #@57d
    move-object/from16 v0, p1

    #@57f
    move-object/from16 v1, v18

    #@581
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@584
    .line 248
    new-instance v18, Ljava/lang/StringBuilder;

    #@586
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@589
    const-string/jumbo v19, "SHARED:  "

    #@58c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58f
    move-result-object v18

    #@590
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->shared:Z

    #@592
    move/from16 v19, v0

    #@594
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@597
    move-result-object v19

    #@598
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59b
    move-result-object v18

    #@59c
    const-string/jumbo v19, "\n"

    #@59f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a2
    move-result-object v18

    #@5a3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a6
    move-result-object v18

    #@5a7
    move-object/from16 v0, p1

    #@5a9
    move-object/from16 v1, v18

    #@5ab
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@5ae
    .line 250
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@5b0
    move-object/from16 v18, v0

    #@5b2
    .line 251
    sget-object v19, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@5b4
    .line 250
    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiNetworkHistory;->-wrap1(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    #@5b7
    move-result-object v4

    #@5b8
    .line 252
    .local v4, "allowedKeyManagementString":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    #@5ba
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@5bd
    const-string/jumbo v19, "AUTH:  "

    #@5c0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c3
    move-result-object v18

    #@5c4
    move-object/from16 v0, v18

    #@5c6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c9
    move-result-object v18

    #@5ca
    .line 253
    const-string/jumbo v19, "\n"

    #@5cd
    .line 252
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d0
    move-result-object v18

    #@5d1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d4
    move-result-object v18

    #@5d5
    move-object/from16 v0, p1

    #@5d7
    move-object/from16 v1, v18

    #@5d9
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@5dc
    .line 254
    new-instance v18, Ljava/lang/StringBuilder;

    #@5de
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@5e1
    const-string/jumbo v19, "NETWORK_SELECTION_STATUS:  "

    #@5e4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e7
    move-result-object v18

    #@5e8
    .line 255
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    #@5eb
    move-result v19

    #@5ec
    .line 254
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5ef
    move-result-object v18

    #@5f0
    .line 255
    const-string/jumbo v19, "\n"

    #@5f3
    .line 254
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f6
    move-result-object v18

    #@5f7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5fa
    move-result-object v18

    #@5fb
    move-object/from16 v0, p1

    #@5fd
    move-object/from16 v1, v18

    #@5ff
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@602
    .line 256
    new-instance v18, Ljava/lang/StringBuilder;

    #@604
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@607
    const-string/jumbo v19, "NETWORK_SELECTION_DISABLE_REASON:  "

    #@60a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60d
    move-result-object v18

    #@60e
    .line 257
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    #@611
    move-result v19

    #@612
    .line 256
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@615
    move-result-object v18

    #@616
    .line 257
    const-string/jumbo v19, "\n"

    #@619
    .line 256
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61c
    move-result-object v18

    #@61d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@620
    move-result-object v18

    #@621
    move-object/from16 v0, p1

    #@623
    move-object/from16 v1, v18

    #@625
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@628
    .line 259
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@62b
    move-result-object v18

    #@62c
    if-eqz v18, :cond_9

    #@62e
    .line 260
    new-instance v18, Ljava/lang/StringBuilder;

    #@630
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@633
    const-string/jumbo v19, "CHOICE:  "

    #@636
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@639
    move-result-object v18

    #@63a
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@63d
    move-result-object v19

    #@63e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@641
    move-result-object v18

    #@642
    const-string/jumbo v19, "\n"

    #@645
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@648
    move-result-object v18

    #@649
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64c
    move-result-object v18

    #@64d
    move-object/from16 v0, p1

    #@64f
    move-object/from16 v1, v18

    #@651
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@654
    .line 261
    new-instance v18, Ljava/lang/StringBuilder;

    #@656
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@659
    const-string/jumbo v19, "CHOICE_TIME:  "

    #@65c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65f
    move-result-object v18

    #@660
    .line 262
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    #@663
    move-result-wide v20

    #@664
    .line 261
    move-object/from16 v0, v18

    #@666
    move-wide/from16 v1, v20

    #@668
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@66b
    move-result-object v18

    #@66c
    .line 262
    const-string/jumbo v19, "\n"

    #@66f
    .line 261
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@672
    move-result-object v18

    #@673
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@676
    move-result-object v18

    #@677
    move-object/from16 v0, p1

    #@679
    move-object/from16 v1, v18

    #@67b
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@67e
    .line 265
    :cond_9
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@680
    move-object/from16 v18, v0

    #@682
    if-eqz v18, :cond_b

    #@684
    .line 266
    move-object/from16 v0, p0

    #@686
    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    #@688
    move-object/from16 v18, v0

    #@68a
    new-instance v19, Ljava/lang/StringBuilder;

    #@68c
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@68f
    const-string/jumbo v20, "writeKnownNetworkHistory write linked "

    #@692
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@695
    move-result-object v19

    #@696
    .line 267
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@698
    move-object/from16 v20, v0

    #@69a
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    #@69d
    move-result v20

    #@69e
    .line 266
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a1
    move-result-object v19

    #@6a2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a5
    move-result-object v19

    #@6a6
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNetworkHistory;->log(Ljava/lang/String;)V

    #@6a9
    .line 269
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@6ab
    move-object/from16 v18, v0

    #@6ad
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@6b0
    move-result-object v18

    #@6b1
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6b4
    move-result-object v9

    #@6b5
    .local v9, "key$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@6b8
    move-result v18

    #@6b9
    if-eqz v18, :cond_b

    #@6bb
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6be
    move-result-object v8

    #@6bf
    check-cast v8, Ljava/lang/String;

    #@6c1
    .line 270
    .local v8, "key":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    #@6c3
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@6c6
    const-string/jumbo v19, "LINK:  "

    #@6c9
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6cc
    move-result-object v18

    #@6cd
    move-object/from16 v0, v18

    #@6cf
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d2
    move-result-object v18

    #@6d3
    const-string/jumbo v19, "\n"

    #@6d6
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d9
    move-result-object v18

    #@6da
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6dd
    move-result-object v18

    #@6de
    move-object/from16 v0, p1

    #@6e0
    move-object/from16 v1, v18

    #@6e2
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@6e5
    goto :goto_3

    #@6e6
    .line 195
    .end local v4    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "key$iterator":Ljava/util/Iterator;
    :cond_a
    const-string/jumbo v18, "CONFIG_BSSID:  null\n"

    #@6e9
    move-object/from16 v0, p1

    #@6eb
    move-object/from16 v1, v18

    #@6ed
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@6f0
    goto/16 :goto_2

    #@6f2
    .line 274
    .restart local v4    # "allowedKeyManagementString":Ljava/lang/String;
    :cond_b
    iget-object v10, v5, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@6f4
    .line 275
    .local v10, "macAddress":Ljava/lang/String;
    if-eqz v10, :cond_c

    #@6f6
    .line 276
    new-instance v18, Ljava/lang/StringBuilder;

    #@6f8
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@6fb
    const-string/jumbo v19, "DEFAULT_GW:  "

    #@6fe
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@701
    move-result-object v18

    #@702
    move-object/from16 v0, v18

    #@704
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@707
    move-result-object v18

    #@708
    const-string/jumbo v19, "\n"

    #@70b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70e
    move-result-object v18

    #@70f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@712
    move-result-object v18

    #@713
    move-object/from16 v0, p1

    #@715
    move-object/from16 v1, v18

    #@717
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@71a
    .line 279
    :cond_c
    move-object/from16 v0, p0

    #@71c
    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    #@71e
    move-object/from16 v18, v0

    #@720
    move-object/from16 v0, p0

    #@722
    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$scanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    #@724
    move-object/from16 v19, v0

    #@726
    move-object/from16 v0, v18

    #@728
    move-object/from16 v1, v19

    #@72a
    invoke-static {v0, v5, v1}, Lcom/android/server/wifi/WifiNetworkHistory;->-wrap0(Lcom/android/server/wifi/WifiNetworkHistory;Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;

    #@72d
    move-result-object v18

    #@72e
    if-eqz v18, :cond_d

    #@730
    .line 280
    move-object/from16 v0, p0

    #@732
    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->this$0:Lcom/android/server/wifi/WifiNetworkHistory;

    #@734
    move-object/from16 v18, v0

    #@736
    .line 281
    move-object/from16 v0, p0

    #@738
    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$scanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    #@73a
    move-object/from16 v19, v0

    #@73c
    .line 280
    move-object/from16 v0, v18

    #@73e
    move-object/from16 v1, v19

    #@740
    invoke-static {v0, v5, v1}, Lcom/android/server/wifi/WifiNetworkHistory;->-wrap0(Lcom/android/server/wifi/WifiNetworkHistory;Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;

    #@743
    move-result-object v18

    #@744
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@747
    move-result-object v18

    #@748
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@74b
    move-result-object v14

    #@74c
    .local v14, "scanDetail$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@74f
    move-result v18

    #@750
    if-eqz v18, :cond_d

    #@752
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@755
    move-result-object v13

    #@756
    check-cast v13, Lcom/android/server/wifi/ScanDetail;

    #@758
    .line 282
    .local v13, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@75b
    move-result-object v12

    #@75c
    .line 283
    .local v12, "result":Landroid/net/wifi/ScanResult;
    new-instance v18, Ljava/lang/StringBuilder;

    #@75e
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@761
    const-string/jumbo v19, "BSSID:  "

    #@764
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@767
    move-result-object v18

    #@768
    .line 284
    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@76a
    move-object/from16 v19, v0

    #@76c
    .line 283
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76f
    move-result-object v18

    #@770
    .line 284
    const-string/jumbo v19, "\n"

    #@773
    .line 283
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@776
    move-result-object v18

    #@777
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77a
    move-result-object v18

    #@77b
    move-object/from16 v0, p1

    #@77d
    move-object/from16 v1, v18

    #@77f
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@782
    .line 285
    new-instance v18, Ljava/lang/StringBuilder;

    #@784
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@787
    const-string/jumbo v19, "FREQ:  "

    #@78a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78d
    move-result-object v18

    #@78e
    .line 286
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    #@790
    move/from16 v19, v0

    #@792
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@795
    move-result-object v19

    #@796
    .line 285
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@799
    move-result-object v18

    #@79a
    .line 286
    const-string/jumbo v19, "\n"

    #@79d
    .line 285
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a0
    move-result-object v18

    #@7a1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a4
    move-result-object v18

    #@7a5
    move-object/from16 v0, p1

    #@7a7
    move-object/from16 v1, v18

    #@7a9
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@7ac
    .line 288
    new-instance v18, Ljava/lang/StringBuilder;

    #@7ae
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@7b1
    const-string/jumbo v19, "RSSI:  "

    #@7b4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b7
    move-result-object v18

    #@7b8
    .line 289
    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    #@7ba
    move/from16 v19, v0

    #@7bc
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7bf
    move-result-object v19

    #@7c0
    .line 288
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c3
    move-result-object v18

    #@7c4
    .line 289
    const-string/jumbo v19, "\n"

    #@7c7
    .line 288
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7ca
    move-result-object v18

    #@7cb
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7ce
    move-result-object v18

    #@7cf
    move-object/from16 v0, p1

    #@7d1
    move-object/from16 v1, v18

    #@7d3
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@7d6
    .line 291
    const-string/jumbo v18, "/BSSID\n"

    #@7d9
    move-object/from16 v0, p1

    #@7db
    move-object/from16 v1, v18

    #@7dd
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@7e0
    goto/16 :goto_4

    #@7e2
    .line 294
    .end local v12    # "result":Landroid/net/wifi/ScanResult;
    .end local v13    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v14    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_d
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    #@7e4
    move-object/from16 v18, v0

    #@7e6
    if-eqz v18, :cond_e

    #@7e8
    .line 295
    new-instance v18, Ljava/lang/StringBuilder;

    #@7ea
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@7ed
    const-string/jumbo v19, "FAILURE:  "

    #@7f0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f3
    move-result-object v18

    #@7f4
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    #@7f6
    move-object/from16 v19, v0

    #@7f8
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7fb
    move-result-object v18

    #@7fc
    const-string/jumbo v19, "\n"

    #@7ff
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@802
    move-result-object v18

    #@803
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@806
    move-result-object v18

    #@807
    move-object/from16 v0, p1

    #@809
    move-object/from16 v1, v18

    #@80b
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@80e
    .line 297
    :cond_e
    new-instance v18, Ljava/lang/StringBuilder;

    #@810
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@813
    const-string/jumbo v19, "HAS_EVER_CONNECTED:  "

    #@816
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@819
    move-result-object v18

    #@81a
    .line 298
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    #@81d
    move-result v19

    #@81e
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@821
    move-result-object v19

    #@822
    .line 297
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@825
    move-result-object v18

    #@826
    .line 298
    const-string/jumbo v19, "\n"

    #@829
    .line 297
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82c
    move-result-object v18

    #@82d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@830
    move-result-object v18

    #@831
    move-object/from16 v0, p1

    #@833
    move-object/from16 v1, v18

    #@835
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@838
    .line 299
    const-string/jumbo v18, "\n"

    #@83b
    move-object/from16 v0, p1

    #@83d
    move-object/from16 v1, v18

    #@83f
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@842
    .line 301
    const-string/jumbo v18, "\n"

    #@845
    move-object/from16 v0, p1

    #@847
    move-object/from16 v1, v18

    #@849
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@84c
    .line 302
    const-string/jumbo v18, "\n"

    #@84f
    move-object/from16 v0, p1

    #@851
    move-object/from16 v1, v18

    #@853
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@856
    goto/16 :goto_0

    #@858
    .line 304
    .end local v4    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "disableTime":Ljava/lang/String;
    .end local v10    # "macAddress":Ljava/lang/String;
    .end local v11    # "numlink":I
    .end local v17    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_f
    move-object/from16 v0, p0

    #@85a
    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$deletedEphemeralSSIDs:Ljava/util/Set;

    #@85c
    move-object/from16 v18, v0

    #@85e
    if-eqz v18, :cond_10

    #@860
    move-object/from16 v0, p0

    #@862
    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$deletedEphemeralSSIDs:Ljava/util/Set;

    #@864
    move-object/from16 v18, v0

    #@866
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    #@869
    move-result v18

    #@86a
    if-lez v18, :cond_10

    #@86c
    .line 305
    move-object/from16 v0, p0

    #@86e
    iget-object v0, v0, Lcom/android/server/wifi/WifiNetworkHistory$1;->val$deletedEphemeralSSIDs:Ljava/util/Set;

    #@870
    move-object/from16 v18, v0

    #@872
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@875
    move-result-object v16

    #@876
    .local v16, "ssid$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@879
    move-result v18

    #@87a
    if-eqz v18, :cond_10

    #@87c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@87f
    move-result-object v15

    #@880
    check-cast v15, Ljava/lang/String;

    #@882
    .line 306
    .local v15, "ssid":Ljava/lang/String;
    const-string/jumbo v18, "DELETED_EPHEMERAL"

    #@885
    move-object/from16 v0, p1

    #@887
    move-object/from16 v1, v18

    #@889
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@88c
    .line 307
    move-object/from16 v0, p1

    #@88e
    invoke-virtual {v0, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@891
    .line 308
    const-string/jumbo v18, "\n"

    #@894
    move-object/from16 v0, p1

    #@896
    move-object/from16 v1, v18

    #@898
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@89b
    goto :goto_5

    #@89c
    .line 142
    .end local v15    # "ssid":Ljava/lang/String;
    .end local v16    # "ssid$iterator":Ljava/util/Iterator;
    :cond_10
    return-void
.end method
