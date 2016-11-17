.class public Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final ERI_FROM_FILE_SYSTEM:I = 0x1

.field static final ERI_FROM_MODEM:I = 0x2

.field public static final ERI_FROM_XML:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "EriManager"

.field private static final VDBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private mEriFileSource:I

.field private mIsEriFileLoaded:Z

.field private final mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "eriFileSource"    # I

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    #@6
    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    #@8
    .line 104
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@a
    .line 105
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    #@c
    .line 106
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@e
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@13
    .line 102
    return-void
.end method

.method private getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .locals 10
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    #@0
    .prologue
    const v9, 0x10400d9

    #@3
    const v8, 0x10400d7

    #@6
    const/4 v7, 0x2

    #@7
    const/4 v5, 0x1

    #@8
    const/4 v6, 0x0

    #@9
    .line 315
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 316
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    #@10
    move-result-object v1

    #@11
    .line 317
    .local v1, "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    if-eqz v1, :cond_0

    #@13
    .line 319
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@15
    .line 320
    iget v3, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    #@17
    .line 321
    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    #@19
    .line 322
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    #@1b
    .line 319
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@1e
    .line 323
    .local v2, "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    return-object v2

    #@1f
    .line 327
    .end local v1    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@22
    .line 424
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    #@24
    if-nez v3, :cond_2

    #@26
    .line 426
    const-string/jumbo v3, "EriManager"

    #@29
    const-string/jumbo v4, "ERI File not loaded"

    #@2c
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 427
    if-le p2, v7, :cond_1

    #@31
    .line 429
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@33
    .line 432
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@35
    invoke-virtual {v3, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@38
    move-result-object v3

    #@39
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 429
    invoke-direct {v2, p0, v7, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@40
    .line 503
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :goto_0
    return-object v2

    #@41
    .line 330
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_0
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@43
    .line 333
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@45
    invoke-virtual {v3, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@48
    move-result-object v3

    #@49
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 330
    invoke-direct {v2, p0, v6, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@50
    .line 334
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@51
    .line 337
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_1
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@53
    .line 340
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@55
    const v4, 0x10400d8

    #@58
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@5b
    move-result-object v3

    #@5c
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    .line 337
    invoke-direct {v2, p0, v5, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@63
    .line 341
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@64
    .line 344
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_2
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@66
    .line 347
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@68
    invoke-virtual {v3, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@6b
    move-result-object v3

    #@6c
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    .line 344
    invoke-direct {v2, p0, v7, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@73
    .line 348
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@74
    .line 353
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_3
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@76
    .line 356
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@78
    const v4, 0x10400da

    #@7b
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7e
    move-result-object v3

    #@7f
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    .line 353
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@86
    .line 357
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@87
    .line 360
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_4
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@89
    .line 363
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@8b
    const v4, 0x10400db

    #@8e
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@91
    move-result-object v3

    #@92
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@95
    move-result-object v3

    #@96
    .line 360
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@99
    .line 364
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@9a
    .line 367
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_5
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@9c
    .line 370
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@9e
    const v4, 0x10400dc

    #@a1
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@a4
    move-result-object v3

    #@a5
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@a8
    move-result-object v3

    #@a9
    .line 367
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@ac
    .line 371
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@ad
    .line 374
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_6
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@af
    .line 377
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@b1
    const v4, 0x10400dd

    #@b4
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@b7
    move-result-object v3

    #@b8
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@bb
    move-result-object v3

    #@bc
    .line 374
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@bf
    .line 378
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@c0
    .line 381
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_7
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@c2
    .line 384
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@c4
    const v4, 0x10400de

    #@c7
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@ca
    move-result-object v3

    #@cb
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@ce
    move-result-object v3

    #@cf
    .line 381
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@d2
    .line 385
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@d4
    .line 388
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_8
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@d6
    .line 391
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@d8
    const v4, 0x10400df

    #@db
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@de
    move-result-object v3

    #@df
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@e2
    move-result-object v3

    #@e3
    .line 388
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@e6
    .line 392
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@e8
    .line 395
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_9
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@ea
    .line 398
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@ec
    const v4, 0x10400e0

    #@ef
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@f2
    move-result-object v3

    #@f3
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@f6
    move-result-object v3

    #@f7
    .line 395
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@fa
    .line 399
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@fc
    .line 402
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_a
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@fe
    .line 405
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@100
    const v4, 0x10400e1

    #@103
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@106
    move-result-object v3

    #@107
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@10a
    move-result-object v3

    #@10b
    .line 402
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@10e
    .line 406
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@110
    .line 409
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_b
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@112
    .line 412
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@114
    const v4, 0x10400e2

    #@117
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@11a
    move-result-object v3

    #@11b
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@11e
    move-result-object v3

    #@11f
    .line 409
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@122
    .line 413
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@124
    .line 416
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_c
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@126
    .line 419
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@128
    const v4, 0x10400e3

    #@12b
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@12e
    move-result-object v3

    #@12f
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@132
    move-result-object v3

    #@133
    .line 416
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@136
    .line 420
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@138
    .line 436
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_1
    packed-switch p2, :pswitch_data_1

    #@13b
    .line 462
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@13d
    const-string/jumbo v3, "ERI text"

    #@140
    const/4 v4, -0x1

    #@141
    const/4 v5, -0x1

    #@142
    invoke-direct {v2, p0, v4, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@145
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@147
    .line 438
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_d
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@149
    .line 441
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@14b
    invoke-virtual {v3, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@14e
    move-result-object v3

    #@14f
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@152
    move-result-object v3

    #@153
    .line 438
    invoke-direct {v2, p0, v6, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@156
    .line 443
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@158
    .line 446
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_e
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@15a
    .line 449
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@15c
    const v4, 0x10400d8

    #@15f
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@162
    move-result-object v3

    #@163
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@166
    move-result-object v3

    #@167
    .line 446
    invoke-direct {v2, p0, v5, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@16a
    .line 451
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@16c
    .line 454
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_f
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@16e
    .line 457
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@170
    invoke-virtual {v3, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@173
    move-result-object v3

    #@174
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@177
    move-result-object v3

    #@178
    .line 454
    invoke-direct {v2, p0, v7, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@17b
    .line 459
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@17d
    .line 467
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    #@180
    move-result-object v1

    #@181
    .line 468
    .restart local v1    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    #@184
    move-result-object v0

    #@185
    .line 469
    .local v0, "defEriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v1, :cond_4

    #@187
    .line 474
    if-nez v0, :cond_3

    #@189
    .line 475
    const-string/jumbo v3, "EriManager"

    #@18c
    new-instance v4, Ljava/lang/StringBuilder;

    #@18e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@191
    const-string/jumbo v5, "ERI defRoamInd "

    #@194
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v4

    #@198
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v4

    #@19c
    .line 476
    const-string/jumbo v5, " not found in ERI file ...on"

    #@19f
    .line 475
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v4

    #@1a3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a6
    move-result-object v4

    #@1a7
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1aa
    .line 477
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@1ac
    .line 480
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@1ae
    invoke-virtual {v3, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@1b1
    move-result-object v3

    #@1b2
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1b5
    move-result-object v3

    #@1b6
    .line 477
    invoke-direct {v2, p0, v6, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@1b9
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@1bb
    .line 487
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@1bd
    .line 488
    iget v3, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    #@1bf
    .line 489
    iget v4, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    #@1c1
    .line 490
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    #@1c3
    .line 487
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@1c6
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@1c8
    .line 494
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_4
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@1ca
    .line 495
    iget v3, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    #@1cc
    .line 496
    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    #@1ce
    .line 497
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    #@1d0
    .line 494
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@1d3
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@1d5
    .line 327
    nop

    #@1d6
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    #@1f4
    .line 436
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .locals 2
    .param p1, "roamingIndicator"    # I

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@10
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    #@12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/internal/telephony/cdma/EriInfo;

    #@1c
    return-object v0

    #@1d
    .line 307
    :cond_0
    const/4 v0, 0x0

    #@1e
    return-object v0
.end method

.method private loadEriFileFromFileSystem()V
    .locals 0

    #@0
    .prologue
    .line 148
    return-void
.end method

.method private loadEriFileFromModem()V
    .locals 0

    #@0
    .prologue
    .line 138
    return-void
.end method

.method private loadEriFileFromXml()V
    .locals 27

    #@0
    .prologue
    .line 157
    const/16 v20, 0x0

    #@2
    .line 158
    .local v20, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v22, 0x0

    #@4
    .line 159
    .local v22, "stream":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v21

    #@c
    .line 162
    .local v21, "r":Landroid/content/res/Resources;
    :try_start_0
    const-string/jumbo v3, "EriManager"

    #@f
    const-string/jumbo v25, "loadEriFileFromXml: check for alternate file"

    #@12
    move-object/from16 v0, v25

    #@14
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 163
    new-instance v23, Ljava/io/FileInputStream;

    #@19
    .line 164
    const v3, 0x104046b

    #@1c
    move-object/from16 v0, v21

    #@1e
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 163
    move-object/from16 v0, v23

    #@24
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 165
    .end local v22    # "stream":Ljava/io/FileInputStream;
    .local v23, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@2a
    move-result-object v20

    #@2b
    .line 166
    .local v20, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    #@2c
    move-object/from16 v0, v20

    #@2e
    move-object/from16 v1, v23

    #@30
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@33
    .line 167
    const-string/jumbo v3, "EriManager"

    #@36
    const-string/jumbo v25, "loadEriFileFromXml: opened alternate file"

    #@39
    move-object/from16 v0, v25

    #@3b
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8

    #@3e
    move-object/from16 v22, v23

    #@40
    .line 176
    .end local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "stream":Ljava/io/FileInputStream;
    :goto_0
    if-nez v20, :cond_2

    #@42
    .line 177
    const/16 v16, 0x0

    #@44
    .line 180
    .local v16, "eriFile":Ljava/lang/String;
    move-object/from16 v0, p0

    #@46
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@48
    const-string/jumbo v25, "carrier_config"

    #@4b
    move-object/from16 v0, v25

    #@4d
    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@50
    move-result-object v11

    #@51
    .line 179
    check-cast v11, Landroid/telephony/CarrierConfigManager;

    #@53
    .line 181
    .local v11, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v11, :cond_0

    #@55
    .line 182
    move-object/from16 v0, p0

    #@57
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    #@59
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@5c
    move-result v3

    #@5d
    invoke-virtual {v11, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@60
    move-result-object v10

    #@61
    .line 183
    .local v10, "b":Landroid/os/PersistableBundle;
    if-eqz v10, :cond_0

    #@63
    .line 184
    const-string/jumbo v3, "carrier_eri_file_name_string"

    #@66
    invoke-virtual {v10, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@69
    move-result-object v16

    #@6a
    .line 188
    .end local v10    # "b":Landroid/os/PersistableBundle;
    .end local v16    # "eriFile":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "EriManager"

    #@6d
    new-instance v25, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v26, "eriFile = "

    #@75
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v25

    #@79
    move-object/from16 v0, v25

    #@7b
    move-object/from16 v1, v16

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v25

    #@81
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v25

    #@85
    move-object/from16 v0, v25

    #@87
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 190
    if-nez v16, :cond_1

    #@8c
    .line 191
    const-string/jumbo v3, "EriManager"

    #@8f
    const-string/jumbo v25, "loadEriFileFromXml: Can\'t find ERI file to load"

    #@92
    move-object/from16 v0, v25

    #@94
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 192
    return-void

    #@98
    .line 171
    .end local v11    # "configManager":Landroid/telephony/CarrierConfigManager;
    .local v20, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v15

    #@99
    .line 172
    .end local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "stream":Ljava/io/FileInputStream;
    .local v15, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    const-string/jumbo v3, "EriManager"

    #@9c
    const-string/jumbo v25, "loadEriFileFromXml: no parser for alternate file"

    #@9f
    move-object/from16 v0, v25

    #@a1
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a4
    .line 173
    const/16 v20, 0x0

    #@a6
    .restart local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_0

    #@a7
    .line 168
    .end local v15    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v22    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v12

    #@a8
    .line 169
    .end local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "stream":Ljava/io/FileInputStream;
    .local v12, "e":Ljava/io/FileNotFoundException;
    :goto_2
    const-string/jumbo v3, "EriManager"

    #@ab
    const-string/jumbo v25, "loadEriFileFromXml: no alternate file"

    #@ae
    move-object/from16 v0, v25

    #@b0
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    .line 170
    const/16 v20, 0x0

    #@b5
    .restart local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_0

    #@b6
    .line 196
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .end local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@b9
    move-result-object v20

    #@ba
    .line 197
    .local v20, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p0

    #@bc
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@be
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    #@c1
    move-result-object v3

    #@c2
    move-object/from16 v0, v16

    #@c4
    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    #@c7
    move-result-object v3

    #@c8
    const/16 v25, 0x0

    #@ca
    move-object/from16 v0, v20

    #@cc
    move-object/from16 v1, v25

    #@ce
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    #@d1
    .line 205
    .end local v11    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :goto_3
    :try_start_3
    const-string/jumbo v3, "EriFile"

    #@d4
    move-object/from16 v0, v20

    #@d6
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@d9
    .line 206
    move-object/from16 v0, p0

    #@db
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@dd
    .line 207
    const-string/jumbo v25, "VersionNumber"

    #@e0
    const/16 v26, 0x0

    #@e2
    move-object/from16 v0, v20

    #@e4
    move-object/from16 v1, v26

    #@e6
    move-object/from16 v2, v25

    #@e8
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@eb
    move-result-object v25

    #@ec
    .line 206
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@ef
    move-result v25

    #@f0
    move/from16 v0, v25

    #@f2
    iput v0, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    #@f4
    .line 208
    move-object/from16 v0, p0

    #@f6
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@f8
    .line 209
    const-string/jumbo v25, "NumberOfEriEntries"

    #@fb
    const/16 v26, 0x0

    #@fd
    move-object/from16 v0, v20

    #@ff
    move-object/from16 v1, v26

    #@101
    move-object/from16 v2, v25

    #@103
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@106
    move-result-object v25

    #@107
    .line 208
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10a
    move-result v25

    #@10b
    move/from16 v0, v25

    #@10d
    iput v0, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    #@10f
    .line 210
    move-object/from16 v0, p0

    #@111
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@113
    .line 211
    const-string/jumbo v25, "EriFileType"

    #@116
    const/16 v26, 0x0

    #@118
    move-object/from16 v0, v20

    #@11a
    move-object/from16 v1, v26

    #@11c
    move-object/from16 v2, v25

    #@11e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@121
    move-result-object v25

    #@122
    .line 210
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@125
    move-result v25

    #@126
    move/from16 v0, v25

    #@128
    iput v0, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    #@12a
    .line 213
    const/16 v19, 0x0

    #@12c
    .line 215
    .local v19, "parsedEriEntries":I
    :cond_3
    :goto_4
    invoke-static/range {v20 .. v20}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@12f
    .line 216
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@132
    move-result-object v18

    #@133
    .line 217
    .local v18, "name":Ljava/lang/String;
    if-nez v18, :cond_7

    #@135
    .line 218
    move-object/from16 v0, p0

    #@137
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@139
    iget v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    #@13b
    move/from16 v0, v19

    #@13d
    if-eq v0, v3, :cond_4

    #@13f
    .line 219
    const-string/jumbo v3, "EriManager"

    #@142
    new-instance v25, Ljava/lang/StringBuilder;

    #@144
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v26, "Error Parsing ERI file: "

    #@14a
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v25

    #@14e
    move-object/from16 v0, p0

    #@150
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@152
    move-object/from16 v26, v0

    #@154
    move-object/from16 v0, v26

    #@156
    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    #@158
    move/from16 v26, v0

    #@15a
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v25

    #@15e
    .line 220
    const-string/jumbo v26, " defined, "

    #@161
    .line 219
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v25

    #@165
    move-object/from16 v0, v25

    #@167
    move/from16 v1, v19

    #@169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v25

    #@16d
    .line 220
    const-string/jumbo v26, " parsed!"

    #@170
    .line 219
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v25

    #@174
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v25

    #@178
    move-object/from16 v0, v25

    #@17a
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17d
    .line 246
    :cond_4
    const-string/jumbo v3, "EriManager"

    #@180
    new-instance v25, Ljava/lang/StringBuilder;

    #@182
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@185
    const-string/jumbo v26, "loadEriFileFromXml: eri parsing successful, file loaded. ver = "

    #@188
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v25

    #@18c
    .line 247
    move-object/from16 v0, p0

    #@18e
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@190
    move-object/from16 v26, v0

    #@192
    move-object/from16 v0, v26

    #@194
    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    #@196
    move/from16 v26, v0

    #@198
    .line 246
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v25

    #@19c
    .line 247
    const-string/jumbo v26, ", # of entries = "

    #@19f
    .line 246
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v25

    #@1a3
    .line 247
    move-object/from16 v0, p0

    #@1a5
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@1a7
    move-object/from16 v26, v0

    #@1a9
    move-object/from16 v0, v26

    #@1ab
    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    #@1ad
    move/from16 v26, v0

    #@1af
    .line 246
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v25

    #@1b3
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b6
    move-result-object v25

    #@1b7
    move-object/from16 v0, v25

    #@1b9
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1bc
    .line 249
    const/4 v3, 0x1

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1c1
    .line 254
    move-object/from16 v0, v20

    #@1c3
    instance-of v3, v0, Landroid/content/res/XmlResourceParser;

    #@1c5
    if-eqz v3, :cond_5

    #@1c7
    .line 255
    check-cast v20, Landroid/content/res/XmlResourceParser;

    #@1c9
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->close()V

    #@1cc
    .line 258
    :cond_5
    if-eqz v22, :cond_6

    #@1ce
    .line 259
    :try_start_4
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    #@1d1
    .line 156
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "parsedEriEntries":I
    :cond_6
    :goto_5
    return-void

    #@1d2
    .line 198
    .restart local v11    # "configManager":Landroid/telephony/CarrierConfigManager;
    :catch_2
    move-exception v14

    #@1d3
    .line 199
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EriManager"

    #@1d6
    new-instance v25, Ljava/lang/StringBuilder;

    #@1d8
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@1db
    const-string/jumbo v26, "loadEriFileFromXml: no parser for "

    #@1de
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v25

    #@1e2
    move-object/from16 v0, v25

    #@1e4
    move-object/from16 v1, v16

    #@1e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v25

    #@1ea
    .line 200
    const-string/jumbo v26, ". Exception = "

    #@1ed
    .line 199
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v25

    #@1f1
    .line 200
    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@1f4
    move-result-object v26

    #@1f5
    .line 199
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v25

    #@1f9
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fc
    move-result-object v25

    #@1fd
    move-object/from16 v0, v25

    #@1ff
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@202
    goto/16 :goto_3

    #@204
    .line 222
    .end local v11    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "parsedEriEntries":I
    :cond_7
    :try_start_5
    const-string/jumbo v3, "CallPromptId"

    #@207
    move-object/from16 v0, v18

    #@209
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20c
    move-result v3

    #@20d
    if-eqz v3, :cond_c

    #@20f
    .line 223
    const-string/jumbo v3, "Id"

    #@212
    const/16 v25, 0x0

    #@214
    move-object/from16 v0, v20

    #@216
    move-object/from16 v1, v25

    #@218
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21b
    move-result-object v3

    #@21c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@21f
    move-result v17

    #@220
    .line 224
    .local v17, "id":I
    const-string/jumbo v3, "CallPromptText"

    #@223
    const/16 v25, 0x0

    #@225
    move-object/from16 v0, v20

    #@227
    move-object/from16 v1, v25

    #@229
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@22c
    move-result-object v24

    #@22d
    .line 225
    .local v24, "text":Ljava/lang/String;
    if-ltz v17, :cond_9

    #@22f
    const/4 v3, 0x2

    #@230
    move/from16 v0, v17

    #@232
    if-gt v0, v3, :cond_9

    #@234
    .line 226
    move-object/from16 v0, p0

    #@236
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@238
    iget-object v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    #@23a
    aput-object v24, v3, v17
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@23c
    goto/16 :goto_4

    #@23e
    .line 251
    .end local v17    # "id":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "parsedEriEntries":I
    .end local v24    # "text":Ljava/lang/String;
    :catch_3
    move-exception v14

    #@23f
    .line 252
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v3, "EriManager"

    #@242
    const-string/jumbo v25, "Got exception while loading ERI file."

    #@245
    move-object/from16 v0, v25

    #@247
    invoke-static {v3, v0, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@24a
    .line 254
    move-object/from16 v0, v20

    #@24c
    instance-of v3, v0, Landroid/content/res/XmlResourceParser;

    #@24e
    if-eqz v3, :cond_8

    #@250
    .line 255
    check-cast v20, Landroid/content/res/XmlResourceParser;

    #@252
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->close()V

    #@255
    .line 258
    :cond_8
    if-eqz v22, :cond_6

    #@257
    .line 259
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@25a
    goto/16 :goto_5

    #@25c
    .line 261
    :catch_4
    move-exception v13

    #@25d
    .local v13, "e":Ljava/io/IOException;
    goto/16 :goto_5

    #@25f
    .line 228
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v17    # "id":I
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "parsedEriEntries":I
    .restart local v24    # "text":Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string/jumbo v3, "EriManager"

    #@262
    new-instance v25, Ljava/lang/StringBuilder;

    #@264
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@267
    const-string/jumbo v26, "Error Parsing ERI file: found"

    #@26a
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v25

    #@26e
    move-object/from16 v0, v25

    #@270
    move/from16 v1, v17

    #@272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@275
    move-result-object v25

    #@276
    const-string/jumbo v26, " CallPromptId"

    #@279
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27c
    move-result-object v25

    #@27d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@280
    move-result-object v25

    #@281
    move-object/from16 v0, v25

    #@283
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@286
    goto/16 :goto_4

    #@288
    .line 253
    .end local v17    # "id":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "parsedEriEntries":I
    .end local v24    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@289
    .line 254
    move-object/from16 v0, v20

    #@28b
    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    #@28d
    move/from16 v25, v0

    #@28f
    if-eqz v25, :cond_a

    #@291
    .line 255
    check-cast v20, Landroid/content/res/XmlResourceParser;

    #@293
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->close()V

    #@296
    .line 258
    :cond_a
    if-eqz v22, :cond_b

    #@298
    .line 259
    :try_start_9
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    #@29b
    .line 253
    :cond_b
    :goto_6
    throw v3

    #@29c
    .line 231
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "parsedEriEntries":I
    :cond_c
    :try_start_a
    const-string/jumbo v3, "EriInfo"

    #@29f
    move-object/from16 v0, v18

    #@2a1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a4
    move-result v3

    #@2a5
    if-eqz v3, :cond_3

    #@2a7
    .line 233
    const-string/jumbo v3, "RoamingIndicator"

    #@2aa
    const/16 v25, 0x0

    #@2ac
    move-object/from16 v0, v20

    #@2ae
    move-object/from16 v1, v25

    #@2b0
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2b3
    move-result-object v3

    #@2b4
    .line 232
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2b7
    move-result v4

    #@2b8
    .line 234
    .local v4, "roamingIndicator":I
    const-string/jumbo v3, "IconIndex"

    #@2bb
    const/16 v25, 0x0

    #@2bd
    move-object/from16 v0, v20

    #@2bf
    move-object/from16 v1, v25

    #@2c1
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2c4
    move-result-object v3

    #@2c5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2c8
    move-result v5

    #@2c9
    .line 235
    .local v5, "iconIndex":I
    const-string/jumbo v3, "IconMode"

    #@2cc
    const/16 v25, 0x0

    #@2ce
    move-object/from16 v0, v20

    #@2d0
    move-object/from16 v1, v25

    #@2d2
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d5
    move-result-object v3

    #@2d6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2d9
    move-result v6

    #@2da
    .line 236
    .local v6, "iconMode":I
    const-string/jumbo v3, "EriText"

    #@2dd
    const/16 v25, 0x0

    #@2df
    move-object/from16 v0, v20

    #@2e1
    move-object/from16 v1, v25

    #@2e3
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e6
    move-result-object v7

    #@2e7
    .line 238
    .local v7, "eriText":Ljava/lang/String;
    const-string/jumbo v3, "CallPromptId"

    #@2ea
    const/16 v25, 0x0

    #@2ec
    move-object/from16 v0, v20

    #@2ee
    move-object/from16 v1, v25

    #@2f0
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f3
    move-result-object v3

    #@2f4
    .line 237
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f7
    move-result v8

    #@2f8
    .line 239
    .local v8, "callPromptId":I
    const-string/jumbo v3, "AlertId"

    #@2fb
    const/16 v25, 0x0

    #@2fd
    move-object/from16 v0, v20

    #@2ff
    move-object/from16 v1, v25

    #@301
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@304
    move-result-object v3

    #@305
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@308
    move-result v9

    #@309
    .line 240
    .local v9, "alertId":I
    add-int/lit8 v19, v19, 0x1

    #@30b
    .line 241
    move-object/from16 v0, p0

    #@30d
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@30f
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    #@311
    move-object/from16 v25, v0

    #@313
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@316
    move-result-object v26

    #@317
    new-instance v3, Lcom/android/internal/telephony/cdma/EriInfo;

    #@319
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    #@31c
    move-object/from16 v0, v25

    #@31e
    move-object/from16 v1, v26

    #@320
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@323
    goto/16 :goto_4

    #@325
    .line 261
    .end local v4    # "roamingIndicator":I
    .end local v5    # "iconIndex":I
    .end local v6    # "iconMode":I
    .end local v7    # "eriText":Ljava/lang/String;
    .end local v8    # "callPromptId":I
    .end local v9    # "alertId":I
    :catch_5
    move-exception v13

    #@326
    .restart local v13    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    #@328
    .end local v13    # "e":Ljava/io/IOException;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "parsedEriEntries":I
    :catch_6
    move-exception v13

    #@329
    .restart local v13    # "e":Ljava/io/IOException;
    goto/16 :goto_6

    #@32b
    .line 168
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v12

    #@32c
    .restart local v12    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v22, v23

    #@32e
    .end local v23    # "stream":Ljava/io/FileInputStream;
    .local v22, "stream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    #@330
    .line 171
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .end local v22    # "stream":Ljava/io/FileInputStream;
    .restart local v23    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v15

    #@331
    .restart local v15    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v22, v23

    #@333
    .end local v23    # "stream":Ljava/io/FileInputStream;
    .restart local v22    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 110
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@7
    .line 111
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    #@a
    .line 109
    return-void
.end method

.method public getCdmaEriIconIndex(II)I
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    #@0
    .prologue
    .line 507
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    #@6
    return v0
.end method

.method public getCdmaEriIconMode(II)I
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    #@0
    .prologue
    .line 511
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    #@6
    return v0
.end method

.method public getCdmaEriText(II)Ljava/lang/String;
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    #@0
    .prologue
    .line 515
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public getEriFileType()I
    .locals 1

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@2
    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    #@4
    return v0
.end method

.method public getEriFileVersion()I
    .locals 1

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@2
    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    #@4
    return v0
.end method

.method public getEriNumberOfEntries()I
    .locals 1

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@2
    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    #@4
    return v0
.end method

.method public isEriFileLoaded()Z
    .locals 1

    #@0
    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    #@2
    return v0
.end method

.method public loadEriFile()V
    .locals 1

    #@0
    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    #@8
    .line 115
    :goto_0
    return-void

    #@9
    .line 118
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    #@c
    goto :goto_0

    #@d
    .line 122
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    #@10
    goto :goto_0

    #@11
    .line 116
    nop

    #@12
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
