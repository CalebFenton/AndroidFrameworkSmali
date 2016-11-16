.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimSpnLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    #@3
    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 281
    const-string/jumbo v0, "EF_CSIM_SPN"

    #@3
    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v10, 0x0

    #@4
    .line 286
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@6
    check-cast v0, [B

    #@8
    .line 287
    .local v0, "data":[B
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@a
    new-instance v11, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v12, "CSIM_SPN="

    #@12
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v11

    #@16
    .line 288
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@19
    move-result-object v12

    #@1a
    .line 287
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v11

    #@1e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v11

    #@22
    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@25
    .line 291
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@27
    aget-byte v8, v0, v10

    #@29
    and-int/lit8 v8, v8, 0x1

    #@2b
    if-eqz v8, :cond_2

    #@2d
    move v8, v9

    #@2e
    :goto_0
    iput-boolean v8, v11, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    #@30
    .line 293
    aget-byte v2, v0, v9

    #@32
    .line 294
    .local v2, "encoding":I
    const/4 v8, 0x2

    #@33
    aget-byte v3, v0, v8

    #@35
    .line 295
    .local v3, "language":I
    new-array v7, v4, [B

    #@37
    .line 296
    .local v7, "spnData":[B
    array-length v8, v0

    #@38
    add-int/lit8 v8, v8, -0x3

    #@3a
    if-ge v8, v4, :cond_0

    #@3c
    array-length v8, v0

    #@3d
    add-int/lit8 v4, v8, -0x3

    #@3f
    .line 297
    .local v4, "len":I
    :cond_0
    const/4 v8, 0x3

    #@40
    invoke-static {v0, v8, v7, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@43
    .line 300
    const/4 v5, 0x0

    #@44
    .local v5, "numBytes":I
    :goto_1
    array-length v8, v7

    #@45
    if-ge v5, v8, :cond_1

    #@47
    .line 301
    aget-byte v8, v7, v5

    #@49
    and-int/lit16 v8, v8, 0xff

    #@4b
    const/16 v9, 0xff

    #@4d
    if-ne v8, v9, :cond_3

    #@4f
    .line 304
    :cond_1
    if-nez v5, :cond_4

    #@51
    .line 305
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@53
    const-string/jumbo v9, ""

    #@56
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@59
    .line 306
    return-void

    #@5a
    .end local v2    # "encoding":I
    .end local v3    # "language":I
    .end local v4    # "len":I
    .end local v5    # "numBytes":I
    .end local v7    # "spnData":[B
    :cond_2
    move v8, v10

    #@5b
    .line 291
    goto :goto_0

    #@5c
    .line 300
    .restart local v2    # "encoding":I
    .restart local v3    # "language":I
    .restart local v4    # "len":I
    .restart local v5    # "numBytes":I
    .restart local v7    # "spnData":[B
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 309
    :cond_4
    packed-switch v2, :pswitch_data_0

    #@62
    .line 339
    :pswitch_0
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@64
    const-string/jumbo v9, "SPN encoding not supported"

    #@67
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    .line 344
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@6c
    new-instance v9, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v10, "spn="

    #@74
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v9

    #@78
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@7a
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@7d
    move-result-object v10

    #@7e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v9

    #@86
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@89
    .line 345
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@8b
    new-instance v9, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v10, "spnCondition="

    #@93
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v9

    #@97
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@99
    iget-boolean v10, v10, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    #@9b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v9

    #@9f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v9

    #@a3
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@a6
    .line 346
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@a8
    iget-object v8, v8, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@aa
    .line 347
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@ac
    iget-object v9, v9, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@ae
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@b1
    move-result v9

    #@b2
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@b4
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@b7
    move-result-object v10

    #@b8
    .line 346
    invoke-virtual {v8, v9, v10}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@bb
    .line 285
    return-void

    #@bc
    .line 312
    :pswitch_1
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@be
    new-instance v9, Ljava/lang/String;

    #@c0
    const-string/jumbo v10, "ISO-8859-1"

    #@c3
    const/4 v11, 0x0

    #@c4
    invoke-direct {v9, v7, v11, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@c7
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@ca
    goto :goto_2

    #@cb
    .line 341
    :catch_0
    move-exception v1

    #@cc
    .line 342
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@ce
    new-instance v9, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v10, "spn decode error: "

    #@d6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v9

    #@da
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v9

    #@de
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v9

    #@e2
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@e5
    goto :goto_2

    #@e6
    .line 316
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@e8
    .line 317
    mul-int/lit8 v9, v5, 0x8

    #@ea
    div-int/lit8 v9, v9, 0x7

    #@ec
    const/4 v10, 0x0

    #@ed
    invoke-static {v7, v10, v9}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    #@f0
    move-result-object v9

    #@f1
    .line 316
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@f4
    goto/16 :goto_2

    #@f6
    .line 320
    :pswitch_3
    new-instance v6, Ljava/lang/String;

    #@f8
    const-string/jumbo v8, "US-ASCII"

    #@fb
    const/4 v9, 0x0

    #@fc
    invoke-direct {v6, v7, v9, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@ff
    .line 326
    .local v6, "spn":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    #@102
    move-result v8

    #@103
    if-eqz v8, :cond_5

    #@105
    .line 327
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@107
    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@10a
    goto/16 :goto_2

    #@10c
    .line 329
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@10e
    new-instance v9, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v10, "Some corruption in SPN decoding = "

    #@116
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v9

    #@11a
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v9

    #@11e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v9

    #@122
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@125
    .line 330
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@127
    const-string/jumbo v9, "Using ENCODING_GSM_7BIT_ALPHABET scheme..."

    #@12a
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@12d
    .line 331
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@12f
    .line 332
    mul-int/lit8 v9, v5, 0x8

    #@131
    div-int/lit8 v9, v9, 0x7

    #@133
    const/4 v10, 0x0

    #@134
    invoke-static {v7, v10, v9}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    #@137
    move-result-object v9

    #@138
    .line 331
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@13b
    goto/16 :goto_2

    #@13d
    .line 336
    .end local v6    # "spn":Ljava/lang/String;
    :pswitch_4
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@13f
    new-instance v9, Ljava/lang/String;

    #@141
    const-string/jumbo v10, "utf-16"

    #@144
    const/4 v11, 0x0

    #@145
    invoke-direct {v9, v7, v11, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@148
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@14b
    goto/16 :goto_2

    #@14d
    .line 309
    nop

    #@14e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
