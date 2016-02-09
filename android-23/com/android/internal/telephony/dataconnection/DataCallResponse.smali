.class public Lcom/android/internal/telephony/dataconnection/DataCallResponse;
.super Ljava/lang/Object;
.source "DataCallResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field public active:I

.field public addresses:[Ljava/lang/String;

.field public cid:I

.field public dnses:[Ljava/lang/String;

.field public gateways:[Ljava/lang/String;

.field public ifname:Ljava/lang/String;

.field public mtu:I

.field public pcscf:[Ljava/lang/String;

.field public status:I

.field public suggestedRetryTime:I

.field public type:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->DBG:Z

    #@7
    .line 39
    const-string/jumbo v0, "DataCallResponse"

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->LOG_TAG:Ljava/lang/String;

    #@c
    .line 41
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    #@e
    .line 42
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@10
    .line 43
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@12
    .line 44
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@14
    .line 45
    const-string/jumbo v0, ""

    #@17
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@19
    .line 46
    const-string/jumbo v0, ""

    #@1c
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@1e
    .line 47
    new-array v0, v1, [Ljava/lang/String;

    #@20
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@22
    .line 48
    new-array v0, v1, [Ljava/lang/String;

    #@24
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    #@26
    .line 49
    new-array v0, v1, [Ljava/lang/String;

    #@28
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@2a
    .line 50
    const/4 v0, -0x1

    #@2b
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    #@2d
    .line 51
    new-array v0, v1, [Ljava/lang/String;

    #@2f
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    #@31
    .line 52
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    #@33
    .line 37
    return-void
.end method


# virtual methods
.method public setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 20
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;
    .param p2, "okToUseSystemPropertyDns"    # Z

    #@0
    .prologue
    .line 123
    if-nez p1, :cond_1

    #@2
    .line 124
    new-instance p1, Landroid/net/LinkProperties;

    #@4
    .end local p1    # "linkProperties":Landroid/net/LinkProperties;
    invoke-direct/range {p1 .. p1}, Landroid/net/LinkProperties;-><init>()V

    #@7
    .line 128
    .restart local p1    # "linkProperties":Landroid/net/LinkProperties;
    :goto_0
    move-object/from16 v0, p0

    #@9
    iget v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@b
    sget-object v15, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@d
    invoke-virtual {v15}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    #@10
    move-result v15

    #@11
    if-ne v14, v15, :cond_15

    #@13
    .line 129
    new-instance v14, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v15, "net."

    #@1b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v14

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@23
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v14

    #@27
    const-string/jumbo v15, "."

    #@2a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v14

    #@2e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v11

    #@32
    .line 133
    .local v11, "propertyPrefix":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    #@34
    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@36
    move-object/from16 v0, p1

    #@38
    invoke-virtual {v0, v14}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    #@3b
    .line 136
    move-object/from16 v0, p0

    #@3d
    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@3f
    if-eqz v14, :cond_7

    #@41
    move-object/from16 v0, p0

    #@43
    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@45
    array-length v14, v14

    #@46
    if-lez v14, :cond_7

    #@48
    .line 137
    move-object/from16 v0, p0

    #@4a
    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@4c
    const/4 v14, 0x0

    #@4d
    array-length v0, v15

    #@4e
    move/from16 v16, v0

    #@50
    :goto_1
    move/from16 v0, v16

    #@52
    if-ge v14, v0, :cond_8

    #@54
    aget-object v2, v15, v14

    #@56
    .line 138
    .local v2, "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    .line 139
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    move-result v17

    #@5e
    if-eqz v17, :cond_2

    #@60
    .line 137
    :cond_0
    :goto_2
    add-int/lit8 v14, v14, 0x1

    #@62
    goto :goto_1

    #@63
    .line 126
    .end local v2    # "addr":Ljava/lang/String;
    .end local v11    # "propertyPrefix":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    #@66
    goto :goto_0

    #@67
    .line 143
    .restart local v2    # "addr":Ljava/lang/String;
    .restart local v11    # "propertyPrefix":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v17, "/"

    #@6a
    move-object/from16 v0, v17

    #@6c
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    .line 144
    .local v4, "ap":[Ljava/lang/String;
    array-length v0, v4

    #@71
    move/from16 v17, v0

    #@73
    const/16 v18, 0x2

    #@75
    move/from16 v0, v17

    #@77
    move/from16 v1, v18

    #@79
    if-ne v0, v1, :cond_5

    #@7b
    .line 145
    const/16 v17, 0x0

    #@7d
    aget-object v2, v4, v17

    #@7f
    .line 146
    const/16 v17, 0x1

    #@81
    aget-object v17, v4, v17

    #@83
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    #@86
    move-result v3

    #@87
    .line 152
    .local v3, "addrPrefixLen":I
    :goto_3
    :try_start_2
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    #@8a
    move-result-object v9

    #@8b
    .line 156
    .local v9, "ia":Ljava/net/InetAddress;
    :try_start_3
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@8e
    move-result v17

    #@8f
    if-nez v17, :cond_0

    #@91
    .line 157
    if-nez v3, :cond_3

    #@93
    .line 159
    instance-of v0, v9, Ljava/net/Inet4Address;

    #@95
    move/from16 v17, v0

    #@97
    if-eqz v17, :cond_6

    #@99
    const/16 v3, 0x20

    #@9b
    .line 161
    :cond_3
    :goto_4
    const-string/jumbo v17, "DataCallResponse"

    #@9e
    new-instance v18, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v19, "addr/pl="

    #@a6
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v18

    #@aa
    move-object/from16 v0, v18

    #@ac
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v18

    #@b0
    const-string/jumbo v19, "/"

    #@b3
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v18

    #@b7
    move-object/from16 v0, v18

    #@b9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v18

    #@bd
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v18

    #@c1
    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c4
    .line 162
    new-instance v10, Landroid/net/LinkAddress;

    #@c6
    invoke-direct {v10, v9, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@c9
    .line 163
    .local v10, "la":Landroid/net/LinkAddress;
    move-object/from16 v0, p1

    #@cb
    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    #@ce
    goto :goto_2

    #@cf
    .line 233
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "addrPrefixLen":I
    .end local v4    # "ap":[Ljava/lang/String;
    .end local v9    # "ia":Ljava/net/InetAddress;
    .end local v10    # "la":Landroid/net/LinkAddress;
    :catch_0
    move-exception v8

    #@d0
    .line 234
    .local v8, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v14, "DataCallResponse"

    #@d3
    new-instance v15, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v16, "setLinkProperties: UnknownHostException "

    #@db
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v15

    #@df
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v15

    #@e3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v15

    #@e7
    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ea
    .line 235
    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V

    #@ed
    .line 236
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@ef
    .line 247
    .end local v8    # "e":Ljava/net/UnknownHostException;
    .end local v11    # "propertyPrefix":Ljava/lang/String;
    .local v12, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :goto_5
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@f1
    if-eq v12, v14, :cond_4

    #@f3
    .line 249
    const-string/jumbo v14, "DataCallResponse"

    #@f6
    new-instance v15, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v16, "setLinkProperties: error clearing LinkProperties status="

    #@fe
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v15

    #@102
    .line 250
    move-object/from16 v0, p0

    #@104
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@106
    move/from16 v16, v0

    #@108
    .line 249
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v15

    #@10c
    .line 250
    const-string/jumbo v16, " result="

    #@10f
    .line 249
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v15

    #@113
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v15

    #@117
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v15

    #@11b
    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11e
    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    #@121
    .line 255
    :cond_4
    return-object v12

    #@122
    .line 148
    .end local v12    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .restart local v2    # "addr":Ljava/lang/String;
    .restart local v4    # "ap":[Ljava/lang/String;
    .restart local v11    # "propertyPrefix":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    #@123
    .restart local v3    # "addrPrefixLen":I
    goto/16 :goto_3

    #@125
    .line 153
    :catch_1
    move-exception v7

    #@126
    .line 154
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v14, Ljava/net/UnknownHostException;

    #@128
    new-instance v15, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v16, "Non-numeric ip addr="

    #@130
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v15

    #@134
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v15

    #@138
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v15

    #@13c
    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@13f
    throw v14

    #@140
    .line 159
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "ia":Ljava/net/InetAddress;
    :cond_6
    const/16 v3, 0x80

    #@142
    goto/16 :goto_4

    #@144
    .line 167
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "addrPrefixLen":I
    .end local v4    # "ap":[Ljava/lang/String;
    .end local v9    # "ia":Ljava/net/InetAddress;
    :cond_7
    new-instance v14, Ljava/net/UnknownHostException;

    #@146
    new-instance v15, Ljava/lang/StringBuilder;

    #@148
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@14b
    const-string/jumbo v16, "no address for ifname="

    #@14e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v15

    #@152
    move-object/from16 v0, p0

    #@154
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@156
    move-object/from16 v16, v0

    #@158
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v15

    #@15c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f
    move-result-object v15

    #@160
    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@163
    throw v14

    #@164
    .line 171
    :cond_8
    move-object/from16 v0, p0

    #@166
    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    #@168
    if-eqz v14, :cond_b

    #@16a
    move-object/from16 v0, p0

    #@16c
    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    #@16e
    array-length v14, v14

    #@16f
    if-lez v14, :cond_b

    #@171
    .line 172
    move-object/from16 v0, p0

    #@173
    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    #@175
    const/4 v14, 0x0

    #@176
    array-length v0, v15

    #@177
    move/from16 v16, v0

    #@179
    :goto_6
    move/from16 v0, v16

    #@17b
    if-ge v14, v0, :cond_f

    #@17d
    aget-object v2, v15, v14

    #@17f
    .line 173
    .restart local v2    # "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@182
    move-result-object v2

    #@183
    .line 174
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0

    #@186
    move-result v17

    #@187
    if-eqz v17, :cond_a

    #@189
    .line 172
    :cond_9
    :goto_7
    add-int/lit8 v14, v14, 0x1

    #@18b
    goto :goto_6

    #@18c
    .line 177
    :cond_a
    :try_start_5
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0

    #@18f
    move-result-object v9

    #@190
    .line 181
    .restart local v9    # "ia":Ljava/net/InetAddress;
    :try_start_6
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@193
    move-result v17

    #@194
    if-nez v17, :cond_9

    #@196
    .line 182
    move-object/from16 v0, p1

    #@198
    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    #@19b
    goto :goto_7

    #@19c
    .line 178
    .end local v9    # "ia":Ljava/net/InetAddress;
    :catch_2
    move-exception v7

    #@19d
    .line 179
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/net/UnknownHostException;

    #@19f
    new-instance v15, Ljava/lang/StringBuilder;

    #@1a1
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1a4
    const-string/jumbo v16, "Non-numeric dns addr="

    #@1a7
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v15

    #@1ab
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v15

    #@1af
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b2
    move-result-object v15

    #@1b3
    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@1b6
    throw v14

    #@1b7
    .line 185
    .end local v2    # "addr":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    if-eqz p2, :cond_e

    #@1b9
    .line 186
    const/4 v14, 0x2

    #@1ba
    new-array v6, v14, [Ljava/lang/String;

    #@1bc
    .line 187
    .local v6, "dnsServers":[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    #@1be
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1c1
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v14

    #@1c5
    const-string/jumbo v15, "dns1"

    #@1c8
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v14

    #@1cc
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cf
    move-result-object v14

    #@1d0
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@1d3
    move-result-object v14

    #@1d4
    const/4 v15, 0x0

    #@1d5
    aput-object v14, v6, v15

    #@1d7
    .line 188
    new-instance v14, Ljava/lang/StringBuilder;

    #@1d9
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1dc
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v14

    #@1e0
    const-string/jumbo v15, "dns2"

    #@1e3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v14

    #@1e7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ea
    move-result-object v14

    #@1eb
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@1ee
    move-result-object v14

    #@1ef
    const/4 v15, 0x1

    #@1f0
    aput-object v14, v6, v15

    #@1f2
    .line 189
    const/4 v14, 0x0

    #@1f3
    array-length v15, v6

    #@1f4
    :goto_8
    if-ge v14, v15, :cond_f

    #@1f6
    aget-object v5, v6, v14

    #@1f8
    .line 190
    .local v5, "dnsAddr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1fb
    move-result-object v5

    #@1fc
    .line 191
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0

    #@1ff
    move-result v16

    #@200
    if-eqz v16, :cond_d

    #@202
    .line 189
    :cond_c
    :goto_9
    add-int/lit8 v14, v14, 0x1

    #@204
    goto :goto_8

    #@205
    .line 194
    :cond_d
    :try_start_7
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0

    #@208
    move-result-object v9

    #@209
    .line 198
    .restart local v9    # "ia":Ljava/net/InetAddress;
    :try_start_8
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@20c
    move-result v16

    #@20d
    if-nez v16, :cond_c

    #@20f
    .line 199
    move-object/from16 v0, p1

    #@211
    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    #@214
    goto :goto_9

    #@215
    .line 195
    .end local v9    # "ia":Ljava/net/InetAddress;
    :catch_3
    move-exception v7

    #@216
    .line 196
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/net/UnknownHostException;

    #@218
    new-instance v15, Ljava/lang/StringBuilder;

    #@21a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@21d
    const-string/jumbo v16, "Non-numeric dns addr="

    #@220
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@223
    move-result-object v15

    #@224
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@227
    move-result-object v15

    #@228
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22b
    move-result-object v15

    #@22c
    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@22f
    throw v14

    #@230
    .line 203
    .end local v5    # "dnsAddr":Ljava/lang/String;
    .end local v6    # "dnsServers":[Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    new-instance v14, Ljava/net/UnknownHostException;

    #@232
    const-string/jumbo v15, "Empty dns response and no system default dns"

    #@235
    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@238
    throw v14

    #@239
    .line 207
    :cond_f
    move-object/from16 v0, p0

    #@23b
    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@23d
    if-eqz v14, :cond_10

    #@23f
    move-object/from16 v0, p0

    #@241
    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@243
    array-length v14, v14

    #@244
    if-nez v14, :cond_11

    #@246
    .line 208
    :cond_10
    new-instance v14, Ljava/lang/StringBuilder;

    #@248
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@24b
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v14

    #@24f
    const-string/jumbo v15, "gw"

    #@252
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v14

    #@256
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@259
    move-result-object v14

    #@25a
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@25d
    move-result-object v13

    #@25e
    .line 209
    .local v13, "sysGateways":Ljava/lang/String;
    if-eqz v13, :cond_12

    #@260
    .line 210
    const-string/jumbo v14, " "

    #@263
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@266
    move-result-object v14

    #@267
    move-object/from16 v0, p0

    #@269
    iput-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@26b
    .line 215
    .end local v13    # "sysGateways":Ljava/lang/String;
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    #@26d
    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@26f
    const/4 v14, 0x0

    #@270
    array-length v0, v15

    #@271
    move/from16 v16, v0

    #@273
    :goto_b
    move/from16 v0, v16

    #@275
    if-ge v14, v0, :cond_14

    #@277
    aget-object v2, v15, v14

    #@279
    .line 216
    .restart local v2    # "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@27c
    move-result-object v2

    #@27d
    .line 217
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@280
    move-result v17

    #@281
    if-eqz v17, :cond_13

    #@283
    .line 215
    :goto_c
    add-int/lit8 v14, v14, 0x1

    #@285
    goto :goto_b

    #@286
    .line 212
    .end local v2    # "addr":Ljava/lang/String;
    .restart local v13    # "sysGateways":Ljava/lang/String;
    :cond_12
    const/4 v14, 0x0

    #@287
    new-array v14, v14, [Ljava/lang/String;

    #@289
    move-object/from16 v0, p0

    #@28b
    iput-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0

    #@28d
    goto :goto_a

    #@28e
    .line 220
    .end local v13    # "sysGateways":Ljava/lang/String;
    .restart local v2    # "addr":Ljava/lang/String;
    :cond_13
    :try_start_9
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_0

    #@291
    move-result-object v9

    #@292
    .line 225
    .restart local v9    # "ia":Ljava/net/InetAddress;
    :try_start_a
    new-instance v17, Landroid/net/RouteInfo;

    #@294
    move-object/from16 v0, v17

    #@296
    invoke-direct {v0, v9}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    #@299
    move-object/from16 v0, p1

    #@29b
    move-object/from16 v1, v17

    #@29d
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    #@2a0
    goto :goto_c

    #@2a1
    .line 221
    .end local v9    # "ia":Ljava/net/InetAddress;
    :catch_4
    move-exception v7

    #@2a2
    .line 222
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/net/UnknownHostException;

    #@2a4
    new-instance v15, Ljava/lang/StringBuilder;

    #@2a6
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@2a9
    const-string/jumbo v16, "Non-numeric gateway addr="

    #@2ac
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v15

    #@2b0
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b3
    move-result-object v15

    #@2b4
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b7
    move-result-object v15

    #@2b8
    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@2bb
    throw v14

    #@2bc
    .line 230
    .end local v2    # "addr":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_14
    move-object/from16 v0, p0

    #@2be
    iget v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    #@2c0
    move-object/from16 v0, p1

    #@2c2
    invoke-virtual {v0, v14}, Landroid/net/LinkProperties;->setMtu(I)V

    #@2c5
    .line 232
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0

    #@2c7
    .restart local v12    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5

    #@2c9
    .line 239
    .end local v11    # "propertyPrefix":Ljava/lang/String;
    .end local v12    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_15
    move-object/from16 v0, p0

    #@2cb
    iget v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    #@2cd
    const/4 v15, 0x4

    #@2ce
    if-ge v14, v15, :cond_16

    #@2d0
    .line 240
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@2d2
    .restart local v12    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5

    #@2d4
    .line 242
    .end local v12    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_16
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@2d6
    .restart local v12    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 79
    new-instance v1, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 80
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "DataCallResponse: {"

    #@9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c
    move-result-object v3

    #@d
    .line 81
    const-string/jumbo v4, "version="

    #@10
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13
    move-result-object v3

    #@14
    .line 81
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    #@16
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@19
    move-result-object v3

    #@1a
    .line 82
    const-string/jumbo v4, " status="

    #@1d
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    move-result-object v3

    #@21
    .line 82
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@23
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@26
    move-result-object v3

    #@27
    .line 83
    const-string/jumbo v4, " retry="

    #@2a
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    move-result-object v3

    #@2e
    .line 83
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    #@30
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@33
    move-result-object v3

    #@34
    .line 84
    const-string/jumbo v4, " cid="

    #@37
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    move-result-object v3

    #@3b
    .line 84
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@3d
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@40
    move-result-object v3

    #@41
    .line 85
    const-string/jumbo v4, " active="

    #@44
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@47
    move-result-object v3

    #@48
    .line 85
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@4a
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@4d
    move-result-object v3

    #@4e
    .line 86
    const-string/jumbo v4, " type="

    #@51
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@54
    move-result-object v3

    #@55
    .line 86
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@57
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5a
    move-result-object v3

    #@5b
    .line 87
    const-string/jumbo v4, " ifname="

    #@5e
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@61
    move-result-object v3

    #@62
    .line 87
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@64
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@67
    move-result-object v3

    #@68
    .line 88
    const-string/jumbo v4, " mtu="

    #@6b
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6e
    move-result-object v3

    #@6f
    .line 88
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    #@71
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@74
    move-result-object v3

    #@75
    .line 89
    const-string/jumbo v4, " addresses=["

    #@78
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7b
    .line 90
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@7d
    array-length v5, v4

    #@7e
    move v3, v2

    #@7f
    :goto_0
    if-ge v3, v5, :cond_0

    #@81
    aget-object v0, v4, v3

    #@83
    .line 91
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@86
    .line 92
    const-string/jumbo v6, ","

    #@89
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8c
    .line 90
    add-int/lit8 v3, v3, 0x1

    #@8e
    goto :goto_0

    #@8f
    .line 94
    .end local v0    # "addr":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@91
    array-length v3, v3

    #@92
    if-lez v3, :cond_1

    #@94
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    #@97
    move-result v3

    #@98
    add-int/lit8 v3, v3, -0x1

    #@9a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    #@9d
    .line 95
    :cond_1
    const-string/jumbo v3, "] dnses=["

    #@a0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a3
    .line 96
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    #@a5
    array-length v5, v4

    #@a6
    move v3, v2

    #@a7
    :goto_1
    if-ge v3, v5, :cond_2

    #@a9
    aget-object v0, v4, v3

    #@ab
    .line 97
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ae
    .line 98
    const-string/jumbo v6, ","

    #@b1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b4
    .line 96
    add-int/lit8 v3, v3, 0x1

    #@b6
    goto :goto_1

    #@b7
    .line 100
    .end local v0    # "addr":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    #@b9
    array-length v3, v3

    #@ba
    if-lez v3, :cond_3

    #@bc
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    #@bf
    move-result v3

    #@c0
    add-int/lit8 v3, v3, -0x1

    #@c2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    #@c5
    .line 101
    :cond_3
    const-string/jumbo v3, "] gateways=["

    #@c8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@cb
    .line 102
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@cd
    array-length v5, v4

    #@ce
    move v3, v2

    #@cf
    :goto_2
    if-ge v3, v5, :cond_4

    #@d1
    aget-object v0, v4, v3

    #@d3
    .line 103
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d6
    .line 104
    const-string/jumbo v6, ","

    #@d9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@dc
    .line 102
    add-int/lit8 v3, v3, 0x1

    #@de
    goto :goto_2

    #@df
    .line 106
    .end local v0    # "addr":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@e1
    array-length v3, v3

    #@e2
    if-lez v3, :cond_5

    #@e4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    #@e7
    move-result v3

    #@e8
    add-int/lit8 v3, v3, -0x1

    #@ea
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    #@ed
    .line 107
    :cond_5
    const-string/jumbo v3, "] pcscf=["

    #@f0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f3
    .line 108
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    #@f5
    array-length v4, v3

    #@f6
    :goto_3
    if-ge v2, v4, :cond_6

    #@f8
    aget-object v0, v3, v2

    #@fa
    .line 109
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@fd
    .line 110
    const-string/jumbo v5, ","

    #@100
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@103
    .line 108
    add-int/lit8 v2, v2, 0x1

    #@105
    goto :goto_3

    #@106
    .line 112
    .end local v0    # "addr":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    #@108
    array-length v2, v2

    #@109
    if-lez v2, :cond_7

    #@10b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    #@10e
    move-result v2

    #@10f
    add-int/lit8 v2, v2, -0x1

    #@111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    #@114
    .line 113
    :cond_7
    const-string/jumbo v2, "]}"

    #@117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11a
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@11d
    move-result-object v2

    #@11e
    return-object v2
.end method
