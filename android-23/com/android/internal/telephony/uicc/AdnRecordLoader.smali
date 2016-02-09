.class public Lcom/android/internal/telephony/uicc/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecordLoader"

.field static final VDBG:Z


# instance fields
.field mAdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mEf:I

.field mExtensionEF:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field mPendingExtLoads:I

.field mPin2:Ljava/lang/String;

.field mRecordNumber:I

.field mResult:Ljava/lang/Object;

.field mUserResponse:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@0
    .prologue
    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@7
    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@9
    .line 62
    return-void
.end method

.method private getEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    #@0
    .prologue
    .line 70
    const/16 v0, 0x6f3a

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 71
    const-string/jumbo v0, "3F007F10"

    #@7
    return-object v0

    #@8
    .line 74
    :cond_0
    const/4 v0, 0x0

    #@9
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 150
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 288
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    #@7
    if-eqz v0, :cond_1

    #@9
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    #@b
    if-nez v0, :cond_1

    #@d
    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    #@f
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@12
    move-result-object v0

    #@13
    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    #@15
    .line 289
    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@17
    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    #@19
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1c
    .line 293
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    #@1f
    .line 144
    :cond_1
    return-void

    #@20
    .line 152
    :pswitch_0
    :try_start_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22
    check-cast v8, Landroid/os/AsyncResult;

    #@24
    .line 153
    .local v8, "ar":Landroid/os/AsyncResult;
    iget-object v7, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@26
    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@28
    .line 155
    .local v7, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    #@2e
    const-string/jumbo v1, "get EF record size failed"

    #@31
    .line 157
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@33
    .line 156
    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@36
    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@37
    .line 276
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v10

    #@38
    .line 277
    .local v10, "exc":Ljava/lang/RuntimeException;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    #@3a
    if-eqz v0, :cond_2

    #@3c
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    #@3e
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@41
    move-result-object v0

    #@42
    iput-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@44
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    #@46
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@49
    .line 283
    const/4 v0, 0x0

    #@4a
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    #@4c
    .line 285
    :cond_2
    return-void

    #@4d
    .line 160
    .end local v10    # "exc":Ljava/lang/RuntimeException;
    .restart local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    :cond_3
    :try_start_2
    iget-object v12, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4f
    check-cast v12, [I

    #@51
    .line 166
    .local v12, "recordSize":[I
    array-length v0, v12

    #@52
    const/4 v1, 0x3

    #@53
    if-ne v0, v1, :cond_4

    #@55
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    #@57
    const/4 v1, 0x2

    #@58
    aget v1, v12, v1

    #@5a
    if-le v0, v1, :cond_5

    #@5c
    .line 167
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    #@5e
    const-string/jumbo v1, "get wrong EF record size format"

    #@61
    .line 168
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@63
    .line 167
    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@66
    throw v0

    #@67
    .line 171
    :cond_5
    const/4 v0, 0x0

    #@68
    aget v0, v12, v0

    #@6a
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(I)[B

    #@6d
    move-result-object v4

    #@6e
    .line 173
    .local v4, "data":[B
    if-nez v4, :cond_6

    #@70
    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    #@72
    const-string/jumbo v1, "wrong ADN format"

    #@75
    .line 175
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@77
    .line 174
    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7a
    throw v0

    #@7b
    .line 179
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@7d
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    #@7f
    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    #@81
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    iget v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    #@87
    .line 180
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    #@89
    const/4 v6, 0x5

    #@8a
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    #@8d
    move-result-object v6

    #@8e
    .line 179
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    #@91
    .line 182
    const/4 v0, 0x1

    #@92
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    #@94
    goto/16 :goto_0

    #@96
    .line 186
    .end local v4    # "data":[B
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "recordSize":[I
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@98
    check-cast v8, Landroid/os/AsyncResult;

    #@9a
    .line 187
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@9c
    if-eqz v0, :cond_7

    #@9e
    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    #@a0
    const-string/jumbo v1, "update EF adn record failed"

    #@a3
    .line 189
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@a5
    .line 188
    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a8
    throw v0

    #@a9
    .line 191
    :cond_7
    const/4 v0, 0x0

    #@aa
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    #@ac
    .line 192
    const/4 v0, 0x0

    #@ad
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    #@af
    goto/16 :goto_0

    #@b1
    .line 195
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b3
    check-cast v8, Landroid/os/AsyncResult;

    #@b5
    .line 196
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@b7
    check-cast v4, [B

    #@b9
    .line 198
    .restart local v4    # "data":[B
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@bb
    if-eqz v0, :cond_8

    #@bd
    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    #@bf
    const-string/jumbo v1, "load failed"

    #@c2
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c4
    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c7
    throw v0

    #@c8
    .line 209
    :cond_8
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@ca
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    #@cc
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    #@ce
    invoke-direct {v7, v0, v1, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    #@d1
    .line 210
    .restart local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iput-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    #@d3
    .line 212
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    #@d6
    move-result v0

    #@d7
    if-eqz v0, :cond_0

    #@d9
    .line 217
    const/4 v0, 0x1

    #@da
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    #@dc
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@de
    .line 220
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    #@e0
    iget v2, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    #@e2
    .line 221
    const/4 v3, 0x2

    #@e3
    invoke-virtual {p0, v3, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e6
    move-result-object v3

    #@e7
    .line 219
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    #@ea
    goto/16 :goto_0

    #@ec
    .line 226
    .end local v4    # "data":[B
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ee
    check-cast v8, Landroid/os/AsyncResult;

    #@f0
    .line 227
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@f2
    check-cast v4, [B

    #@f4
    .line 228
    .restart local v4    # "data":[B
    iget-object v7, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f6
    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@f8
    .line 230
    .restart local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@fa
    if-eqz v0, :cond_9

    #@fc
    .line 231
    new-instance v0, Ljava/lang/RuntimeException;

    #@fe
    const-string/jumbo v1, "load failed"

    #@101
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@103
    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@106
    throw v0

    #@107
    .line 234
    :cond_9
    const-string/jumbo v0, "AdnRecordLoader"

    #@10a
    new-instance v1, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string/jumbo v2, "ADN extension EF: 0x"

    #@112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v1

    #@116
    .line 235
    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    #@118
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@11b
    move-result-object v2

    #@11c
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v1

    #@120
    .line 236
    const-string/jumbo v2, ":"

    #@123
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v1

    #@127
    .line 236
    iget v2, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    #@129
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v1

    #@12d
    .line 237
    const-string/jumbo v2, "\n"

    #@130
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v1

    #@134
    .line 237
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@137
    move-result-object v2

    #@138
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v1

    #@13c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v1

    #@140
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@143
    .line 239
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->appendExtRecord([B)V

    #@146
    .line 241
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    #@148
    add-int/lit8 v0, v0, -0x1

    #@14a
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    #@14c
    goto/16 :goto_0

    #@14e
    .line 247
    .end local v4    # "data":[B
    .end local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@150
    check-cast v8, Landroid/os/AsyncResult;

    #@152
    .line 248
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@154
    check-cast v9, Ljava/util/ArrayList;

    #@156
    .line 250
    .local v9, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@158
    if-eqz v0, :cond_a

    #@15a
    .line 251
    new-instance v0, Ljava/lang/RuntimeException;

    #@15c
    const-string/jumbo v1, "load failed"

    #@15f
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@161
    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@164
    throw v0

    #@165
    .line 254
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    #@167
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@16a
    move-result v1

    #@16b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@16e
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    #@170
    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    #@172
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    #@174
    .line 256
    const/4 v0, 0x0

    #@175
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    #@177
    .line 258
    const/4 v11, 0x0

    #@178
    .local v11, "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@17b
    move-result v13

    #@17c
    .local v13, "s":I
    :goto_1
    if-ge v11, v13, :cond_0

    #@17e
    .line 259
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@180
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    #@182
    add-int/lit8 v2, v11, 0x1

    #@184
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@187
    move-result-object v0

    #@188
    check-cast v0, [B

    #@18a
    invoke-direct {v7, v1, v2, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    #@18d
    .line 260
    .restart local v7    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    #@18f
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@192
    .line 262
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    #@195
    move-result v0

    #@196
    if-eqz v0, :cond_b

    #@198
    .line 267
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    #@19a
    add-int/lit8 v0, v0, 0x1

    #@19c
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    #@19e
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@1a0
    .line 270
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    #@1a2
    iget v2, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    #@1a4
    .line 271
    const/4 v3, 0x2

    #@1a5
    invoke-virtual {p0, v3, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1a8
    move-result-object v3

    #@1a9
    .line 269
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@1ac
    .line 258
    :cond_b
    add-int/lit8 v11, v11, 0x1

    #@1ae
    goto :goto_1

    #@1af
    .line 150
    nop

    #@1b0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 3
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 102
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    #@2
    .line 103
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    #@4
    .line 104
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    #@6
    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@8
    .line 111
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 112
    const/4 v2, 0x3

    #@d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    #@10
    move-result-object v2

    #@11
    .line 110
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    #@14
    .line 101
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 3
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "recordNumber"    # I
    .param p4, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    #@2
    .line 85
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    #@4
    .line 86
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    #@6
    .line 87
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    #@8
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@a
    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 91
    const/4 v2, 0x1

    #@f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    #@12
    move-result-object v2

    #@13
    .line 89
    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    #@16
    .line 83
    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "ef"    # I
    .param p3, "extensionEF"    # I
    .param p4, "recordNumber"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 130
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    #@2
    .line 131
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    #@4
    .line 132
    iput p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    #@6
    .line 133
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    #@8
    .line 134
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    #@a
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@c
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 137
    const/4 v2, 0x4

    #@11
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v2

    #@15
    .line 136
    invoke-virtual {v0, p2, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    #@18
    .line 129
    return-void
.end method
