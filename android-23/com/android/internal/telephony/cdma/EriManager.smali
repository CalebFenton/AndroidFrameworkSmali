.class public final Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;,
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final ERI_FROM_FILE_SYSTEM:I = 0x1

.field static final ERI_FROM_MODEM:I = 0x2

.field static final ERI_FROM_XML:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final VDBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private mEriFileSource:I

.field private mIsEriFileLoaded:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "eriFileSource"    # I

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    #@6
    .line 100
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@8
    .line 101
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    #@a
    .line 102
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@c
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@11
    .line 99
    return-void
.end method

.method private getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .locals 10
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    #@0
    .prologue
    const v9, 0x10400b9

    #@3
    const v8, 0x10400b7

    #@6
    const/4 v7, 0x2

    #@7
    const/4 v5, 0x1

    #@8
    const/4 v6, 0x0

    #@9
    .line 286
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 287
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    #@10
    move-result-object v1

    #@11
    .line 288
    .local v1, "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    if-eqz v1, :cond_0

    #@13
    .line 290
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@15
    .line 291
    iget v3, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    #@17
    .line 292
    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    #@19
    .line 293
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    #@1b
    .line 290
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@1e
    .line 294
    .local v2, "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    return-object v2

    #@1f
    .line 298
    .end local v1    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@22
    .line 395
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    #@24
    if-nez v3, :cond_2

    #@26
    .line 397
    const-string/jumbo v3, "CDMA"

    #@29
    const-string/jumbo v4, "ERI File not loaded"

    #@2c
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 398
    if-le p2, v7, :cond_1

    #@31
    .line 400
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@33
    .line 403
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
    .line 400
    invoke-direct {v2, p0, v7, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@40
    .line 474
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :goto_0
    return-object v2

    #@41
    .line 301
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_0
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@43
    .line 304
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
    .line 301
    invoke-direct {v2, p0, v6, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@50
    .line 305
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@51
    .line 308
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_1
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@53
    .line 311
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@55
    const v4, 0x10400b8

    #@58
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@5b
    move-result-object v3

    #@5c
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    .line 308
    invoke-direct {v2, p0, v5, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@63
    .line 312
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@64
    .line 315
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_2
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@66
    .line 318
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
    .line 315
    invoke-direct {v2, p0, v7, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@73
    .line 319
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@74
    .line 324
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_3
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@76
    .line 327
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@78
    const v4, 0x10400ba

    #@7b
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7e
    move-result-object v3

    #@7f
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    .line 324
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@86
    .line 328
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@87
    .line 331
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_4
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@89
    .line 334
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@8b
    const v4, 0x10400bb

    #@8e
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@91
    move-result-object v3

    #@92
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@95
    move-result-object v3

    #@96
    .line 331
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@99
    .line 335
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@9a
    .line 338
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_5
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@9c
    .line 341
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@9e
    const v4, 0x10400bc

    #@a1
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@a4
    move-result-object v3

    #@a5
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@a8
    move-result-object v3

    #@a9
    .line 338
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@ac
    .line 342
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@ad
    .line 345
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_6
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@af
    .line 348
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@b1
    const v4, 0x10400bd

    #@b4
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@b7
    move-result-object v3

    #@b8
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@bb
    move-result-object v3

    #@bc
    .line 345
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@bf
    .line 349
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    #@c0
    .line 352
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_7
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@c2
    .line 355
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@c4
    const v4, 0x10400be

    #@c7
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@ca
    move-result-object v3

    #@cb
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@ce
    move-result-object v3

    #@cf
    .line 352
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@d2
    .line 356
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@d4
    .line 359
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_8
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@d6
    .line 362
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@d8
    const v4, 0x10400bf

    #@db
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@de
    move-result-object v3

    #@df
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@e2
    move-result-object v3

    #@e3
    .line 359
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@e6
    .line 363
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@e8
    .line 366
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_9
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@ea
    .line 369
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@ec
    const v4, 0x10400c0

    #@ef
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@f2
    move-result-object v3

    #@f3
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@f6
    move-result-object v3

    #@f7
    .line 366
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@fa
    .line 370
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@fc
    .line 373
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_a
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@fe
    .line 376
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@100
    const v4, 0x10400c1

    #@103
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@106
    move-result-object v3

    #@107
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@10a
    move-result-object v3

    #@10b
    .line 373
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@10e
    .line 377
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@110
    .line 380
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_b
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@112
    .line 383
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@114
    const v4, 0x10400c2

    #@117
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@11a
    move-result-object v3

    #@11b
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@11e
    move-result-object v3

    #@11f
    .line 380
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@122
    .line 384
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@124
    .line 387
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_c
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@126
    .line 390
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@128
    const v4, 0x10400c3

    #@12b
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@12e
    move-result-object v3

    #@12f
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@132
    move-result-object v3

    #@133
    .line 387
    invoke-direct {v2, p0, p1, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@136
    .line 391
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@138
    .line 407
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_1
    packed-switch p2, :pswitch_data_1

    #@13b
    .line 433
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
    .line 409
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_d
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@149
    .line 412
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
    .line 409
    invoke-direct {v2, p0, v6, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@156
    .line 414
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@158
    .line 417
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_e
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@15a
    .line 420
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@15c
    const v4, 0x10400b8

    #@15f
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@162
    move-result-object v3

    #@163
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@166
    move-result-object v3

    #@167
    .line 417
    invoke-direct {v2, p0, v5, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@16a
    .line 422
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@16c
    .line 425
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_f
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@16e
    .line 428
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
    .line 425
    invoke-direct {v2, p0, v7, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@17b
    .line 430
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@17d
    .line 438
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    #@180
    move-result-object v1

    #@181
    .line 439
    .restart local v1    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    #@184
    move-result-object v0

    #@185
    .line 440
    .local v0, "defEriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v1, :cond_4

    #@187
    .line 445
    if-nez v0, :cond_3

    #@189
    .line 446
    const-string/jumbo v3, "CDMA"

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
    .line 447
    const-string/jumbo v5, " not found in ERI file ...on"

    #@19f
    .line 446
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
    .line 448
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@1ac
    .line 451
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
    .line 448
    invoke-direct {v2, p0, v6, v6, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@1b9
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@1bb
    .line 458
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@1bd
    .line 459
    iget v3, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    #@1bf
    .line 460
    iget v4, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    #@1c1
    .line 461
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    #@1c3
    .line 458
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@1c6
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@1c8
    .line 465
    .end local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_4
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    #@1ca
    .line 466
    iget v3, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    #@1cc
    .line 467
    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    #@1ce
    .line 468
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    #@1d0
    .line 465
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    #@1d3
    .restart local v2    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    #@1d5
    .line 298
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
    .line 407
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
    .line 275
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
    .line 276
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
    .line 278
    :cond_0
    const/4 v0, 0x0

    #@1e
    return-object v0
.end method

.method private loadEriFileFromFileSystem()V
    .locals 0

    #@0
    .prologue
    .line 144
    return-void
.end method

.method private loadEriFileFromModem()V
    .locals 0

    #@0
    .prologue
    .line 134
    return-void
.end method

.method private loadEriFileFromXml()V
    .locals 24

    #@0
    .prologue
    .line 153
    const/16 v17, 0x0

    #@2
    .line 154
    .local v17, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v19, 0x0

    #@4
    .line 155
    .local v19, "stream":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v18

    #@c
    .line 158
    .local v18, "r":Landroid/content/res/Resources;
    :try_start_0
    const-string/jumbo v3, "CDMA"

    #@f
    const-string/jumbo v22, "loadEriFileFromXml: check for alternate file"

    #@12
    move-object/from16 v0, v22

    #@14
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 159
    new-instance v20, Ljava/io/FileInputStream;

    #@19
    .line 160
    const v3, 0x1040430

    #@1c
    move-object/from16 v0, v18

    #@1e
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 159
    move-object/from16 v0, v20

    #@24
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 161
    .end local v19    # "stream":Ljava/io/FileInputStream;
    .local v20, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@2a
    move-result-object v17

    #@2b
    .line 162
    .local v17, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    #@2c
    move-object/from16 v0, v17

    #@2e
    move-object/from16 v1, v20

    #@30
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@33
    .line 163
    const-string/jumbo v3, "CDMA"

    #@36
    const-string/jumbo v22, "loadEriFileFromXml: opened alternate file"

    #@39
    move-object/from16 v0, v22

    #@3b
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7

    #@3e
    move-object/from16 v19, v20

    #@40
    .line 172
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "stream":Ljava/io/FileInputStream;
    :goto_0
    if-nez v17, :cond_0

    #@42
    .line 173
    const-string/jumbo v3, "CDMA"

    #@45
    const-string/jumbo v22, "loadEriFileFromXml: open normal file"

    #@48
    move-object/from16 v0, v22

    #@4a
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 174
    const v3, 0x1110005

    #@50
    move-object/from16 v0, v18

    #@52
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@55
    move-result-object v17

    #@56
    .line 178
    :cond_0
    :try_start_2
    const-string/jumbo v3, "EriFile"

    #@59
    move-object/from16 v0, v17

    #@5b
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@5e
    .line 179
    move-object/from16 v0, p0

    #@60
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@62
    .line 180
    const-string/jumbo v22, "VersionNumber"

    #@65
    const/16 v23, 0x0

    #@67
    move-object/from16 v0, v17

    #@69
    move-object/from16 v1, v23

    #@6b
    move-object/from16 v2, v22

    #@6d
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@70
    move-result-object v22

    #@71
    .line 179
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@74
    move-result v22

    #@75
    move/from16 v0, v22

    #@77
    iput v0, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    #@79
    .line 181
    move-object/from16 v0, p0

    #@7b
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@7d
    .line 182
    const-string/jumbo v22, "NumberOfEriEntries"

    #@80
    const/16 v23, 0x0

    #@82
    move-object/from16 v0, v17

    #@84
    move-object/from16 v1, v23

    #@86
    move-object/from16 v2, v22

    #@88
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8b
    move-result-object v22

    #@8c
    .line 181
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@8f
    move-result v22

    #@90
    move/from16 v0, v22

    #@92
    iput v0, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    #@94
    .line 183
    move-object/from16 v0, p0

    #@96
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@98
    .line 184
    const-string/jumbo v22, "EriFileType"

    #@9b
    const/16 v23, 0x0

    #@9d
    move-object/from16 v0, v17

    #@9f
    move-object/from16 v1, v23

    #@a1
    move-object/from16 v2, v22

    #@a3
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a6
    move-result-object v22

    #@a7
    .line 183
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@aa
    move-result v22

    #@ab
    move/from16 v0, v22

    #@ad
    iput v0, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    #@af
    .line 186
    const/16 v16, 0x0

    #@b1
    .line 188
    .local v16, "parsedEriEntries":I
    :cond_1
    :goto_1
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@b4
    .line 189
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b7
    move-result-object v15

    #@b8
    .line 190
    .local v15, "name":Ljava/lang/String;
    if-nez v15, :cond_5

    #@ba
    .line 191
    move-object/from16 v0, p0

    #@bc
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@be
    iget v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    #@c0
    move/from16 v0, v16

    #@c2
    if-eq v0, v3, :cond_2

    #@c4
    .line 192
    const-string/jumbo v3, "CDMA"

    #@c7
    new-instance v22, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v23, "Error Parsing ERI file: "

    #@cf
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v22

    #@d3
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@d7
    move-object/from16 v23, v0

    #@d9
    move-object/from16 v0, v23

    #@db
    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    #@dd
    move/from16 v23, v0

    #@df
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v22

    #@e3
    .line 193
    const-string/jumbo v23, " defined, "

    #@e6
    .line 192
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v22

    #@ea
    move-object/from16 v0, v22

    #@ec
    move/from16 v1, v16

    #@ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v22

    #@f2
    .line 193
    const-string/jumbo v23, " parsed!"

    #@f5
    .line 192
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v22

    #@f9
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object v22

    #@fd
    move-object/from16 v0, v22

    #@ff
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    .line 219
    :cond_2
    const-string/jumbo v3, "CDMA"

    #@105
    const-string/jumbo v22, "loadEriFileFromXml: eri parsing successful, file loaded"

    #@108
    move-object/from16 v0, v22

    #@10a
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10d
    .line 220
    const/4 v3, 0x1

    #@10e
    move-object/from16 v0, p0

    #@110
    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@112
    .line 225
    move-object/from16 v0, v17

    #@114
    instance-of v3, v0, Landroid/content/res/XmlResourceParser;

    #@116
    if-eqz v3, :cond_3

    #@118
    .line 226
    check-cast v17, Landroid/content/res/XmlResourceParser;

    #@11a
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    #@11d
    .line 229
    :cond_3
    if-eqz v19, :cond_4

    #@11f
    .line 230
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    #@122
    .line 152
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "parsedEriEntries":I
    :cond_4
    :goto_2
    return-void

    #@123
    .line 167
    .local v17, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v13

    #@124
    .line 168
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "stream":Ljava/io/FileInputStream;
    .local v13, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    const-string/jumbo v3, "CDMA"

    #@127
    const-string/jumbo v22, "loadEriFileFromXml: no parser for alternate file"

    #@12a
    move-object/from16 v0, v22

    #@12c
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12f
    .line 169
    const/16 v17, 0x0

    #@131
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto/16 :goto_0

    #@133
    .line 164
    .end local v13    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v19    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    #@134
    .line 165
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "stream":Ljava/io/FileInputStream;
    .local v10, "e":Ljava/io/FileNotFoundException;
    :goto_4
    const-string/jumbo v3, "CDMA"

    #@137
    const-string/jumbo v22, "loadEriFileFromXml: no alternate file"

    #@13a
    move-object/from16 v0, v22

    #@13c
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13f
    .line 166
    const/16 v17, 0x0

    #@141
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto/16 :goto_0

    #@143
    .line 195
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "parsedEriEntries":I
    :cond_5
    :try_start_4
    const-string/jumbo v3, "CallPromptId"

    #@146
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@149
    move-result v3

    #@14a
    if-eqz v3, :cond_a

    #@14c
    .line 196
    const-string/jumbo v3, "Id"

    #@14f
    const/16 v22, 0x0

    #@151
    move-object/from16 v0, v17

    #@153
    move-object/from16 v1, v22

    #@155
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@158
    move-result-object v3

    #@159
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@15c
    move-result v14

    #@15d
    .line 197
    .local v14, "id":I
    const-string/jumbo v3, "CallPromptText"

    #@160
    const/16 v22, 0x0

    #@162
    move-object/from16 v0, v17

    #@164
    move-object/from16 v1, v22

    #@166
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@169
    move-result-object v21

    #@16a
    .line 198
    .local v21, "text":Ljava/lang/String;
    if-ltz v14, :cond_7

    #@16c
    const/4 v3, 0x2

    #@16d
    if-gt v14, v3, :cond_7

    #@16f
    .line 199
    move-object/from16 v0, p0

    #@171
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@173
    iget-object v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    #@175
    aput-object v21, v3, v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@177
    goto/16 :goto_1

    #@179
    .line 222
    .end local v14    # "id":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "parsedEriEntries":I
    .end local v21    # "text":Ljava/lang/String;
    :catch_2
    move-exception v12

    #@17a
    .line 223
    .local v12, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v3, "CDMA"

    #@17d
    const-string/jumbo v22, "Got exception while loading ERI file."

    #@180
    move-object/from16 v0, v22

    #@182
    invoke-static {v3, v0, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@185
    .line 225
    move-object/from16 v0, v17

    #@187
    instance-of v3, v0, Landroid/content/res/XmlResourceParser;

    #@189
    if-eqz v3, :cond_6

    #@18b
    .line 226
    check-cast v17, Landroid/content/res/XmlResourceParser;

    #@18d
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    #@190
    .line 229
    :cond_6
    if-eqz v19, :cond_4

    #@192
    .line 230
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@195
    goto :goto_2

    #@196
    .line 232
    :catch_3
    move-exception v11

    #@197
    .local v11, "e":Ljava/io/IOException;
    goto :goto_2

    #@198
    .line 201
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v14    # "id":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "parsedEriEntries":I
    .restart local v21    # "text":Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string/jumbo v3, "CDMA"

    #@19b
    new-instance v22, Ljava/lang/StringBuilder;

    #@19d
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1a0
    const-string/jumbo v23, "Error Parsing ERI file: found"

    #@1a3
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v22

    #@1a7
    move-object/from16 v0, v22

    #@1a9
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v22

    #@1ad
    const-string/jumbo v23, " CallPromptId"

    #@1b0
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v22

    #@1b4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b7
    move-result-object v22

    #@1b8
    move-object/from16 v0, v22

    #@1ba
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1bd
    goto/16 :goto_1

    #@1bf
    .line 224
    .end local v14    # "id":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "parsedEriEntries":I
    .end local v21    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@1c0
    .line 225
    move-object/from16 v0, v17

    #@1c2
    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    #@1c4
    move/from16 v22, v0

    #@1c6
    if-eqz v22, :cond_8

    #@1c8
    .line 226
    check-cast v17, Landroid/content/res/XmlResourceParser;

    #@1ca
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    #@1cd
    .line 229
    :cond_8
    if-eqz v19, :cond_9

    #@1cf
    .line 230
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    #@1d2
    .line 224
    :cond_9
    :goto_5
    throw v3

    #@1d3
    .line 204
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "parsedEriEntries":I
    :cond_a
    :try_start_9
    const-string/jumbo v3, "EriInfo"

    #@1d6
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d9
    move-result v3

    #@1da
    if-eqz v3, :cond_1

    #@1dc
    .line 206
    const-string/jumbo v3, "RoamingIndicator"

    #@1df
    const/16 v22, 0x0

    #@1e1
    move-object/from16 v0, v17

    #@1e3
    move-object/from16 v1, v22

    #@1e5
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e8
    move-result-object v3

    #@1e9
    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1ec
    move-result v4

    #@1ed
    .line 207
    .local v4, "roamingIndicator":I
    const-string/jumbo v3, "IconIndex"

    #@1f0
    const/16 v22, 0x0

    #@1f2
    move-object/from16 v0, v17

    #@1f4
    move-object/from16 v1, v22

    #@1f6
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f9
    move-result-object v3

    #@1fa
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1fd
    move-result v5

    #@1fe
    .line 208
    .local v5, "iconIndex":I
    const-string/jumbo v3, "IconMode"

    #@201
    const/16 v22, 0x0

    #@203
    move-object/from16 v0, v17

    #@205
    move-object/from16 v1, v22

    #@207
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@20a
    move-result-object v3

    #@20b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@20e
    move-result v6

    #@20f
    .line 209
    .local v6, "iconMode":I
    const-string/jumbo v3, "EriText"

    #@212
    const/16 v22, 0x0

    #@214
    move-object/from16 v0, v17

    #@216
    move-object/from16 v1, v22

    #@218
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21b
    move-result-object v7

    #@21c
    .line 211
    .local v7, "eriText":Ljava/lang/String;
    const-string/jumbo v3, "CallPromptId"

    #@21f
    const/16 v22, 0x0

    #@221
    move-object/from16 v0, v17

    #@223
    move-object/from16 v1, v22

    #@225
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@228
    move-result-object v3

    #@229
    .line 210
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@22c
    move-result v8

    #@22d
    .line 212
    .local v8, "callPromptId":I
    const-string/jumbo v3, "AlertId"

    #@230
    const/16 v22, 0x0

    #@232
    move-object/from16 v0, v17

    #@234
    move-object/from16 v1, v22

    #@236
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@239
    move-result-object v3

    #@23a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@23d
    move-result v9

    #@23e
    .line 213
    .local v9, "alertId":I
    add-int/lit8 v16, v16, 0x1

    #@240
    .line 214
    move-object/from16 v0, p0

    #@242
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@244
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    #@246
    move-object/from16 v22, v0

    #@248
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24b
    move-result-object v23

    #@24c
    new-instance v3, Lcom/android/internal/telephony/cdma/EriInfo;

    #@24e
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    #@251
    move-object/from16 v0, v22

    #@253
    move-object/from16 v1, v23

    #@255
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@258
    goto/16 :goto_1

    #@25a
    .line 232
    .end local v4    # "roamingIndicator":I
    .end local v5    # "iconIndex":I
    .end local v6    # "iconMode":I
    .end local v7    # "eriText":Ljava/lang/String;
    .end local v8    # "callPromptId":I
    .end local v9    # "alertId":I
    :catch_4
    move-exception v11

    #@25b
    .restart local v11    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    #@25d
    .end local v11    # "e":Ljava/io/IOException;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "parsedEriEntries":I
    :catch_5
    move-exception v11

    #@25e
    .restart local v11    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    #@260
    .line 164
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v20    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v10

    #@261
    .restart local v10    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v19, v20

    #@263
    .end local v20    # "stream":Ljava/io/FileInputStream;
    .local v19, "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    #@265
    .line 167
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v19    # "stream":Ljava/io/FileInputStream;
    .restart local v20    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v13

    #@266
    .restart local v13    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v19, v20

    #@268
    .end local v20    # "stream":Ljava/io/FileInputStream;
    .restart local v19    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method


# virtual methods
.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 106
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    #@7
    .line 107
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    #@a
    .line 105
    return-void
.end method

.method public getCdmaEriIconIndex(II)I
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    #@0
    .prologue
    .line 478
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
    .line 482
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
    .line 486
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
    .line 259
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
    .line 243
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
    .line 251
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
    .line 267
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    #@2
    return v0
.end method

.method public loadEriFile()V
    .locals 1

    #@0
    .prologue
    .line 112
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    #@8
    .line 111
    :goto_0
    return-void

    #@9
    .line 114
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    #@c
    goto :goto_0

    #@d
    .line 118
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    #@10
    goto :goto_0

    #@11
    .line 112
    nop

    #@12
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
