.class Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;
.super Lcom/android/internal/util/State;
.source "DcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DccDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcController;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcController;

    #@0
    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcController;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcController;)V

    #@3
    return-void
.end method

.method private onDataStateChanged(Ljava/util/ArrayList;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 218
    .local p1, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@4
    move-object/from16 v28, v0

    #@6
    new-instance v29, Ljava/lang/StringBuilder;

    #@8
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v30, "onDataStateChanged: dcsList="

    #@e
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v29

    #@12
    move-object/from16 v0, v29

    #@14
    move-object/from16 v1, p1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v29

    #@1a
    .line 219
    const-string/jumbo v30, " mDcListActiveByCid="

    #@1d
    .line 218
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v29

    #@21
    .line 219
    move-object/from16 v0, p0

    #@23
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@25
    move-object/from16 v30, v0

    #@27
    invoke-static/range {v30 .. v30}, Lcom/android/internal/telephony/dataconnection/DcController;->-get0(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    #@2a
    move-result-object v30

    #@2b
    .line 218
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v29

    #@2f
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v29

    #@33
    invoke-static/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V

    #@36
    .line 227
    new-instance v8, Ljava/util/HashMap;

    #@38
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@3b
    .line 228
    .local v8, "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v14

    #@3f
    .local v14, "dcs$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v28

    #@43
    if-eqz v28, :cond_0

    #@45
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v13

    #@49
    check-cast v13, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@4b
    .line 229
    .local v13, "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget v0, v13, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@4d
    move/from16 v28, v0

    #@4f
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v28

    #@53
    move-object/from16 v0, v28

    #@55
    invoke-virtual {v8, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    goto :goto_0

    #@59
    .line 234
    .end local v13    # "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    #@5b
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@5e
    .line 235
    .local v15, "dcsToRetry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    move-object/from16 v0, p0

    #@60
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@62
    move-object/from16 v28, v0

    #@64
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcController;->-get0(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    #@67
    move-result-object v28

    #@68
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6b
    move-result-object v28

    #@6c
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6f
    move-result-object v10

    #@70
    .local v10, "dc$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@73
    move-result v28

    #@74
    if-eqz v28, :cond_2

    #@76
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@79
    move-result-object v9

    #@7a
    check-cast v9, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7c
    .line 236
    .local v9, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@7e
    move/from16 v28, v0

    #@80
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@83
    move-result-object v28

    #@84
    move-object/from16 v0, v28

    #@86
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    move-result-object v28

    #@8a
    if-nez v28, :cond_1

    #@8c
    .line 237
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@90
    move-object/from16 v28, v0

    #@92
    new-instance v29, Ljava/lang/StringBuilder;

    #@94
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v30, "onDataStateChanged: add to retry dc="

    #@9a
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v29

    #@9e
    move-object/from16 v0, v29

    #@a0
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v29

    #@a4
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v29

    #@a8
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@ab
    .line 238
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ae
    goto :goto_1

    #@af
    .line 241
    .end local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_2
    move-object/from16 v0, p0

    #@b1
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@b3
    move-object/from16 v28, v0

    #@b5
    new-instance v29, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v30, "onDataStateChanged: dcsToRetry="

    #@bd
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v29

    #@c1
    move-object/from16 v0, v29

    #@c3
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v29

    #@c7
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v29

    #@cb
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@ce
    .line 245
    new-instance v6, Ljava/util/ArrayList;

    #@d0
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@d3
    .line 247
    .local v6, "apnsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    const/16 v18, 0x0

    #@d5
    .line 248
    .local v18, "isAnyDataCallDormant":Z
    const/16 v17, 0x0

    #@d7
    .line 250
    .local v17, "isAnyDataCallActive":Z
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@da
    move-result-object v22

    #@db
    .local v22, "newState$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@de
    move-result v28

    #@df
    if-eqz v28, :cond_13

    #@e1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e4
    move-result-object v21

    #@e5
    check-cast v21, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@e7
    .line 252
    .local v21, "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@eb
    move-object/from16 v28, v0

    #@ed
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcController;->-get0(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    #@f0
    move-result-object v28

    #@f1
    move-object/from16 v0, v21

    #@f3
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@f5
    move/from16 v29, v0

    #@f7
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fa
    move-result-object v29

    #@fb
    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@fe
    move-result-object v9

    #@ff
    check-cast v9, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@101
    .line 253
    .restart local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-nez v9, :cond_4

    #@103
    .line 255
    move-object/from16 v0, p0

    #@105
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@107
    move-object/from16 v28, v0

    #@109
    const-string/jumbo v29, "onDataStateChanged: no associated DC yet, ignore"

    #@10c
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    #@10f
    goto :goto_2

    #@110
    .line 259
    :cond_4
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@112
    move-object/from16 v28, v0

    #@114
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    #@117
    move-result v28

    #@118
    if-nez v28, :cond_7

    #@11a
    .line 260
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@11e
    move-object/from16 v28, v0

    #@120
    const-string/jumbo v29, "onDataStateChanged: no connected apns, ignore"

    #@123
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    #@126
    .line 347
    :cond_5
    :goto_3
    move-object/from16 v0, v21

    #@128
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@12a
    move/from16 v28, v0

    #@12c
    const/16 v29, 0x2

    #@12e
    move/from16 v0, v28

    #@130
    move/from16 v1, v29

    #@132
    if-ne v0, v1, :cond_6

    #@134
    .line 348
    const/16 v17, 0x1

    #@136
    .line 350
    :cond_6
    move-object/from16 v0, v21

    #@138
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@13a
    move/from16 v28, v0

    #@13c
    const/16 v29, 0x1

    #@13e
    move/from16 v0, v28

    #@140
    move/from16 v1, v29

    #@142
    if-ne v0, v1, :cond_3

    #@144
    .line 351
    const/16 v18, 0x1

    #@146
    goto :goto_2

    #@147
    .line 264
    :cond_7
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@14b
    move-object/from16 v28, v0

    #@14d
    new-instance v29, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v30, "onDataStateChanged: Found ConnId="

    #@155
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v29

    #@159
    move-object/from16 v0, v21

    #@15b
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@15d
    move/from16 v30, v0

    #@15f
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@162
    move-result-object v29

    #@163
    .line 265
    const-string/jumbo v30, " newState="

    #@166
    .line 264
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v29

    #@16a
    .line 265
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->toString()Ljava/lang/String;

    #@16d
    move-result-object v30

    #@16e
    .line 264
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v29

    #@172
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v29

    #@176
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@179
    .line 266
    move-object/from16 v0, v21

    #@17b
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@17d
    move/from16 v28, v0

    #@17f
    if-nez v28, :cond_b

    #@181
    .line 267
    move-object/from16 v0, p0

    #@183
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@185
    move-object/from16 v28, v0

    #@187
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@18a
    sget-boolean v28, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsCleanupRequired:Z

    #@18c
    if-eqz v28, :cond_8

    #@18e
    .line 268
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@190
    move-object/from16 v28, v0

    #@192
    move-object/from16 v0, v28

    #@194
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@197
    .line 269
    move-object/from16 v0, p0

    #@199
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@19b
    move-object/from16 v28, v0

    #@19d
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@1a0
    const/16 v28, 0x0

    #@1a2
    sput-boolean v28, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsCleanupRequired:Z

    #@1a4
    goto :goto_3

    #@1a5
    .line 271
    :cond_8
    move-object/from16 v0, v21

    #@1a7
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@1a9
    move/from16 v28, v0

    #@1ab
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1ae
    move-result-object v16

    #@1af
    .line 272
    .local v16, "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1b3
    move-object/from16 v28, v0

    #@1b5
    new-instance v29, Ljava/lang/StringBuilder;

    #@1b7
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@1ba
    const-string/jumbo v30, "onDataStateChanged: inactive failCause="

    #@1bd
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v29

    #@1c1
    move-object/from16 v0, v29

    #@1c3
    move-object/from16 v1, v16

    #@1c5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v29

    #@1c9
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v29

    #@1cd
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@1d0
    .line 273
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    #@1d3
    move-result v28

    #@1d4
    if-eqz v28, :cond_9

    #@1d6
    .line 274
    move-object/from16 v0, p0

    #@1d8
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1da
    move-object/from16 v28, v0

    #@1dc
    const-string/jumbo v29, "onDataStateChanged: X restart radio"

    #@1df
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@1e2
    .line 275
    move-object/from16 v0, p0

    #@1e4
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1e6
    move-object/from16 v28, v0

    #@1e8
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@1eb
    move-result-object v28

    #@1ec
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendRestartRadio()V

    #@1ef
    goto/16 :goto_3

    #@1f1
    .line 276
    :cond_9
    move-object/from16 v0, p0

    #@1f3
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1f5
    move-object/from16 v28, v0

    #@1f7
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@1fa
    move-result-object v28

    #@1fb
    move-object/from16 v0, v28

    #@1fd
    move-object/from16 v1, v16

    #@1ff
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    #@202
    move-result v28

    #@203
    if-eqz v28, :cond_a

    #@205
    .line 277
    move-object/from16 v0, p0

    #@207
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@209
    move-object/from16 v28, v0

    #@20b
    const-string/jumbo v29, "onDataStateChanged: inactive, add to cleanup list"

    #@20e
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@211
    .line 278
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@213
    move-object/from16 v28, v0

    #@215
    move-object/from16 v0, v28

    #@217
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@21a
    goto/16 :goto_3

    #@21c
    .line 280
    :cond_a
    move-object/from16 v0, p0

    #@21e
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@220
    move-object/from16 v28, v0

    #@222
    const-string/jumbo v29, "onDataStateChanged: inactive, add to retry list"

    #@225
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@228
    .line 281
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22b
    goto/16 :goto_3

    #@22d
    .line 286
    .end local v16    # "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :cond_b
    move-object/from16 v0, v21

    #@22f
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/dataconnection/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    #@232
    move-result-object v25

    #@233
    .line 287
    .local v25, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    move-object/from16 v0, v25

    #@235
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@237
    move-object/from16 v28, v0

    #@239
    move-object/from16 v0, v25

    #@23b
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@23d
    move-object/from16 v29, v0

    #@23f
    invoke-virtual/range {v28 .. v29}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    #@242
    move-result v28

    #@243
    if-eqz v28, :cond_c

    #@245
    .line 288
    move-object/from16 v0, p0

    #@247
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@249
    move-object/from16 v28, v0

    #@24b
    const-string/jumbo v29, "onDataStateChanged: no change"

    #@24e
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@251
    goto/16 :goto_3

    #@253
    .line 290
    :cond_c
    move-object/from16 v0, v25

    #@255
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@257
    move-object/from16 v28, v0

    #@259
    move-object/from16 v0, v25

    #@25b
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@25d
    move-object/from16 v29, v0

    #@25f
    invoke-virtual/range {v28 .. v29}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    #@262
    move-result v28

    #@263
    if-eqz v28, :cond_12

    #@265
    .line 291
    move-object/from16 v0, v25

    #@267
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@269
    move-object/from16 v28, v0

    #@26b
    move-object/from16 v0, v25

    #@26d
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@26f
    move-object/from16 v29, v0

    #@271
    invoke-virtual/range {v28 .. v29}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    #@274
    move-result v28

    #@275
    if-eqz v28, :cond_d

    #@277
    .line 292
    move-object/from16 v0, v25

    #@279
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@27b
    move-object/from16 v28, v0

    #@27d
    move-object/from16 v0, v25

    #@27f
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@281
    move-object/from16 v29, v0

    #@283
    invoke-virtual/range {v28 .. v29}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    #@286
    move-result v28

    #@287
    if-eqz v28, :cond_d

    #@289
    .line 293
    move-object/from16 v0, v25

    #@28b
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@28d
    move-object/from16 v28, v0

    #@28f
    move-object/from16 v0, v25

    #@291
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@293
    move-object/from16 v29, v0

    #@295
    invoke-virtual/range {v28 .. v29}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    #@298
    move-result v28

    #@299
    if-eqz v28, :cond_d

    #@29b
    .line 294
    move-object/from16 v0, v25

    #@29d
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@29f
    move-object/from16 v28, v0

    #@2a1
    move-object/from16 v0, v25

    #@2a3
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@2a5
    move-object/from16 v29, v0

    #@2a7
    invoke-virtual/range {v28 .. v29}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    #@2aa
    move-result v28

    #@2ab
    if-eqz v28, :cond_d

    #@2ad
    .line 333
    move-object/from16 v0, p0

    #@2af
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2b1
    move-object/from16 v28, v0

    #@2b3
    const-string/jumbo v29, "onDataStateChanged: no changes"

    #@2b6
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@2b9
    goto/16 :goto_3

    #@2bb
    .line 298
    :cond_d
    move-object/from16 v0, v25

    #@2bd
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@2bf
    move-object/from16 v28, v0

    #@2c1
    move-object/from16 v0, v25

    #@2c3
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@2c5
    move-object/from16 v29, v0

    #@2c7
    invoke-virtual/range {v28 .. v29}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    #@2ca
    move-result-object v7

    #@2cb
    .line 300
    .local v7, "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    #@2cd
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2cf
    move-object/from16 v28, v0

    #@2d1
    new-instance v29, Ljava/lang/StringBuilder;

    #@2d3
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@2d6
    const-string/jumbo v30, "onDataStateChanged: oldLp="

    #@2d9
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2dc
    move-result-object v29

    #@2dd
    move-object/from16 v0, v25

    #@2df
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@2e1
    move-object/from16 v30, v0

    #@2e3
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e6
    move-result-object v29

    #@2e7
    .line 301
    const-string/jumbo v30, " newLp="

    #@2ea
    .line 300
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ed
    move-result-object v29

    #@2ee
    .line 301
    move-object/from16 v0, v25

    #@2f0
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@2f2
    move-object/from16 v30, v0

    #@2f4
    .line 300
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f7
    move-result-object v29

    #@2f8
    .line 301
    const-string/jumbo v30, " car="

    #@2fb
    .line 300
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fe
    move-result-object v29

    #@2ff
    move-object/from16 v0, v29

    #@301
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@304
    move-result-object v29

    #@305
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@308
    move-result-object v29

    #@309
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@30c
    .line 303
    const/16 v19, 0x0

    #@30e
    .line 304
    .local v19, "needToClean":Z
    iget-object v0, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@310
    move-object/from16 v28, v0

    #@312
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@315
    move-result-object v3

    #@316
    .local v3, "added$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@319
    move-result v28

    #@31a
    if-eqz v28, :cond_10

    #@31c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31f
    move-result-object v2

    #@320
    check-cast v2, Landroid/net/LinkAddress;

    #@322
    .line 305
    .local v2, "added":Landroid/net/LinkAddress;
    iget-object v0, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@324
    move-object/from16 v28, v0

    #@326
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@329
    move-result-object v24

    #@32a
    .local v24, "removed$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    #@32d
    move-result v28

    #@32e
    if-eqz v28, :cond_e

    #@330
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@333
    move-result-object v23

    #@334
    check-cast v23, Landroid/net/LinkAddress;

    #@336
    .line 307
    .local v23, "removed":Landroid/net/LinkAddress;
    invoke-virtual/range {v23 .. v23}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@339
    move-result-object v28

    #@33a
    .line 308
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@33d
    move-result-object v29

    #@33e
    .line 306
    invoke-static/range {v28 .. v29}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    #@341
    move-result v28

    #@342
    if-eqz v28, :cond_f

    #@344
    .line 309
    const/16 v19, 0x1

    #@346
    .line 310
    goto :goto_4

    #@347
    .line 314
    .end local v2    # "added":Landroid/net/LinkAddress;
    .end local v23    # "removed":Landroid/net/LinkAddress;
    .end local v24    # "removed$iterator":Ljava/util/Iterator;
    :cond_10
    if-eqz v19, :cond_11

    #@349
    .line 316
    move-object/from16 v0, p0

    #@34b
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@34d
    move-object/from16 v28, v0

    #@34f
    new-instance v29, Ljava/lang/StringBuilder;

    #@351
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@354
    const-string/jumbo v30, "onDataStateChanged: addr change, cleanup apns="

    #@357
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35a
    move-result-object v29

    #@35b
    .line 317
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@35d
    move-object/from16 v30, v0

    #@35f
    .line 316
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@362
    move-result-object v29

    #@363
    .line 318
    const-string/jumbo v30, " oldLp="

    #@366
    .line 316
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@369
    move-result-object v29

    #@36a
    .line 318
    move-object/from16 v0, v25

    #@36c
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@36e
    move-object/from16 v30, v0

    #@370
    .line 316
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@373
    move-result-object v29

    #@374
    .line 319
    const-string/jumbo v30, " newLp="

    #@377
    .line 316
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37a
    move-result-object v29

    #@37b
    .line 319
    move-object/from16 v0, v25

    #@37d
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@37f
    move-object/from16 v30, v0

    #@381
    .line 316
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@384
    move-result-object v29

    #@385
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@388
    move-result-object v29

    #@389
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@38c
    .line 321
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@38e
    move-object/from16 v28, v0

    #@390
    move-object/from16 v0, v28

    #@392
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@395
    goto/16 :goto_3

    #@397
    .line 323
    :cond_11
    move-object/from16 v0, p0

    #@399
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@39b
    move-object/from16 v28, v0

    #@39d
    const-string/jumbo v29, "onDataStateChanged: simple change"

    #@3a0
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@3a3
    .line 325
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@3a5
    move-object/from16 v28, v0

    #@3a7
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3aa
    move-result-object v5

    #@3ab
    .local v5, "apnContext$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@3ae
    move-result v28

    #@3af
    if-eqz v28, :cond_5

    #@3b1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b4
    move-result-object v4

    #@3b5
    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@3b7
    .line 326
    .local v4, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    #@3b9
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@3bb
    move-object/from16 v28, v0

    #@3bd
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    #@3c0
    move-result-object v28

    #@3c1
    .line 327
    const-string/jumbo v29, "linkPropertiesChanged"

    #@3c4
    .line 328
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3c7
    move-result-object v30

    #@3c8
    .line 326
    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@3cb
    goto :goto_5

    #@3cc
    .line 337
    .end local v3    # "added$iterator":Ljava/util/Iterator;
    .end local v4    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "apnContext$iterator":Ljava/util/Iterator;
    .end local v7    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v19    # "needToClean":Z
    :cond_12
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@3ce
    move-object/from16 v28, v0

    #@3d0
    move-object/from16 v0, v28

    #@3d2
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@3d5
    .line 339
    move-object/from16 v0, p0

    #@3d7
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@3d9
    move-object/from16 v28, v0

    #@3db
    new-instance v29, Ljava/lang/StringBuilder;

    #@3dd
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@3e0
    const-string/jumbo v30, "onDataStateChanged: interface change, cleanup apns="

    #@3e3
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e6
    move-result-object v29

    #@3e7
    .line 340
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@3e9
    move-object/from16 v30, v0

    #@3eb
    .line 339
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3ee
    move-result-object v29

    #@3ef
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f2
    move-result-object v29

    #@3f3
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@3f6
    goto/16 :goto_3

    #@3f8
    .line 355
    .end local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v21    # "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .end local v25    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    :cond_13
    move-object/from16 v0, p0

    #@3fa
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@3fc
    move-object/from16 v28, v0

    #@3fe
    move-object/from16 v0, v28

    #@400
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mOverallDataConnectionActiveState:I

    #@402
    move/from16 v20, v0

    #@404
    .line 357
    .local v20, "newOverallDataConnectionActiveState":I
    if-eqz v18, :cond_14

    #@406
    if-eqz v17, :cond_16

    #@408
    .line 370
    :cond_14
    move-object/from16 v0, p0

    #@40a
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@40c
    move-object/from16 v28, v0

    #@40e
    new-instance v29, Ljava/lang/StringBuilder;

    #@410
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@413
    const-string/jumbo v30, "onDataStateChanged: Data Activity updated to NONE. isAnyDataCallActive = "

    #@416
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@419
    move-result-object v29

    #@41a
    move-object/from16 v0, v29

    #@41c
    move/from16 v1, v17

    #@41e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@421
    move-result-object v29

    #@422
    .line 372
    const-string/jumbo v30, " isAnyDataCallDormant = "

    #@425
    .line 370
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@428
    move-result-object v29

    #@429
    move-object/from16 v0, v29

    #@42b
    move/from16 v1, v18

    #@42d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@430
    move-result-object v29

    #@431
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@434
    move-result-object v29

    #@435
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@438
    .line 374
    if-eqz v17, :cond_17

    #@43a
    .line 375
    const/16 v20, 0x2

    #@43c
    .line 376
    move-object/from16 v0, p0

    #@43e
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@440
    move-object/from16 v28, v0

    #@442
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@445
    move-result-object v28

    #@446
    sget-object v29, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    #@448
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@44b
    .line 383
    :goto_6
    move-object/from16 v0, p0

    #@44d
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@44f
    move-object/from16 v28, v0

    #@451
    move-object/from16 v0, v28

    #@453
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mOverallDataConnectionActiveState:I

    #@455
    move/from16 v28, v0

    #@457
    move/from16 v0, v28

    #@459
    move/from16 v1, v20

    #@45b
    if-eq v0, v1, :cond_15

    #@45d
    .line 384
    move-object/from16 v0, p0

    #@45f
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@461
    move-object/from16 v28, v0

    #@463
    move/from16 v0, v20

    #@465
    move-object/from16 v1, v28

    #@467
    iput v0, v1, Lcom/android/internal/telephony/dataconnection/DcController;->mOverallDataConnectionActiveState:I

    #@469
    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@46c
    move-result-wide v26

    #@46d
    .line 387
    .local v26, "time":J
    move-object/from16 v0, p0

    #@46f
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@471
    move-object/from16 v28, v0

    #@473
    move-object/from16 v0, v28

    #@475
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mOverallDataConnectionActiveState:I

    #@477
    move/from16 v28, v0

    #@479
    packed-switch v28, :pswitch_data_0

    #@47c
    .line 396
    sget v11, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_UNKNOWN:I

    #@47e
    .line 400
    .local v11, "dcPowerState":I
    :goto_7
    new-instance v12, Landroid/telephony/DataConnectionRealTimeInfo;

    #@480
    move-wide/from16 v0, v26

    #@482
    invoke-direct {v12, v0, v1, v11}, Landroid/telephony/DataConnectionRealTimeInfo;-><init>(JI)V

    #@485
    .line 401
    .local v12, "dcRtInfo":Landroid/telephony/DataConnectionRealTimeInfo;
    move-object/from16 v0, p0

    #@487
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@489
    move-object/from16 v28, v0

    #@48b
    new-instance v29, Ljava/lang/StringBuilder;

    #@48d
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@490
    const-string/jumbo v30, "onDataStateChanged: notify DcRtInfo changed dcRtInfo="

    #@493
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@496
    move-result-object v29

    #@497
    move-object/from16 v0, v29

    #@499
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49c
    move-result-object v29

    #@49d
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a0
    move-result-object v29

    #@4a1
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@4a4
    .line 402
    move-object/from16 v0, p0

    #@4a6
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@4a8
    move-object/from16 v28, v0

    #@4aa
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    #@4ad
    move-result-object v28

    #@4ae
    move-object/from16 v0, v28

    #@4b0
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V

    #@4b3
    .line 406
    .end local v11    # "dcPowerState":I
    .end local v12    # "dcRtInfo":Landroid/telephony/DataConnectionRealTimeInfo;
    .end local v26    # "time":J
    :cond_15
    move-object/from16 v0, p0

    #@4b5
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@4b7
    move-object/from16 v28, v0

    #@4b9
    new-instance v29, Ljava/lang/StringBuilder;

    #@4bb
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@4be
    const-string/jumbo v30, "onDataStateChanged: dcsToRetry="

    #@4c1
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c4
    move-result-object v29

    #@4c5
    move-object/from16 v0, v29

    #@4c7
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4ca
    move-result-object v29

    #@4cb
    .line 407
    const-string/jumbo v30, " apnsToCleanup="

    #@4ce
    .line 406
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d1
    move-result-object v29

    #@4d2
    move-object/from16 v0, v29

    #@4d4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d7
    move-result-object v29

    #@4d8
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4db
    move-result-object v29

    #@4dc
    invoke-static/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V

    #@4df
    .line 411
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e2
    move-result-object v5

    #@4e3
    .restart local v5    # "apnContext$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@4e6
    move-result v28

    #@4e7
    if-eqz v28, :cond_18

    #@4e9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4ec
    move-result-object v4

    #@4ed
    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@4ef
    .line 412
    .restart local v4    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    #@4f1
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@4f3
    move-object/from16 v28, v0

    #@4f5
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@4f8
    move-result-object v28

    #@4f9
    const/16 v29, 0x1

    #@4fb
    move-object/from16 v0, v28

    #@4fd
    move/from16 v1, v29

    #@4ff
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@502
    goto :goto_8

    #@503
    .line 364
    .end local v4    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "apnContext$iterator":Ljava/util/Iterator;
    :cond_16
    move-object/from16 v0, p0

    #@505
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@507
    move-object/from16 v28, v0

    #@509
    const-string/jumbo v29, "onDataStateChanged: Data Activity updated to DORMANT. stopNetStatePoll"

    #@50c
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@50f
    .line 366
    move-object/from16 v0, p0

    #@511
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@513
    move-object/from16 v28, v0

    #@515
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@518
    move-result-object v28

    #@519
    sget-object v29, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@51b
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@51e
    .line 367
    const/16 v20, 0x1

    #@520
    .line 357
    goto/16 :goto_6

    #@522
    .line 378
    :cond_17
    const/16 v20, 0x0

    #@524
    goto/16 :goto_6

    #@526
    .line 390
    .restart local v26    # "time":J
    :pswitch_0
    sget v11, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@528
    .restart local v11    # "dcPowerState":I
    goto/16 :goto_7

    #@52a
    .line 393
    .end local v11    # "dcPowerState":I
    :pswitch_1
    sget v11, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    #@52c
    .restart local v11    # "dcPowerState":I
    goto/16 :goto_7

    #@52e
    .line 416
    .end local v11    # "dcPowerState":I
    .end local v26    # "time":J
    .restart local v5    # "apnContext$iterator":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@531
    move-result-object v10

    #@532
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@535
    move-result v28

    #@536
    if-eqz v28, :cond_19

    #@538
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@53b
    move-result-object v9

    #@53c
    check-cast v9, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@53e
    .line 417
    .restart local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    move-object/from16 v0, p0

    #@540
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@542
    move-object/from16 v28, v0

    #@544
    new-instance v29, Ljava/lang/StringBuilder;

    #@546
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@549
    const-string/jumbo v30, "onDataStateChanged: send EVENT_LOST_CONNECTION dc.mTag="

    #@54c
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54f
    move-result-object v29

    #@550
    iget v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@552
    move/from16 v30, v0

    #@554
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@557
    move-result-object v29

    #@558
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55b
    move-result-object v29

    #@55c
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@55f
    .line 418
    iget v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@561
    move/from16 v28, v0

    #@563
    const v29, 0x40009

    #@566
    move/from16 v0, v29

    #@568
    move/from16 v1, v28

    #@56a
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(II)V

    #@56d
    goto :goto_9

    #@56e
    .line 421
    .end local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_19
    move-object/from16 v0, p0

    #@570
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@572
    move-object/from16 v28, v0

    #@574
    const-string/jumbo v29, "onDataStateChanged: X"

    #@577
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@57a
    .line 216
    return-void

    #@57b
    .line 387
    nop

    #@57c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    #@6
    move-result-object v0

    #@7
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@9
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@b
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    #@e
    move-result-object v1

    #@f
    .line 162
    const v2, 0x40005

    #@12
    .line 161
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    #@15
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@17
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    #@1a
    move-result-object v0

    #@1b
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1f
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    #@22
    move-result-object v1

    #@23
    .line 164
    const v2, 0x40007

    #@26
    .line 163
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@29
    .line 165
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2f
    .line 167
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@31
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@33
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    #@36
    move-result-object v2

    #@37
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@39
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@3b
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    #@3e
    move-result-object v4

    #@3f
    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcController;Landroid/os/Handler;)V

    #@42
    .line 166
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->-set0(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@45
    .line 160
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@a
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    #@d
    move-result-object v0

    #@e
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@12
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    #@19
    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1b
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;

    #@1e
    move-result-object v0

    #@1f
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@21
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@23
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    #@26
    move-result-object v1

    #@27
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    #@2a
    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2c
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get1(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@2f
    move-result-object v0

    #@30
    if-eqz v0, :cond_1

    #@32
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@34
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get1(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->dispose()V

    #@3b
    .line 172
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 186
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 209
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 188
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Landroid/os/AsyncResult;

    #@b
    .line 189
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d
    if-nez v1, :cond_0

    #@f
    .line 191
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "DccDefaultState: msg.what=EVENT_RIL_CONNECTED mRilVersion="

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 192
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1f
    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@2a
    goto :goto_0

    #@2b
    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2d
    const-string/jumbo v2, "DccDefaultState: Unexpected exception on EVENT_RIL_CONNECTED"

    #@30
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@33
    goto :goto_0

    #@34
    .line 200
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@36
    check-cast v0, Landroid/os/AsyncResult;

    #@38
    .line 201
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3a
    if-nez v1, :cond_1

    #@3c
    .line 202
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@3e
    check-cast v1, Ljava/util/ArrayList;

    #@40
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->onDataStateChanged(Ljava/util/ArrayList;)V

    #@43
    goto :goto_0

    #@44
    .line 204
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@46
    const-string/jumbo v2, "DccDefaultState: EVENT_DATA_STATE_CHANGED: exception; likely radio not available, ignore"

    #@49
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@4c
    goto :goto_0

    #@4d
    .line 186
    nop

    #@4e
    :pswitch_data_0
    .packed-switch 0x40005
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
