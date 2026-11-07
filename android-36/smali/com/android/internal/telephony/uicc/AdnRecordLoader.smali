.class public Lcom/android/internal/telephony/uicc/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# instance fields
.field blacklist mAdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mEf:I

.field blacklist mExtensionEF:I

.field private greylist-max-r mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field blacklist mPendingExtLoads:I

.field blacklist mPin2:Ljava/lang/String;

.field blacklist mRecordNumber:I

.field blacklist mResult:Ljava/lang/Object;

.field blacklist mUserResponse:Landroid/os/Message;


# direct methods
.method constructor greylist-max-r <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .registers 3

    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    return-void
.end method

.method private greylist-max-r getEFPath(I)Ljava/lang/String;
    .registers 2

    const/16 p0, 0x6f3a

    if-ne p1, p0, :cond_7

    .line 76
    const-string p0, "3F007F10"

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 14

    const/4 v1, 0x0

    .line 157
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_3} :catch_2d

    const-string v2, "load failed"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_170

    if-eq v0, v3, :cond_11a

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v0, v5, :cond_c3

    const/4 v2, 0x4

    const/4 v7, 0x5

    if-eq v0, v2, :cond_3f

    if-eq v0, v7, :cond_17

    goto/16 :goto_19c

    .line 213
    :cond_17
    :try_start_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 214
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_35

    .line 218
    iput v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_31

    .line 221
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_19c

    :catch_2d
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1bc

    .line 223
    :cond_31
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_19c

    .line 215
    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn record failed"

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 159
    :cond_3f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 160
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 162
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_b9

    .line 167
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 173
    array-length v8, v2

    if-ne v8, v5, :cond_af

    iget v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    aget v3, v2, v3

    if-gt v5, v3, :cond_af

    .line 178
    aget v3, v2, v6

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(I)[B

    move-result-object v3

    if-nez v3, :cond_70

    .line 191
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    iget v5, v5, Landroid/os/Message;->arg1:I

    if-ne v5, v4, :cond_6e

    .line 192
    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 193
    aget v2, v2, v6

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(I)[B

    move-result-object v3

    :cond_6e
    if-eqz v3, :cond_72

    :cond_70
    move-object v9, v3

    goto :goto_7c

    .line 196
    :cond_72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 202
    :goto_7c
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_97

    .line 203
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move p1, v7

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 204
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 203
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_ab

    :cond_97
    move p1, v7

    .line 206
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 207
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 206
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    .line 209
    :goto_ab
    iput v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_19c

    .line 174
    :cond_af
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 163
    :cond_b9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "get EF record size failed"

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 286
    :cond_c3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 287
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 289
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_112

    .line 293
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 294
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 295
    iput v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 297
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_e2
    if-ge v6, p1, :cond_19c

    .line 298
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {v2, v5, v7, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 299
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v5

    if-eqz v5, :cond_110

    .line 306
    iget v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 308
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    iget v8, v2, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 310
    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 308
    invoke-virtual {v5, v6, v8, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    :cond_110
    move v6, v7

    goto :goto_e2

    .line 290
    :cond_112
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 258
    :cond_11a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 259
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 260
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 262
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_128
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_128} :catch_2d

    const-string v3, "AdnRecordLoader"

    if-nez p1, :cond_160

    .line 263
    :try_start_12c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADN extension EF: 0x"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 264
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->appendExtRecord([B)V

    goto :goto_16a

    .line 276
    :cond_160
    const-string p1, "Failed to read ext record. Clear the number now."

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string p1, ""

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setNumber(Ljava/lang/String;)V

    .line 280
    :goto_16a
    iget p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto :goto_19c

    .line 227
    :cond_170
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 228
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 230
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1b4

    .line 241
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    iget v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    invoke-direct {p1, v2, v5, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 242
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 244
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 249
    iput v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    iget v4, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 253
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 251
    invoke-virtual {v0, v2, v4, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_19c
    .catch Ljava/lang/RuntimeException; {:try_start_12c .. :try_end_19c} :catch_2d

    .line 327
    :cond_19c
    :goto_19c
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz p1, :cond_1cd

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    if-nez v0, :cond_1cd

    .line 328
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    iput-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 331
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 332
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    return-void

    .line 231
    :cond_1b4
    :try_start_1b4
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1bc
    .catch Ljava/lang/RuntimeException; {:try_start_1b4 .. :try_end_1bc} :catch_2d

    .line 316
    :goto_1bc
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v0, :cond_1cd

    .line 317
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 319
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 322
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    :cond_1cd
    return-void
.end method

.method public blacklist loadAllFromEF(IILandroid/os/Message;)V
    .registers 5

    .line 108
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 109
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 110
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 116
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x3

    .line 118
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 116
    invoke-virtual {p2, p1, p3, p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r loadFromEF(IIILandroid/os/Message;)V
    .registers 6

    .line 90
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 91
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 92
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 93
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 95
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 95
    invoke-virtual {p2, p1, p4, p3, p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 137
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 138
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 139
    iput p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 140
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 141
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 143
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x4

    .line 144
    invoke-virtual {p0, p5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 143
    invoke-virtual {p3, p2, p4, p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method
