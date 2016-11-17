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
    .line 153
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
    .locals 26
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
    .line 213
    .local p1, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@4
    move-object/from16 v23, v0

    #@6
    new-instance v24, Ljava/lang/StringBuilder;

    #@8
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v25, "onDataStateChanged: dcsList="

    #@e
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v24

    #@12
    move-object/from16 v0, v24

    #@14
    move-object/from16 v1, p1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v24

    #@1a
    .line 214
    const-string/jumbo v25, " mDcListActiveByCid="

    #@1d
    .line 213
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v24

    #@21
    .line 214
    move-object/from16 v0, p0

    #@23
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@25
    move-object/from16 v25, v0

    #@27
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/dataconnection/DcController;->-get0(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    #@2a
    move-result-object v25

    #@2b
    .line 213
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v24

    #@2f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v24

    #@33
    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V

    #@36
    .line 222
    new-instance v8, Ljava/util/HashMap;

    #@38
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@3b
    .line 223
    .local v8, "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v12

    #@3f
    .local v12, "dcs$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v23

    #@43
    if-eqz v23, :cond_0

    #@45
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v11

    #@49
    check-cast v11, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@4b
    .line 224
    .local v11, "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget v0, v11, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@4d
    move/from16 v23, v0

    #@4f
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v23

    #@53
    move-object/from16 v0, v23

    #@55
    invoke-virtual {v8, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    goto :goto_0

    #@59
    .line 229
    .end local v11    # "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    #@5b
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@5e
    .line 230
    .local v13, "dcsToRetry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    move-object/from16 v0, p0

    #@60
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@62
    move-object/from16 v23, v0

    #@64
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get0(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    #@67
    move-result-object v23

    #@68
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6b
    move-result-object v23

    #@6c
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6f
    move-result-object v10

    #@70
    .local v10, "dc$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@73
    move-result v23

    #@74
    if-eqz v23, :cond_2

    #@76
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@79
    move-result-object v9

    #@7a
    check-cast v9, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7c
    .line 231
    .local v9, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@7e
    move/from16 v23, v0

    #@80
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@83
    move-result-object v23

    #@84
    move-object/from16 v0, v23

    #@86
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    move-result-object v23

    #@8a
    if-nez v23, :cond_1

    #@8c
    .line 232
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@90
    move-object/from16 v23, v0

    #@92
    new-instance v24, Ljava/lang/StringBuilder;

    #@94
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v25, "onDataStateChanged: add to retry dc="

    #@9a
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v24

    #@9e
    move-object/from16 v0, v24

    #@a0
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v24

    #@a4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v24

    #@a8
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@ab
    .line 233
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ae
    goto :goto_1

    #@af
    .line 236
    .end local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_2
    move-object/from16 v0, p0

    #@b1
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@b3
    move-object/from16 v23, v0

    #@b5
    new-instance v24, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v25, "onDataStateChanged: dcsToRetry="

    #@bd
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v24

    #@c1
    move-object/from16 v0, v24

    #@c3
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v24

    #@c7
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v24

    #@cb
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@ce
    .line 240
    new-instance v6, Ljava/util/ArrayList;

    #@d0
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@d3
    .line 242
    .local v6, "apnsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    const/16 v16, 0x0

    #@d5
    .line 243
    .local v16, "isAnyDataCallDormant":Z
    const/4 v15, 0x0

    #@d6
    .line 245
    .local v15, "isAnyDataCallActive":Z
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d9
    move-result-object v19

    #@da
    .local v19, "newState$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@dd
    move-result v23

    #@de
    if-eqz v23, :cond_13

    #@e0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e3
    move-result-object v18

    #@e4
    check-cast v18, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@e6
    .line 247
    .local v18, "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    move-object/from16 v0, p0

    #@e8
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@ea
    move-object/from16 v23, v0

    #@ec
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get0(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    #@ef
    move-result-object v23

    #@f0
    move-object/from16 v0, v18

    #@f2
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@f4
    move/from16 v24, v0

    #@f6
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f9
    move-result-object v24

    #@fa
    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@fd
    move-result-object v9

    #@fe
    check-cast v9, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@100
    .line 248
    .restart local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-nez v9, :cond_4

    #@102
    .line 250
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@106
    move-object/from16 v23, v0

    #@108
    const-string/jumbo v24, "onDataStateChanged: no associated DC yet, ignore"

    #@10b
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    #@10e
    goto :goto_2

    #@10f
    .line 254
    :cond_4
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@111
    move-object/from16 v23, v0

    #@113
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    #@116
    move-result v23

    #@117
    if-nez v23, :cond_7

    #@119
    .line 255
    move-object/from16 v0, p0

    #@11b
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@11d
    move-object/from16 v23, v0

    #@11f
    const-string/jumbo v24, "onDataStateChanged: no connected apns, ignore"

    #@122
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    #@125
    .line 350
    :cond_5
    :goto_3
    move-object/from16 v0, v18

    #@127
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@129
    move/from16 v23, v0

    #@12b
    const/16 v24, 0x2

    #@12d
    move/from16 v0, v23

    #@12f
    move/from16 v1, v24

    #@131
    if-ne v0, v1, :cond_6

    #@133
    .line 351
    const/4 v15, 0x1

    #@134
    .line 353
    :cond_6
    move-object/from16 v0, v18

    #@136
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@138
    move/from16 v23, v0

    #@13a
    const/16 v24, 0x1

    #@13c
    move/from16 v0, v23

    #@13e
    move/from16 v1, v24

    #@140
    if-ne v0, v1, :cond_3

    #@142
    .line 354
    const/16 v16, 0x1

    #@144
    goto :goto_2

    #@145
    .line 259
    :cond_7
    move-object/from16 v0, p0

    #@147
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@149
    move-object/from16 v23, v0

    #@14b
    new-instance v24, Ljava/lang/StringBuilder;

    #@14d
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@150
    const-string/jumbo v25, "onDataStateChanged: Found ConnId="

    #@153
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v24

    #@157
    move-object/from16 v0, v18

    #@159
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@15b
    move/from16 v25, v0

    #@15d
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@160
    move-result-object v24

    #@161
    .line 260
    const-string/jumbo v25, " newState="

    #@164
    .line 259
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v24

    #@168
    .line 260
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->toString()Ljava/lang/String;

    #@16b
    move-result-object v25

    #@16c
    .line 259
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v24

    #@170
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@173
    move-result-object v24

    #@174
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@177
    .line 261
    move-object/from16 v0, v18

    #@179
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@17b
    move/from16 v23, v0

    #@17d
    if-nez v23, :cond_b

    #@17f
    .line 262
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@183
    move-object/from16 v23, v0

    #@185
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@188
    move-result-object v23

    #@189
    move-object/from16 v0, v23

    #@18b
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@18d
    move-object/from16 v23, v0

    #@18f
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@192
    move-result v23

    #@193
    if-eqz v23, :cond_8

    #@195
    .line 263
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@197
    move-object/from16 v23, v0

    #@199
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@19c
    move-result-object v23

    #@19d
    move-object/from16 v0, v23

    #@19f
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@1a2
    .line 264
    move-object/from16 v0, p0

    #@1a4
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1a6
    move-object/from16 v23, v0

    #@1a8
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@1ab
    move-result-object v23

    #@1ac
    move-object/from16 v0, v23

    #@1ae
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1b0
    move-object/from16 v23, v0

    #@1b2
    const/16 v24, 0x0

    #@1b4
    invoke-virtual/range {v23 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1b7
    goto/16 :goto_3

    #@1b9
    .line 266
    :cond_8
    move-object/from16 v0, v18

    #@1bb
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@1bd
    move/from16 v23, v0

    #@1bf
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1c2
    move-result-object v14

    #@1c3
    .line 267
    .local v14, "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    #@1c6
    move-result v23

    #@1c7
    if-eqz v23, :cond_9

    #@1c9
    .line 269
    move-object/from16 v0, p0

    #@1cb
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1cd
    move-object/from16 v23, v0

    #@1cf
    new-instance v24, Ljava/lang/StringBuilder;

    #@1d1
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1d4
    const-string/jumbo v25, "onDataStateChanged: X restart radio, failCause="

    #@1d7
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v24

    #@1db
    move-object/from16 v0, v24

    #@1dd
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v24

    #@1e1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e4
    move-result-object v24

    #@1e5
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@1e8
    .line 272
    move-object/from16 v0, p0

    #@1ea
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1ec
    move-object/from16 v23, v0

    #@1ee
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@1f1
    move-result-object v23

    #@1f2
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRestartRadio()V

    #@1f5
    goto/16 :goto_3

    #@1f7
    .line 273
    :cond_9
    move-object/from16 v0, p0

    #@1f9
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1fb
    move-object/from16 v23, v0

    #@1fd
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@200
    move-result-object v23

    #@201
    move-object/from16 v0, v23

    #@203
    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    #@206
    move-result v23

    #@207
    if-eqz v23, :cond_a

    #@209
    .line 275
    move-object/from16 v0, p0

    #@20b
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@20d
    move-object/from16 v23, v0

    #@20f
    new-instance v24, Ljava/lang/StringBuilder;

    #@211
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@214
    const-string/jumbo v25, "onDataStateChanged: inactive, add to cleanup list. failCause="

    #@217
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v24

    #@21b
    move-object/from16 v0, v24

    #@21d
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v24

    #@221
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@224
    move-result-object v24

    #@225
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@228
    .line 278
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@22a
    move-object/from16 v23, v0

    #@22c
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@22f
    move-result-object v23

    #@230
    move-object/from16 v0, v23

    #@232
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@235
    goto/16 :goto_3

    #@237
    .line 281
    :cond_a
    move-object/from16 v0, p0

    #@239
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@23b
    move-object/from16 v23, v0

    #@23d
    new-instance v24, Ljava/lang/StringBuilder;

    #@23f
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@242
    const-string/jumbo v25, "onDataStateChanged: inactive, add to retry list. failCause="

    #@245
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v24

    #@249
    move-object/from16 v0, v24

    #@24b
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v24

    #@24f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@252
    move-result-object v24

    #@253
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@256
    .line 284
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@259
    goto/16 :goto_3

    #@25b
    .line 289
    .end local v14    # "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :cond_b
    move-object/from16 v0, v18

    #@25d
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/dataconnection/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    #@260
    move-result-object v22

    #@261
    .line 290
    .local v22, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    move-object/from16 v0, v22

    #@263
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@265
    move-object/from16 v23, v0

    #@267
    move-object/from16 v0, v22

    #@269
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@26b
    move-object/from16 v24, v0

    #@26d
    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    #@270
    move-result v23

    #@271
    if-eqz v23, :cond_c

    #@273
    .line 291
    move-object/from16 v0, p0

    #@275
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@277
    move-object/from16 v23, v0

    #@279
    const-string/jumbo v24, "onDataStateChanged: no change"

    #@27c
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@27f
    goto/16 :goto_3

    #@281
    .line 293
    :cond_c
    move-object/from16 v0, v22

    #@283
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@285
    move-object/from16 v23, v0

    #@287
    move-object/from16 v0, v22

    #@289
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@28b
    move-object/from16 v24, v0

    #@28d
    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    #@290
    move-result v23

    #@291
    if-eqz v23, :cond_12

    #@293
    .line 294
    move-object/from16 v0, v22

    #@295
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@297
    move-object/from16 v23, v0

    #@299
    move-object/from16 v0, v22

    #@29b
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@29d
    move-object/from16 v24, v0

    #@29f
    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    #@2a2
    move-result v23

    #@2a3
    if-eqz v23, :cond_d

    #@2a5
    .line 295
    move-object/from16 v0, v22

    #@2a7
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@2a9
    move-object/from16 v23, v0

    #@2ab
    move-object/from16 v0, v22

    #@2ad
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@2af
    move-object/from16 v24, v0

    #@2b1
    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    #@2b4
    move-result v23

    #@2b5
    if-eqz v23, :cond_d

    #@2b7
    .line 296
    move-object/from16 v0, v22

    #@2b9
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@2bb
    move-object/from16 v23, v0

    #@2bd
    move-object/from16 v0, v22

    #@2bf
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@2c1
    move-object/from16 v24, v0

    #@2c3
    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    #@2c6
    move-result v23

    #@2c7
    if-eqz v23, :cond_d

    #@2c9
    .line 297
    move-object/from16 v0, v22

    #@2cb
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@2cd
    move-object/from16 v23, v0

    #@2cf
    move-object/from16 v0, v22

    #@2d1
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@2d3
    move-object/from16 v24, v0

    #@2d5
    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    #@2d8
    move-result v23

    #@2d9
    if-eqz v23, :cond_d

    #@2db
    .line 336
    move-object/from16 v0, p0

    #@2dd
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2df
    move-object/from16 v23, v0

    #@2e1
    const-string/jumbo v24, "onDataStateChanged: no changes"

    #@2e4
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@2e7
    goto/16 :goto_3

    #@2e9
    .line 301
    :cond_d
    move-object/from16 v0, v22

    #@2eb
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@2ed
    move-object/from16 v23, v0

    #@2ef
    move-object/from16 v0, v22

    #@2f1
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@2f3
    move-object/from16 v24, v0

    #@2f5
    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    #@2f8
    move-result-object v7

    #@2f9
    .line 303
    .local v7, "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    #@2fb
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2fd
    move-object/from16 v23, v0

    #@2ff
    new-instance v24, Ljava/lang/StringBuilder;

    #@301
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@304
    const-string/jumbo v25, "onDataStateChanged: oldLp="

    #@307
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30a
    move-result-object v24

    #@30b
    move-object/from16 v0, v22

    #@30d
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@30f
    move-object/from16 v25, v0

    #@311
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@314
    move-result-object v24

    #@315
    .line 304
    const-string/jumbo v25, " newLp="

    #@318
    .line 303
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31b
    move-result-object v24

    #@31c
    .line 304
    move-object/from16 v0, v22

    #@31e
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@320
    move-object/from16 v25, v0

    #@322
    .line 303
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@325
    move-result-object v24

    #@326
    .line 304
    const-string/jumbo v25, " car="

    #@329
    .line 303
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32c
    move-result-object v24

    #@32d
    move-object/from16 v0, v24

    #@32f
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@332
    move-result-object v24

    #@333
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@336
    move-result-object v24

    #@337
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@33a
    .line 306
    const/16 v17, 0x0

    #@33c
    .line 307
    .local v17, "needToClean":Z
    iget-object v0, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@33e
    move-object/from16 v23, v0

    #@340
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@343
    move-result-object v3

    #@344
    .local v3, "added$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@347
    move-result v23

    #@348
    if-eqz v23, :cond_10

    #@34a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34d
    move-result-object v2

    #@34e
    check-cast v2, Landroid/net/LinkAddress;

    #@350
    .line 308
    .local v2, "added":Landroid/net/LinkAddress;
    iget-object v0, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@352
    move-object/from16 v23, v0

    #@354
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@357
    move-result-object v21

    #@358
    .local v21, "removed$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@35b
    move-result v23

    #@35c
    if-eqz v23, :cond_e

    #@35e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@361
    move-result-object v20

    #@362
    check-cast v20, Landroid/net/LinkAddress;

    #@364
    .line 310
    .local v20, "removed":Landroid/net/LinkAddress;
    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@367
    move-result-object v23

    #@368
    .line 311
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@36b
    move-result-object v24

    #@36c
    .line 309
    invoke-static/range {v23 .. v24}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    #@36f
    move-result v23

    #@370
    if-eqz v23, :cond_f

    #@372
    .line 312
    const/16 v17, 0x1

    #@374
    .line 313
    goto :goto_4

    #@375
    .line 317
    .end local v2    # "added":Landroid/net/LinkAddress;
    .end local v20    # "removed":Landroid/net/LinkAddress;
    .end local v21    # "removed$iterator":Ljava/util/Iterator;
    :cond_10
    if-eqz v17, :cond_11

    #@377
    .line 319
    move-object/from16 v0, p0

    #@379
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@37b
    move-object/from16 v23, v0

    #@37d
    new-instance v24, Ljava/lang/StringBuilder;

    #@37f
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@382
    const-string/jumbo v25, "onDataStateChanged: addr change, cleanup apns="

    #@385
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@388
    move-result-object v24

    #@389
    .line 320
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@38b
    move-object/from16 v25, v0

    #@38d
    .line 319
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@390
    move-result-object v24

    #@391
    .line 321
    const-string/jumbo v25, " oldLp="

    #@394
    .line 319
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@397
    move-result-object v24

    #@398
    .line 321
    move-object/from16 v0, v22

    #@39a
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@39c
    move-object/from16 v25, v0

    #@39e
    .line 319
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a1
    move-result-object v24

    #@3a2
    .line 322
    const-string/jumbo v25, " newLp="

    #@3a5
    .line 319
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a8
    move-result-object v24

    #@3a9
    .line 322
    move-object/from16 v0, v22

    #@3ab
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@3ad
    move-object/from16 v25, v0

    #@3af
    .line 319
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b2
    move-result-object v24

    #@3b3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b6
    move-result-object v24

    #@3b7
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@3ba
    .line 324
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@3bc
    move-object/from16 v23, v0

    #@3be
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@3c1
    move-result-object v23

    #@3c2
    move-object/from16 v0, v23

    #@3c4
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@3c7
    goto/16 :goto_3

    #@3c9
    .line 326
    :cond_11
    move-object/from16 v0, p0

    #@3cb
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@3cd
    move-object/from16 v23, v0

    #@3cf
    const-string/jumbo v24, "onDataStateChanged: simple change"

    #@3d2
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@3d5
    .line 328
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@3d7
    move-object/from16 v23, v0

    #@3d9
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@3dc
    move-result-object v23

    #@3dd
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e0
    move-result-object v5

    #@3e1
    .local v5, "apnContext$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@3e4
    move-result v23

    #@3e5
    if-eqz v23, :cond_5

    #@3e7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3ea
    move-result-object v4

    #@3eb
    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@3ed
    .line 329
    .local v4, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    #@3ef
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@3f1
    move-object/from16 v23, v0

    #@3f3
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    #@3f6
    move-result-object v23

    #@3f7
    .line 330
    const-string/jumbo v24, "linkPropertiesChanged"

    #@3fa
    .line 331
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@3fd
    move-result-object v25

    #@3fe
    .line 329
    invoke-virtual/range {v23 .. v25}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    #@401
    goto :goto_5

    #@402
    .line 340
    .end local v3    # "added$iterator":Ljava/util/Iterator;
    .end local v4    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "apnContext$iterator":Ljava/util/Iterator;
    .end local v7    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v17    # "needToClean":Z
    :cond_12
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@404
    move-object/from16 v23, v0

    #@406
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@409
    move-result-object v23

    #@40a
    move-object/from16 v0, v23

    #@40c
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@40f
    .line 342
    move-object/from16 v0, p0

    #@411
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@413
    move-object/from16 v23, v0

    #@415
    new-instance v24, Ljava/lang/StringBuilder;

    #@417
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@41a
    const-string/jumbo v25, "onDataStateChanged: interface change, cleanup apns="

    #@41d
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@420
    move-result-object v24

    #@421
    .line 343
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@423
    move-object/from16 v25, v0

    #@425
    .line 342
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@428
    move-result-object v24

    #@429
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42c
    move-result-object v24

    #@42d
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@430
    goto/16 :goto_3

    #@432
    .line 358
    .end local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v18    # "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .end local v22    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    :cond_13
    if-eqz v16, :cond_14

    #@434
    if-eqz v15, :cond_16

    #@436
    .line 370
    :cond_14
    move-object/from16 v0, p0

    #@438
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@43a
    move-object/from16 v23, v0

    #@43c
    new-instance v24, Ljava/lang/StringBuilder;

    #@43e
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@441
    const-string/jumbo v25, "onDataStateChanged: Data Activity updated to NONE. isAnyDataCallActive = "

    #@444
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@447
    move-result-object v24

    #@448
    move-object/from16 v0, v24

    #@44a
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@44d
    move-result-object v24

    #@44e
    .line 372
    const-string/jumbo v25, " isAnyDataCallDormant = "

    #@451
    .line 370
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@454
    move-result-object v24

    #@455
    move-object/from16 v0, v24

    #@457
    move/from16 v1, v16

    #@459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45c
    move-result-object v24

    #@45d
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@460
    move-result-object v24

    #@461
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@464
    .line 374
    if-eqz v15, :cond_15

    #@466
    .line 375
    move-object/from16 v0, p0

    #@468
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@46a
    move-object/from16 v23, v0

    #@46c
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@46f
    move-result-object v23

    #@470
    sget-object v24, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    #@472
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@475
    .line 380
    :cond_15
    :goto_6
    move-object/from16 v0, p0

    #@477
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@479
    move-object/from16 v23, v0

    #@47b
    new-instance v24, Ljava/lang/StringBuilder;

    #@47d
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@480
    const-string/jumbo v25, "onDataStateChanged: dcsToRetry="

    #@483
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@486
    move-result-object v24

    #@487
    move-object/from16 v0, v24

    #@489
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48c
    move-result-object v24

    #@48d
    .line 381
    const-string/jumbo v25, " apnsToCleanup="

    #@490
    .line 380
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@493
    move-result-object v24

    #@494
    move-object/from16 v0, v24

    #@496
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@499
    move-result-object v24

    #@49a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49d
    move-result-object v24

    #@49e
    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V

    #@4a1
    .line 385
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a4
    move-result-object v5

    #@4a5
    .restart local v5    # "apnContext$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@4a8
    move-result v23

    #@4a9
    if-eqz v23, :cond_17

    #@4ab
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4ae
    move-result-object v4

    #@4af
    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@4b1
    .line 386
    .restart local v4    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    #@4b3
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@4b5
    move-object/from16 v23, v0

    #@4b7
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4ba
    move-result-object v23

    #@4bb
    const/16 v24, 0x1

    #@4bd
    move-object/from16 v0, v23

    #@4bf
    move/from16 v1, v24

    #@4c1
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    #@4c4
    goto :goto_7

    #@4c5
    .line 365
    .end local v4    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "apnContext$iterator":Ljava/util/Iterator;
    :cond_16
    move-object/from16 v0, p0

    #@4c7
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@4c9
    move-object/from16 v23, v0

    #@4cb
    const-string/jumbo v24, "onDataStateChanged: Data Activity updated to DORMANT. stopNetStatePoll"

    #@4ce
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@4d1
    .line 367
    move-object/from16 v0, p0

    #@4d3
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@4d5
    move-object/from16 v23, v0

    #@4d7
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4da
    move-result-object v23

    #@4db
    sget-object v24, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@4dd
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    #@4e0
    goto :goto_6

    #@4e1
    .line 390
    .restart local v5    # "apnContext$iterator":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e4
    move-result-object v10

    #@4e5
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@4e8
    move-result v23

    #@4e9
    if-eqz v23, :cond_18

    #@4eb
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4ee
    move-result-object v9

    #@4ef
    check-cast v9, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@4f1
    .line 391
    .restart local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    move-object/from16 v0, p0

    #@4f3
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@4f5
    move-object/from16 v23, v0

    #@4f7
    new-instance v24, Ljava/lang/StringBuilder;

    #@4f9
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@4fc
    const-string/jumbo v25, "onDataStateChanged: send EVENT_LOST_CONNECTION dc.mTag="

    #@4ff
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@502
    move-result-object v24

    #@503
    iget v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@505
    move/from16 v25, v0

    #@507
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50a
    move-result-object v24

    #@50b
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50e
    move-result-object v24

    #@50f
    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@512
    .line 392
    iget v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@514
    move/from16 v23, v0

    #@516
    const v24, 0x40009

    #@519
    move/from16 v0, v24

    #@51b
    move/from16 v1, v23

    #@51d
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(II)V

    #@520
    goto :goto_8

    #@521
    .line 211
    .end local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_18
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    #@6
    move-result-object v0

    #@7
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@9
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@b
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    #@e
    move-result-object v1

    #@f
    .line 157
    const v2, 0x40005

    #@12
    .line 156
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    #@15
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@17
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    #@1a
    move-result-object v0

    #@1b
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1f
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    #@22
    move-result-object v1

    #@23
    .line 159
    const v2, 0x40007

    #@26
    .line 158
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@29
    .line 160
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2f
    .line 162
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@31
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@33
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

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
    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcController;Landroid/os/Handler;)V

    #@42
    .line 161
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->-set0(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@45
    .line 155
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@a
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    #@d
    move-result-object v0

    #@e
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@12
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    #@19
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@1b
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    #@1e
    move-result-object v0

    #@1f
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@21
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@23
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    #@26
    move-result-object v1

    #@27
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    #@2a
    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2c
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get1(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@2f
    move-result-object v0

    #@30
    if-eqz v0, :cond_1

    #@32
    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@34
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get1(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->dispose()V

    #@3b
    .line 167
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 181
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 204
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 183
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Landroid/os/AsyncResult;

    #@b
    .line 184
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d
    if-nez v1, :cond_0

    #@f
    .line 186
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
    .line 187
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1f
    .line 186
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
    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2d
    const-string/jumbo v2, "DccDefaultState: Unexpected exception on EVENT_RIL_CONNECTED"

    #@30
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@33
    goto :goto_0

    #@34
    .line 195
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@36
    check-cast v0, Landroid/os/AsyncResult;

    #@38
    .line 196
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3a
    if-nez v1, :cond_1

    #@3c
    .line 197
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@3e
    check-cast v1, Ljava/util/ArrayList;

    #@40
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->onDataStateChanged(Ljava/util/ArrayList;)V

    #@43
    goto :goto_0

    #@44
    .line 199
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    #@46
    const-string/jumbo v2, "DccDefaultState: EVENT_DATA_STATE_CHANGED: exception; likely radio not available, ignore"

    #@49
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@4c
    goto :goto_0

    #@4d
    .line 181
    nop

    #@4e
    :pswitch_data_0
    .packed-switch 0x40005
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
