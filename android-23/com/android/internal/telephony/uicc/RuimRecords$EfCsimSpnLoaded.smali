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
    .line 276
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
    .line 279
    const-string/jumbo v0, "EF_CSIM_SPN"

    #@3
    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/16 v13, 0x20

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v10, 0x0

    #@4
    .line 284
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@6
    check-cast v0, [B

    #@8
    .line 285
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
    .line 286
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@19
    move-result-object v12

    #@1a
    .line 285
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
    .line 289
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@27
    aget-byte v8, v0, v10

    #@29
    and-int/lit8 v8, v8, 0x1

    #@2b
    if-eqz v8, :cond_1

    #@2d
    move v8, v9

    #@2e
    :goto_0
    iput-boolean v8, v11, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    #@30
    .line 291
    aget-byte v2, v0, v9

    #@32
    .line 292
    .local v2, "encoding":I
    const/4 v8, 0x2

    #@33
    aget-byte v3, v0, v8

    #@35
    .line 293
    .local v3, "language":I
    new-array v7, v13, [B

    #@37
    .line 294
    .local v7, "spnData":[B
    array-length v8, v0

    #@38
    add-int/lit8 v8, v8, -0x3

    #@3a
    if-ge v8, v13, :cond_2

    #@3c
    array-length v8, v0

    #@3d
    add-int/lit8 v4, v8, -0x3

    #@3f
    .line 295
    .local v4, "len":I
    :goto_1
    const/4 v8, 0x3

    #@40
    invoke-static {v0, v8, v7, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@43
    .line 298
    const/4 v5, 0x0

    #@44
    .local v5, "numBytes":I
    :goto_2
    array-length v8, v7

    #@45
    if-ge v5, v8, :cond_0

    #@47
    .line 299
    aget-byte v8, v7, v5

    #@49
    and-int/lit16 v8, v8, 0xff

    #@4b
    const/16 v9, 0xff

    #@4d
    if-ne v8, v9, :cond_3

    #@4f
    .line 302
    :cond_0
    if-nez v5, :cond_4

    #@51
    .line 303
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@53
    const-string/jumbo v9, ""

    #@56
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@59
    .line 304
    return-void

    #@5a
    .end local v2    # "encoding":I
    .end local v3    # "language":I
    .end local v4    # "len":I
    .end local v5    # "numBytes":I
    .end local v7    # "spnData":[B
    :cond_1
    move v8, v10

    #@5b
    .line 289
    goto :goto_0

    #@5c
    .line 294
    .restart local v2    # "encoding":I
    .restart local v3    # "language":I
    .restart local v7    # "spnData":[B
    :cond_2
    const/16 v4, 0x20

    #@5e
    .restart local v4    # "len":I
    goto :goto_1

    #@5f
    .line 298
    .restart local v5    # "numBytes":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@61
    goto :goto_2

    #@62
    .line 307
    :cond_4
    packed-switch v2, :pswitch_data_0

    #@65
    .line 337
    :pswitch_0
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@67
    const-string/jumbo v9, "SPN encoding not supported"

    #@6a
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    .line 342
    :goto_3
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@6f
    new-instance v9, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v10, "spn="

    #@77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@7d
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    #@80
    move-result-object v10

    #@81
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v9

    #@85
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v9

    #@89
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@8c
    .line 343
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@8e
    new-instance v9, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v10, "spnCondition="

    #@96
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v9

    #@9a
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@9c
    iget-boolean v10, v10, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    #@9e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v9

    #@a2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v9

    #@a6
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@a9
    .line 344
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@ab
    iget-object v8, v8, Lcom/android/internal/telephony/uicc/RuimRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@ad
    .line 345
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@af
    iget-object v9, v9, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@b1
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@b4
    move-result v9

    #@b5
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@b7
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    #@ba
    move-result-object v10

    #@bb
    .line 344
    invoke-virtual {v8, v9, v10}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@be
    .line 283
    return-void

    #@bf
    .line 310
    :pswitch_1
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@c1
    new-instance v9, Ljava/lang/String;

    #@c3
    const-string/jumbo v10, "ISO-8859-1"

    #@c6
    const/4 v11, 0x0

    #@c7
    invoke-direct {v9, v7, v11, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@ca
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@cd
    goto :goto_3

    #@ce
    .line 339
    :catch_0
    move-exception v1

    #@cf
    .line 340
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@d1
    new-instance v9, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v10, "spn decode error: "

    #@d9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v9

    #@dd
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v9

    #@e1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v9

    #@e5
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@e8
    goto :goto_3

    #@e9
    .line 314
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@eb
    .line 315
    mul-int/lit8 v9, v5, 0x8

    #@ed
    div-int/lit8 v9, v9, 0x7

    #@ef
    const/4 v10, 0x0

    #@f0
    invoke-static {v7, v10, v9}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    #@f3
    move-result-object v9

    #@f4
    .line 314
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@f7
    goto/16 :goto_3

    #@f9
    .line 318
    :pswitch_3
    new-instance v6, Ljava/lang/String;

    #@fb
    const-string/jumbo v8, "US-ASCII"

    #@fe
    const/4 v9, 0x0

    #@ff
    invoke-direct {v6, v7, v9, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@102
    .line 324
    .local v6, "spn":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    #@105
    move-result v8

    #@106
    if-eqz v8, :cond_5

    #@108
    .line 325
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@10a
    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@10d
    goto/16 :goto_3

    #@10f
    .line 327
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@111
    new-instance v9, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    const-string/jumbo v10, "Some corruption in SPN decoding = "

    #@119
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v9

    #@11d
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v9

    #@121
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v9

    #@125
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@128
    .line 328
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@12a
    const-string/jumbo v9, "Using ENCODING_GSM_7BIT_ALPHABET scheme..."

    #@12d
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@130
    .line 329
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@132
    .line 330
    mul-int/lit8 v9, v5, 0x8

    #@134
    div-int/lit8 v9, v9, 0x7

    #@136
    const/4 v10, 0x0

    #@137
    invoke-static {v7, v10, v9}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    #@13a
    move-result-object v9

    #@13b
    .line 329
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@13e
    goto/16 :goto_3

    #@140
    .line 334
    .end local v6    # "spn":Ljava/lang/String;
    :pswitch_4
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@142
    new-instance v9, Ljava/lang/String;

    #@144
    const-string/jumbo v10, "utf-16"

    #@147
    const/4 v11, 0x0

    #@148
    invoke-direct {v9, v7, v11, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@14b
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@14e
    goto/16 :goto_3

    #@150
    .line 307
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
