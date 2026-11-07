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
.field protected static final blacklist COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final blacklist COMMAND_READ_BINARY:I = 0xb0

.field protected static final blacklist COMMAND_READ_RECORD:I = 0xb2

.field protected static final blacklist COMMAND_SEEK:I = 0xa2

.field protected static final blacklist COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final blacklist COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final blacklist EF_TYPE_CYCLIC:I = 0x3

.field protected static final blacklist EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final blacklist EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final blacklist EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final blacklist EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final blacklist EVENT_GET_EF_TRANSPARENT_SIZE_DONE:I = 0xc

.field protected static final blacklist EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final blacklist EVENT_GET_RECORD_SIZE_IMG_DONE:I = 0xb

.field protected static final blacklist EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final blacklist EVENT_READ_ICON_DONE:I = 0xa

.field protected static final blacklist EVENT_READ_IMG_DONE:I = 0x9

.field protected static final blacklist EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final blacklist GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final blacklist GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final blacklist LOG_TAG:Ljava/lang/String; = "IccFileHandler"

.field protected static final blacklist READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final blacklist RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final blacklist RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final blacklist RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final blacklist RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final blacklist RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final blacklist RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final blacklist RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final blacklist RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final blacklist RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final blacklist RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final blacklist RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final blacklist RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final blacklist RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final blacklist RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final blacklist RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final blacklist TYPE_DF:I = 0x2

.field protected static final blacklist TYPE_EF:I = 0x4

.field protected static final blacklist TYPE_MF:I = 0x1

.field protected static final blacklist TYPE_RFU:I

.field private static final blacklist VDBG:Z


# instance fields
.field protected final greylist-max-r mAid:Ljava/lang/String;

.field protected final greylist-max-r mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final greylist-max-r mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 39
    const-string v0, "IccFileHandler"

    const/4 v1, 0x2

    .line 40
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->VDBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 3

    .line 172
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 174
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 175
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4

    .line 165
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 167
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method private static blacklist getDataFileSize([B)I
    .registers 3

    const/4 v0, 0x2

    .line 723
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method private blacklist processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z
    .registers 6

    .line 460
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 461
    iget-object p2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_e

    .line 462
    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return v1

    .line 465
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 467
    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return v1

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 452
    :cond_3
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 454
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 1

    .line 0
    return-void
.end method

.method protected blacklist getCommonIccEFPath(I)Ljava/lang/String;
    .registers 2

    const/16 p0, 0x2f05

    if-eq p1, p0, :cond_2e

    const/16 p0, 0x2fe2

    if-eq p1, p0, :cond_2e

    const/16 p0, 0x4f20

    if-eq p1, p0, :cond_2b

    const/16 p0, 0x4f30

    if-eq p1, p0, :cond_28

    const/16 p0, 0x6f40

    if-eq p1, p0, :cond_25

    const/16 p0, 0x6fe5

    if-eq p1, p0, :cond_25

    const/16 p0, 0x6f3a

    if-eq p1, p0, :cond_25

    const/16 p0, 0x6f3b

    if-eq p1, p0, :cond_25

    packed-switch p1, :pswitch_data_32

    const/4 p0, 0x0

    return-object p0

    .line 697
    :cond_25
    :pswitch_25
    const-string p0, "3F007F10"

    return-object p0

    .line 704
    :cond_28
    const-string p0, "3F007F105F3A"

    return-object p0

    .line 706
    :cond_2b
    const-string p0, "3F007F105F50"

    return-object p0

    .line 701
    :cond_2e
    const-string p0, "3F00"

    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x6f49
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public greylist-max-r getEFLinearRecordSize(ILandroid/os/Message;)V
    .registers 4

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    .registers 15

    if-nez p2, :cond_6

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_6
    move-object v3, p2

    .line 253
    new-instance p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {p2, p1, v3, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    const/16 p3, 0x8

    .line 254
    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v1, 0xc0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected abstract greylist-max-r getEFPath(I)Ljava/lang/String;
.end method

.method public blacklist getEFTransparentRecordSize(ILandroid/os/Message;)V
    .registers 16

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 282
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 283
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    move v4, p1

    .line 283
    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getEfid(Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)I
    .registers 2

    .line 159
    iget p0, p1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 491
    :try_start_5
    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0xd

    const/4 v9, 0x6

    const/4 v10, 0x4

    packed-switch v3, :pswitch_data_22a

    goto/16 :goto_228

    .line 644
    :pswitch_15
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 645
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_51

    .line 646
    :try_start_1e
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 648
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v4, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto/16 :goto_228

    .line 652
    :cond_2c
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 656
    aget-byte v3, v0, v9

    if-ne v10, v3, :cond_4b

    .line 660
    aget-byte v3, v0, v8

    if-nez v3, :cond_45

    .line 664
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getDataFileSize([B)I

    move-result v0

    .line 665
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v4, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :catch_42
    move-exception v0

    goto/16 :goto_20e

    .line 661
    :cond_45
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0

    .line 657
    :cond_4b
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_51} :catch_42

    :catch_51
    move-exception v0

    move-object v4, v2

    goto/16 :goto_20e

    .line 493
    :pswitch_55
    :try_start_55
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 494
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 495
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 496
    iget-object v4, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_64} :catch_51

    .line 498
    :try_start_64
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v4, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_6e

    goto/16 :goto_228

    .line 502
    :cond_6e
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 504
    aget-byte v3, v0, v9

    if-ne v10, v3, :cond_91

    aget-byte v3, v0, v8

    if-ne v7, v3, :cond_91

    const/4 v3, 0x3

    .line 509
    new-array v3, v3, [I

    .line 510
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v6

    .line 511
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getDataFileSize([B)I

    move-result v0

    aput v0, v3, v7

    .line 512
    aget v5, v3, v6

    div-int/2addr v0, v5

    const/4 v5, 0x2

    aput v0, v3, v5

    .line 514
    invoke-direct {v1, v4, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 506
    :cond_91
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_97} :catch_42

    .line 596
    :pswitch_97
    :try_start_97
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 597
    iget-object v5, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 598
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 599
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a6} :catch_51

    .line 600
    :try_start_a6
    iget-object v8, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    .line 602
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v6, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_b2

    goto/16 :goto_228

    .line 606
    :cond_b2
    iget-boolean v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-nez v0, :cond_c0

    .line 607
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {v1, v6, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :catch_bc
    move-exception v0

    move-object v4, v6

    goto/16 :goto_20e

    .line 609
    :cond_c0
    iget-object v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    iget v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    add-int/2addr v0, v7

    iput v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 613
    iget v3, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    if-le v0, v3, :cond_d6

    .line 614
    iget-object v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    invoke-direct {v1, v6, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_d6
    if-nez v8, :cond_de

    .line 617
    iget v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v8

    :cond_de
    move-object v10, v8

    .line 620
    iget-object v7, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v9, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget v11, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    iget v13, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    iget-object v0, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 624
    invoke-virtual {v1, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    const/16 v8, 0xb2

    const/4 v12, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v0

    .line 620
    invoke-interface/range {v7 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_f7} :catch_bc

    return-void

    .line 519
    :pswitch_f8
    :try_start_f8
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 520
    iget-object v6, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 521
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 522
    iget-object v11, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_107} :catch_51

    .line 524
    :try_start_107
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v11, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 525
    const-string v0, "exception caught from EVENT_GET_RECORD_SIZE"

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    return-void

    :catch_115
    move-exception v0

    move-object v4, v11

    goto/16 :goto_20e

    .line 529
    :cond_119
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 530
    iget-object v3, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    .line 532
    aget-byte v9, v0, v9

    if-ne v10, v9, :cond_170

    .line 536
    aget-byte v8, v0, v8

    if-ne v7, v8, :cond_16a

    .line 540
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 542
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getDataFileSize([B)I

    move-result v0

    .line 544
    iget v5, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    div-int/2addr v0, v5

    iput v0, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 546
    iget-boolean v0, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-eqz v0, :cond_141

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    iget v5, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    :cond_141
    if-nez v3, :cond_149

    .line 551
    iget v0, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    :cond_149
    move-object v15, v3

    .line 553
    iget-object v12, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v14, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget v0, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    iget v3, v6, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    iget-object v5, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 557
    invoke-virtual {v1, v4, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    const/16 v13, 0xb2

    const/16 v17, 0x4

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v16, v0

    move/from16 v18, v3

    move-object/from16 v21, v5

    .line 553
    invoke-interface/range {v12 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 537
    :cond_16a
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0

    .line 533
    :cond_170
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_176} :catch_115

    .line 632
    :pswitch_176
    :try_start_176
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 633
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_17f} :catch_51

    .line 634
    :try_start_17f
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 636
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v4, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_18d

    goto/16 :goto_228

    .line 640
    :cond_18d
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {v1, v4, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_192} :catch_42

    return-void

    .line 560
    :pswitch_193
    :try_start_193
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/os/AsyncResult;

    .line 561
    iget-object v5, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_19c} :catch_51

    .line 562
    :try_start_19c
    iget-object v4, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 564
    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {v1, v5, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    goto/16 :goto_228

    .line 568
    :cond_1aa
    iget-object v3, v4, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 570
    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 572
    sget-boolean v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->VDBG:Z

    if-eqz v0, :cond_1da

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contents of the Select Response for command %x: "

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    goto :goto_1da

    :catch_1d7
    move-exception v0

    move-object v4, v5

    goto :goto_20e

    .line 577
    :cond_1da
    :goto_1da
    aget-byte v0, v3, v9

    if-ne v10, v0, :cond_208

    .line 581
    aget-byte v0, v3, v8

    if-nez v0, :cond_202

    .line 585
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getDataFileSize([B)I

    move-result v17

    .line 587
    iget-object v11, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v3, 0x5

    .line 589
    invoke-virtual {v1, v3, v13, v6, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    const/16 v12, 0xb0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v0

    .line 587
    invoke-interface/range {v11 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 582
    :cond_202
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0

    .line 578
    :cond_208
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_20e} :catch_1d7

    :goto_20e
    if-eqz v4, :cond_214

    .line 670
    invoke-direct {v1, v4, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_228

    .line 672
    :cond_214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uncaught exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    :goto_228
    return-void

    nop

    :pswitch_data_22a
    .packed-switch 0x4
        :pswitch_193
        :pswitch_176
        :pswitch_f8
        :pswitch_97
        :pswitch_55
        :pswitch_97
        :pswitch_176
        :pswitch_f8
        :pswitch_15
    .end packed-switch
.end method

.method public blacklist loadEFImgLinearFixed(ILandroid/os/Message;)V
    .registers 16

    .line 230
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    const/16 v1, 0x4f20

    invoke-direct {v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    const/16 p2, 0xb

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 234
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 235
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v3, 0xc0

    const/16 v4, 0x4f20

    const/4 v7, 0x4

    const/16 v8, 0xa

    const/4 v9, 0x0

    move v6, p1

    .line 234
    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist loadEFImgTransparent(IIIILandroid/os/Message;)V
    .registers 17

    const/16 v1, 0xa

    const/4 v3, 0x0

    move-object/from16 v4, p5

    .line 376
    invoke-virtual {p0, v1, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccFileHandler: loadEFImgTransparent fileid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " filePath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x4f20

    .line 380
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " highOffset = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lowOffset = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " length = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object v0, v1

    const/16 v1, 0xb0

    const/4 v7, 0x0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r loadEFLinearFixed(IILandroid/os/Message;)V
    .registers 5

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V
    .registers 16

    if-nez p2, :cond_6

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_6
    move-object v3, p2

    .line 197
    new-instance p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {p2, p1, p3, v3, p4}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILjava/lang/String;Landroid/os/Message;)V

    const/4 p3, 0x6

    .line 198
    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v1, 0xc0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r loadEFLinearFixedAll(ILandroid/os/Message;)V
    .registers 4

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V
    .registers 15

    if-nez p2, :cond_6

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_6
    move-object v3, p2

    .line 308
    new-instance p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {p2, p1, v3, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    const/4 p3, 0x6

    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v1, 0xc0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist loadEFTransparent(IILandroid/os/Message;)V
    .registers 17

    const/4 v0, 0x5

    const/4 v1, 0x0

    move-object/from16 v2, p3

    .line 357
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 360
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v3, 0xb0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v4, p1

    move v8, p2

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist loadEFTransparent(ILandroid/os/Message;)V
    .registers 16

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 339
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 342
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    move v4, p1

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected abstract blacklist logd(Ljava/lang/String;)V
.end method

.method protected abstract blacklist loge(Ljava/lang/String;)V
.end method

.method public greylist-max-r updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .registers 17

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p3

    .line 426
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v1, 0xdc

    const/4 v5, 0x4

    move v2, p1

    move v4, p2

    move-object v8, p4

    move-object/from16 v10, p5

    .line 424
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V
    .registers 18

    if-nez p2, :cond_6

    .line 406
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_6
    move-object v3, p2

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    array-length v6, p4

    .line 409
    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v1, 0xdc

    const/4 v5, 0x4

    move v2, p1

    move v4, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    .line 407
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r updateEFTransparent(I[BLandroid/os/Message;)V
    .registers 15

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    .line 438
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v1, 0xd6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v10, p3

    .line 436
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method
