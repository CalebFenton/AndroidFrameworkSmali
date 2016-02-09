.class public abstract Lcom/android/internal/telephony/uicc/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_RECORD_SIZE_IMG_DONE:I = 0xb

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected final mAid:Ljava/lang/String;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 148
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    .line 149
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@7
    .line 150
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@9
    .line 147
    return-void
.end method

.method private processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z
    .locals 5
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 405
    const/4 v0, 0x0

    #@2
    .line 406
    .local v0, "flag":Z
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4
    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@6
    .line 407
    .local v2, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 408
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c
    invoke-direct {p0, p1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@f
    .line 409
    const/4 v0, 0x1

    #@10
    .line 417
    :cond_0
    :goto_0
    return v0

    #@11
    .line 411
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    #@14
    move-result-object v1

    #@15
    .line 412
    .local v1, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v1, :cond_0

    #@17
    .line 413
    invoke-direct {p0, p1, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1a
    .line 414
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 394
    if-nez p1, :cond_0

    #@2
    .line 395
    return-void

    #@3
    .line 398
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@6
    .line 400
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@9
    .line 393
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    #@0
    .prologue
    .line 153
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    #@0
    .prologue
    .line 606
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 626
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 615
    :sswitch_0
    const-string/jumbo v0, "3F007F10"

    #@8
    return-object v0

    #@9
    .line 619
    :sswitch_1
    const-string/jumbo v0, "3F00"

    #@c
    return-object v0

    #@d
    .line 622
    :sswitch_2
    const-string/jumbo v0, "3F007F105F3A"

    #@10
    return-object v0

    #@11
    .line 624
    :sswitch_3
    const-string/jumbo v0, "3F007F105F50"

    #@14
    return-object v0

    #@15
    .line 606
    nop

    #@16
    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_3
        0x4f30 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6fe5 -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    #@0
    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    #@7
    .line 241
    return-void
.end method

.method public getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 224
    if-nez p2, :cond_0

    #@4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 227
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    #@a
    invoke-direct {v0, p1, v3, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    #@d
    .line 226
    const/16 v1, 0x8

    #@f
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v10

    #@13
    .line 228
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@15
    .line 229
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@17
    .line 228
    const/16 v1, 0xc0

    #@19
    .line 229
    const/16 v6, 0xf

    #@1b
    move v2, p1

    #@1c
    move v5, v4

    #@1d
    move-object v8, v7

    #@1e
    .line 228
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@21
    .line 223
    return-void

    #@22
    .line 224
    .end local v3    # "efPath":Ljava/lang/String;
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    move-object v3, p2

    #@23
    .restart local v3    # "efPath":Ljava/lang/String;
    goto :goto_0
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 32
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 426
    const/16 v30, 0x0

    #@2
    .line 434
    .local v30, "response":Landroid/os/Message;
    const/4 v6, 0x0

    #@3
    .line 437
    .local v6, "path":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    #@5
    iget v3, v0, Landroid/os/Message;->what:I

    #@7
    packed-switch v3, :pswitch_data_0

    #@a
    .line 423
    .end local v6    # "path":Ljava/lang/String;
    .end local v30    # "response":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    #@b
    .line 439
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v30    # "response":Landroid/os/Message;
    :pswitch_0
    move-object/from16 v0, p1

    #@d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f
    move-object/from16 v25, v0

    #@11
    check-cast v25, Landroid/os/AsyncResult;

    #@13
    .line 440
    .local v25, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v25

    #@15
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@17
    move-object/from16 v28, v0

    #@19
    check-cast v28, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    #@1b
    .line 441
    .local v28, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v25

    #@1d
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1f
    move-object/from16 v31, v0

    #@21
    check-cast v31, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@23
    .line 442
    .local v31, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v28

    #@25
    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    #@27
    move-object/from16 v30, v0

    #@29
    .line 444
    .local v30, "response":Landroid/os/Message;
    move-object/from16 v0, p1

    #@2b
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d
    check-cast v3, Landroid/os/AsyncResult;

    #@2f
    move-object/from16 v0, p0

    #@31
    move-object/from16 v1, v30

    #@33
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    #@36
    move-result v3

    #@37
    if-nez v3, :cond_0

    #@39
    .line 448
    move-object/from16 v0, v31

    #@3b
    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@3d
    move-object/from16 v26, v0

    #@3f
    .line 450
    .local v26, "data":[B
    const/4 v3, 0x6

    #@40
    aget-byte v3, v26, v3

    #@42
    const/4 v4, 0x4

    #@43
    if-ne v4, v3, :cond_1

    #@45
    .line 451
    const/16 v3, 0xd

    #@47
    aget-byte v3, v26, v3

    #@49
    const/4 v4, 0x1

    #@4a
    if-eq v4, v3, :cond_2

    #@4c
    .line 452
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    #@4e
    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    #@51
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    .line 586
    .end local v6    # "path":Ljava/lang/String;
    .end local v25    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "data":[B
    .end local v28    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v30    # "response":Landroid/os/Message;
    .end local v31    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :catch_0
    move-exception v27

    #@53
    .line 587
    .local v27, "exc":Ljava/lang/Exception;
    if-eqz v30, :cond_c

    #@55
    .line 588
    const/4 v3, 0x0

    #@56
    move-object/from16 v0, p0

    #@58
    move-object/from16 v1, v30

    #@5a
    move-object/from16 v2, v27

    #@5c
    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@5f
    goto :goto_0

    #@60
    .line 455
    .end local v27    # "exc":Ljava/lang/Exception;
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v25    # "ar":Landroid/os/AsyncResult;
    .restart local v26    # "data":[B
    .restart local v28    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .restart local v30    # "response":Landroid/os/Message;
    .restart local v31    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_2
    const/4 v3, 0x3

    #@61
    :try_start_1
    new-array v0, v3, [I

    #@63
    move-object/from16 v29, v0

    #@65
    .line 456
    .local v29, "recordSize":[I
    const/16 v3, 0xe

    #@67
    aget-byte v3, v26, v3

    #@69
    and-int/lit16 v3, v3, 0xff

    #@6b
    const/4 v4, 0x0

    #@6c
    aput v3, v29, v4

    #@6e
    .line 457
    const/4 v3, 0x2

    #@6f
    aget-byte v3, v26, v3

    #@71
    and-int/lit16 v3, v3, 0xff

    #@73
    shl-int/lit8 v3, v3, 0x8

    #@75
    .line 458
    const/4 v4, 0x3

    #@76
    aget-byte v4, v26, v4

    #@78
    and-int/lit16 v4, v4, 0xff

    #@7a
    .line 457
    add-int/2addr v3, v4

    #@7b
    const/4 v4, 0x1

    #@7c
    aput v3, v29, v4

    #@7e
    .line 459
    const/4 v3, 0x1

    #@7f
    aget v3, v29, v3

    #@81
    const/4 v4, 0x0

    #@82
    aget v4, v29, v4

    #@84
    div-int/2addr v3, v4

    #@85
    const/4 v4, 0x2

    #@86
    aput v3, v29, v4

    #@88
    .line 461
    const/4 v3, 0x0

    #@89
    move-object/from16 v0, p0

    #@8b
    move-object/from16 v1, v30

    #@8d
    move-object/from16 v2, v29

    #@8f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@92
    goto/16 :goto_0

    #@94
    .line 466
    .end local v25    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "data":[B
    .end local v28    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v29    # "recordSize":[I
    .end local v31    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v30, "response":Landroid/os/Message;
    :pswitch_1
    move-object/from16 v0, p1

    #@96
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@98
    move-object/from16 v25, v0

    #@9a
    check-cast v25, Landroid/os/AsyncResult;

    #@9c
    .line 467
    .restart local v25    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v25

    #@9e
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@a0
    move-object/from16 v28, v0

    #@a2
    check-cast v28, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    #@a4
    .line 468
    .restart local v28    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v25

    #@a6
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@a8
    move-object/from16 v31, v0

    #@aa
    check-cast v31, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@ac
    .line 469
    .restart local v31    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v28

    #@ae
    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    #@b0
    move-object/from16 v30, v0

    #@b2
    .line 471
    .local v30, "response":Landroid/os/Message;
    move-object/from16 v0, p1

    #@b4
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b6
    check-cast v3, Landroid/os/AsyncResult;

    #@b8
    move-object/from16 v0, p0

    #@ba
    move-object/from16 v1, v30

    #@bc
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    #@bf
    move-result v3

    #@c0
    if-nez v3, :cond_0

    #@c2
    .line 475
    move-object/from16 v0, v31

    #@c4
    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@c6
    move-object/from16 v26, v0

    #@c8
    .line 476
    .restart local v26    # "data":[B
    move-object/from16 v0, v28

    #@ca
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    #@cc
    .line 478
    .local v6, "path":Ljava/lang/String;
    const/4 v3, 0x6

    #@cd
    aget-byte v3, v26, v3

    #@cf
    const/4 v4, 0x4

    #@d0
    if-eq v4, v3, :cond_3

    #@d2
    .line 479
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    #@d4
    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    #@d7
    throw v3

    #@d8
    .line 482
    :cond_3
    const/16 v3, 0xd

    #@da
    aget-byte v3, v26, v3

    #@dc
    const/4 v4, 0x1

    #@dd
    if-eq v4, v3, :cond_4

    #@df
    .line 483
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    #@e1
    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    #@e4
    throw v3

    #@e5
    .line 486
    :cond_4
    const/16 v3, 0xe

    #@e7
    aget-byte v3, v26, v3

    #@e9
    and-int/lit16 v3, v3, 0xff

    #@eb
    move-object/from16 v0, v28

    #@ed
    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    #@ef
    .line 488
    const/4 v3, 0x2

    #@f0
    aget-byte v3, v26, v3

    #@f2
    and-int/lit16 v3, v3, 0xff

    #@f4
    shl-int/lit8 v3, v3, 0x8

    #@f6
    .line 489
    const/4 v4, 0x3

    #@f7
    aget-byte v4, v26, v4

    #@f9
    and-int/lit16 v4, v4, 0xff

    #@fb
    .line 488
    add-int v13, v3, v4

    #@fd
    .line 491
    .local v13, "size":I
    move-object/from16 v0, v28

    #@ff
    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    #@101
    div-int v3, v13, v3

    #@103
    move-object/from16 v0, v28

    #@105
    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    #@107
    .line 493
    move-object/from16 v0, v28

    #@109
    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    #@10b
    if-eqz v3, :cond_5

    #@10d
    .line 494
    new-instance v3, Ljava/util/ArrayList;

    #@10f
    move-object/from16 v0, v28

    #@111
    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    #@113
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@116
    move-object/from16 v0, v28

    #@118
    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    #@11a
    .line 497
    :cond_5
    if-nez v6, :cond_6

    #@11c
    .line 498
    move-object/from16 v0, v28

    #@11e
    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    #@120
    move-object/from16 v0, p0

    #@122
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@125
    move-result-object v6

    #@126
    .line 500
    :cond_6
    move-object/from16 v0, p0

    #@128
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@12a
    move-object/from16 v0, v28

    #@12c
    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    #@12e
    .line 501
    move-object/from16 v0, v28

    #@130
    iget v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    #@132
    .line 503
    move-object/from16 v0, v28

    #@134
    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    #@136
    move-object/from16 v0, p0

    #@138
    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@13a
    .line 504
    const/4 v4, 0x7

    #@13b
    move-object/from16 v0, p0

    #@13d
    move-object/from16 v1, v28

    #@13f
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@142
    move-result-object v13

    #@143
    .line 500
    .end local v13    # "size":I
    const/16 v4, 0xb2

    #@145
    .line 502
    const/4 v8, 0x4

    #@146
    .line 503
    const/4 v10, 0x0

    #@147
    const/4 v11, 0x0

    #@148
    .line 500
    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@14b
    goto/16 :goto_0

    #@14d
    .line 507
    .end local v25    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "data":[B
    .end local v28    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v31    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v6, "path":Ljava/lang/String;
    .local v30, "response":Landroid/os/Message;
    :pswitch_2
    move-object/from16 v0, p1

    #@14f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@151
    move-object/from16 v25, v0

    #@153
    check-cast v25, Landroid/os/AsyncResult;

    #@155
    .line 508
    .restart local v25    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v25

    #@157
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@159
    move-object v0, v3

    #@15a
    check-cast v0, Landroid/os/Message;

    #@15c
    move-object/from16 v30, v0

    #@15e
    .line 509
    .local v30, "response":Landroid/os/Message;
    move-object/from16 v0, v25

    #@160
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@162
    move-object/from16 v31, v0

    #@164
    check-cast v31, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@166
    .line 511
    .restart local v31    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    #@168
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16a
    check-cast v3, Landroid/os/AsyncResult;

    #@16c
    move-object/from16 v0, p0

    #@16e
    move-object/from16 v1, v30

    #@170
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    #@173
    move-result v3

    #@174
    if-nez v3, :cond_0

    #@176
    .line 515
    move-object/from16 v0, v31

    #@178
    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@17a
    move-object/from16 v26, v0

    #@17c
    .line 517
    .restart local v26    # "data":[B
    move-object/from16 v0, p1

    #@17e
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@180
    .line 519
    .local v9, "fileid":I
    const/4 v3, 0x6

    #@181
    aget-byte v3, v26, v3

    #@183
    const/4 v4, 0x4

    #@184
    if-eq v4, v3, :cond_7

    #@186
    .line 520
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    #@188
    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    #@18b
    throw v3

    #@18c
    .line 523
    :cond_7
    const/16 v3, 0xd

    #@18e
    aget-byte v3, v26, v3

    #@190
    if-eqz v3, :cond_8

    #@192
    .line 524
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    #@194
    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    #@197
    throw v3

    #@198
    .line 527
    :cond_8
    const/4 v3, 0x2

    #@199
    aget-byte v3, v26, v3

    #@19b
    and-int/lit16 v3, v3, 0xff

    #@19d
    shl-int/lit8 v3, v3, 0x8

    #@19f
    .line 528
    const/4 v4, 0x3

    #@1a0
    aget-byte v4, v26, v4

    #@1a2
    and-int/lit16 v4, v4, 0xff

    #@1a4
    .line 527
    add-int v13, v3, v4

    #@1a6
    .line 530
    .restart local v13    # "size":I
    move-object/from16 v0, p0

    #@1a8
    iget-object v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1aa
    move-object/from16 v0, p0

    #@1ac
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@1af
    move-result-object v10

    #@1b0
    .line 531
    move-object/from16 v0, p0

    #@1b2
    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@1b4
    move-object/from16 v16, v0

    #@1b6
    .line 532
    const/4 v3, 0x5

    #@1b7
    .line 533
    const/4 v4, 0x0

    #@1b8
    .line 532
    move-object/from16 v0, p0

    #@1ba
    move-object/from16 v1, v30

    #@1bc
    invoke-virtual {v0, v3, v9, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1bf
    move-result-object v17

    #@1c0
    .line 530
    const/16 v8, 0xb0

    #@1c2
    .line 531
    const/4 v11, 0x0

    #@1c3
    const/4 v12, 0x0

    #@1c4
    const/4 v14, 0x0

    #@1c5
    const/4 v15, 0x0

    #@1c6
    .line 530
    invoke-interface/range {v7 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@1c9
    goto/16 :goto_0

    #@1cb
    .line 539
    .end local v9    # "fileid":I
    .end local v13    # "size":I
    .end local v25    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "data":[B
    .end local v31    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v30, "response":Landroid/os/Message;
    :pswitch_3
    move-object/from16 v0, p1

    #@1cd
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1cf
    move-object/from16 v25, v0

    #@1d1
    check-cast v25, Landroid/os/AsyncResult;

    #@1d3
    .line 540
    .restart local v25    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v25

    #@1d5
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@1d7
    move-object/from16 v28, v0

    #@1d9
    check-cast v28, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    #@1db
    .line 541
    .restart local v28    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v25

    #@1dd
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1df
    move-object/from16 v31, v0

    #@1e1
    check-cast v31, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@1e3
    .line 542
    .restart local v31    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v28

    #@1e5
    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    #@1e7
    move-object/from16 v30, v0

    #@1e9
    .line 543
    .local v30, "response":Landroid/os/Message;
    move-object/from16 v0, v28

    #@1eb
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    #@1ed
    .line 545
    .local v6, "path":Ljava/lang/String;
    move-object/from16 v0, p1

    #@1ef
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f1
    check-cast v3, Landroid/os/AsyncResult;

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    move-object/from16 v1, v30

    #@1f7
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    #@1fa
    move-result v3

    #@1fb
    if-nez v3, :cond_0

    #@1fd
    .line 549
    move-object/from16 v0, v28

    #@1ff
    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    #@201
    if-nez v3, :cond_9

    #@203
    .line 550
    move-object/from16 v0, v31

    #@205
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@207
    const/4 v4, 0x0

    #@208
    move-object/from16 v0, p0

    #@20a
    move-object/from16 v1, v30

    #@20c
    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@20f
    goto/16 :goto_0

    #@211
    .line 552
    :cond_9
    move-object/from16 v0, v28

    #@213
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    #@215
    move-object/from16 v0, v31

    #@217
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@219
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21c
    .line 554
    move-object/from16 v0, v28

    #@21e
    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    #@220
    add-int/lit8 v3, v3, 0x1

    #@222
    move-object/from16 v0, v28

    #@224
    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    #@226
    .line 556
    move-object/from16 v0, v28

    #@228
    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    #@22a
    move-object/from16 v0, v28

    #@22c
    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    #@22e
    if-le v3, v4, :cond_a

    #@230
    .line 557
    move-object/from16 v0, v28

    #@232
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    #@234
    const/4 v4, 0x0

    #@235
    move-object/from16 v0, p0

    #@237
    move-object/from16 v1, v30

    #@239
    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@23c
    goto/16 :goto_0

    #@23e
    .line 559
    :cond_a
    if-nez v6, :cond_b

    #@240
    .line 560
    move-object/from16 v0, v28

    #@242
    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    #@244
    move-object/from16 v0, p0

    #@246
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@249
    move-result-object v6

    #@24a
    .line 563
    :cond_b
    move-object/from16 v0, p0

    #@24c
    iget-object v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@24e
    move-object/from16 v0, v28

    #@250
    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    #@252
    move/from16 v16, v0

    #@254
    .line 564
    move-object/from16 v0, v28

    #@256
    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    #@258
    move/from16 v18, v0

    #@25a
    .line 566
    move-object/from16 v0, v28

    #@25c
    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    #@25e
    move/from16 v20, v0

    #@260
    move-object/from16 v0, p0

    #@262
    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@264
    move-object/from16 v23, v0

    #@266
    .line 567
    const/4 v3, 0x7

    #@267
    move-object/from16 v0, p0

    #@269
    move-object/from16 v1, v28

    #@26b
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@26e
    move-result-object v24

    #@26f
    .line 563
    const/16 v15, 0xb2

    #@271
    .line 565
    const/16 v19, 0x4

    #@273
    .line 566
    const/16 v21, 0x0

    #@275
    const/16 v22, 0x0

    #@277
    move-object/from16 v17, v6

    #@279
    .line 563
    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@27c
    goto/16 :goto_0

    #@27e
    .line 575
    .end local v25    # "ar":Landroid/os/AsyncResult;
    .end local v28    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v31    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v6, "path":Ljava/lang/String;
    .local v30, "response":Landroid/os/Message;
    :pswitch_4
    move-object/from16 v0, p1

    #@280
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@282
    move-object/from16 v25, v0

    #@284
    check-cast v25, Landroid/os/AsyncResult;

    #@286
    .line 576
    .restart local v25    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v25

    #@288
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@28a
    move-object v0, v3

    #@28b
    check-cast v0, Landroid/os/Message;

    #@28d
    move-object/from16 v30, v0

    #@28f
    .line 577
    .local v30, "response":Landroid/os/Message;
    move-object/from16 v0, v25

    #@291
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@293
    move-object/from16 v31, v0

    #@295
    check-cast v31, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@297
    .line 579
    .restart local v31    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    #@299
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29b
    check-cast v3, Landroid/os/AsyncResult;

    #@29d
    move-object/from16 v0, p0

    #@29f
    move-object/from16 v1, v30

    #@2a1
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    #@2a4
    move-result v3

    #@2a5
    if-nez v3, :cond_0

    #@2a7
    .line 583
    move-object/from16 v0, v31

    #@2a9
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@2ab
    const/4 v4, 0x0

    #@2ac
    move-object/from16 v0, p0

    #@2ae
    move-object/from16 v1, v30

    #@2b0
    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@2b3
    goto/16 :goto_0

    #@2b5
    .line 590
    .end local v6    # "path":Ljava/lang/String;
    .end local v25    # "ar":Landroid/os/AsyncResult;
    .end local v30    # "response":Landroid/os/Message;
    .end local v31    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v27    # "exc":Ljava/lang/Exception;
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2ba
    const-string/jumbo v4, "uncaught exception"

    #@2bd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v3

    #@2c1
    move-object/from16 v0, v27

    #@2c3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c6
    move-result-object v3

    #@2c7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ca
    move-result-object v3

    #@2cb
    move-object/from16 v0, p0

    #@2cd
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    #@2d0
    goto/16 :goto_0

    #@2d2
    .line 437
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .param p1, "recordNum"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/16 v2, 0x4f20

    #@3
    .line 204
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    #@5
    invoke-direct {v0, v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    #@8
    .line 203
    const/16 v1, 0xb

    #@a
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v10

    #@e
    .line 207
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    .line 208
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 210
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@16
    .line 207
    const/16 v1, 0xc0

    #@18
    .line 209
    const/4 v5, 0x4

    #@19
    const/16 v6, 0xa

    #@1b
    move v4, p1

    #@1c
    move-object v8, v7

    #@1d
    .line 207
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@20
    .line 202
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "highOffset"    # I
    .param p3, "lowOffset"    # I
    .param p4, "length"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    #@0
    .prologue
    .line 325
    const/16 v1, 0xa

    #@2
    const/4 v2, 0x0

    #@3
    move-object/from16 v0, p5

    #@5
    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v11

    #@9
    .line 328
    .local v11, "response":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "IccFileHandler: loadEFImgTransparent fileid = "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 329
    const-string/jumbo v2, " filePath = "

    #@1c
    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 329
    const/16 v2, 0x4f20

    #@22
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 329
    const-string/jumbo v2, " highOffset = "

    #@2d
    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 330
    const-string/jumbo v2, " lowOffset = "

    #@38
    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 330
    const-string/jumbo v2, " length = "

    #@43
    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    move/from16 v0, p4

    #@49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    #@54
    .line 338
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@56
    const/16 v2, 0x4f20

    #@58
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    .line 339
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@5e
    .line 338
    const/16 v2, 0xb0

    #@60
    .line 339
    const/4 v8, 0x0

    #@61
    const/4 v9, 0x0

    #@62
    move v3, p1

    #@63
    move v5, p2

    #@64
    move v6, p3

    #@65
    move/from16 v7, p4

    #@67
    .line 338
    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@6a
    .line 324
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    #@0
    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    #@7
    .line 189
    return-void
.end method

.method public loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 170
    if-nez p2, :cond_0

    #@4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 173
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    #@a
    invoke-direct {v0, p1, p3, v3, p4}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILjava/lang/String;Landroid/os/Message;)V

    #@d
    .line 172
    const/4 v1, 0x6

    #@e
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v10

    #@12
    .line 175
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@14
    .line 176
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@16
    .line 175
    const/16 v1, 0xc0

    #@18
    .line 176
    const/16 v6, 0xf

    #@1a
    move v2, p1

    #@1b
    move v5, v4

    #@1c
    move-object v8, v7

    #@1d
    .line 175
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@20
    .line 169
    return-void

    #@21
    .line 170
    .end local v3    # "efPath":Ljava/lang/String;
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    move-object v3, p2

    #@22
    .restart local v3    # "efPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    #@0
    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    #@7
    .line 273
    return-void
.end method

.method public loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 256
    if-nez p2, :cond_0

    #@4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 258
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    #@a
    invoke-direct {v0, p1, v3, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    #@d
    .line 257
    const/4 v1, 0x6

    #@e
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v10

    #@12
    .line 260
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@14
    .line 261
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@16
    .line 260
    const/16 v1, 0xc0

    #@18
    .line 261
    const/16 v6, 0xf

    #@1a
    move v2, p1

    #@1b
    move v5, v4

    #@1c
    move-object v8, v7

    #@1d
    .line 260
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@20
    .line 255
    return-void

    #@21
    .line 256
    .end local v3    # "efPath":Ljava/lang/String;
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    move-object v3, p2

    #@22
    .restart local v3    # "efPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "size"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 306
    const/4 v0, 0x5

    #@3
    invoke-virtual {p0, v0, p1, v4, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v10

    #@7
    .line 309
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 310
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@f
    .line 309
    const/16 v1, 0xb0

    #@11
    move v2, p1

    #@12
    move v5, v4

    #@13
    move v6, p2

    #@14
    move-object v8, v7

    #@15
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@18
    .line 305
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 288
    const/4 v0, 0x4

    #@3
    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v10

    #@7
    .line 291
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 292
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@f
    .line 291
    const/16 v1, 0xc0

    #@11
    .line 292
    const/16 v6, 0xf

    #@13
    move v2, p1

    #@14
    move v5, v4

    #@15
    move-object v8, v7

    #@16
    .line 291
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@19
    .line 287
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "data"    # [B
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 372
    array-length v6, p3

    #@7
    .line 373
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@a
    move-result-object v7

    #@b
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@d
    .line 371
    const/16 v1, 0xdc

    #@f
    .line 372
    const/4 v5, 0x4

    #@10
    move v2, p1

    #@11
    move v4, p2

    #@12
    move-object v8, p4

    #@13
    move-object/from16 v10, p5

    #@15
    .line 371
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@18
    .line 370
    return-void
.end method

.method public updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "data"    # [B
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 354
    if-nez p2, :cond_0

    #@2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 355
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    .line 356
    array-length v6, p4

    #@9
    .line 357
    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@c
    move-result-object v7

    #@d
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@f
    .line 355
    const/16 v1, 0xdc

    #@11
    .line 356
    const/4 v5, 0x4

    #@12
    move v2, p1

    #@13
    move v4, p3

    #@14
    move-object/from16 v8, p5

    #@16
    move-object/from16 v10, p6

    #@18
    .line 355
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@1b
    .line 353
    return-void

    #@1c
    .line 354
    .end local v3    # "efPath":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    #@1d
    .restart local v3    # "efPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "data"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 383
    array-length v6, p2

    #@8
    .line 384
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@b
    move-result-object v7

    #@c
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    #@e
    .line 382
    const/16 v1, 0xd6

    #@10
    .line 384
    const/4 v8, 0x0

    #@11
    move v2, p1

    #@12
    move v5, v4

    #@13
    move-object v10, p3

    #@14
    .line 382
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@17
    .line 381
    return-void
.end method
