.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;
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
    name = "EfCsimImsimLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    #@3
    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 371
    const-string/jumbo v0, "EF_CSIM_IMSIM"

    #@3
    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v12, 0x4

    #@1
    const/4 v11, 0x3

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v7, 0x1

    #@4
    .line 376
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@6
    check-cast v1, [B

    #@8
    .line 380
    .local v1, "data":[B
    const/4 v9, 0x7

    #@9
    aget-byte v9, v1, v9

    #@b
    and-int/lit16 v9, v9, 0x80

    #@d
    const/16 v10, 0x80

    #@f
    if-ne v9, v10, :cond_1

    #@11
    move v5, v7

    #@12
    .line 382
    .local v5, "provisioned":Z
    :goto_0
    if-eqz v5, :cond_2

    #@14
    .line 383
    const/4 v9, 0x2

    #@15
    aget-byte v9, v1, v9

    #@17
    and-int/lit8 v9, v9, 0x3

    #@19
    shl-int/lit8 v9, v9, 0x8

    #@1b
    aget-byte v10, v1, v7

    #@1d
    and-int/lit16 v10, v10, 0xff

    #@1f
    add-int v3, v9, v10

    #@21
    .line 384
    .local v3, "first3digits":I
    const/4 v9, 0x5

    #@22
    aget-byte v9, v1, v9

    #@24
    and-int/lit16 v9, v9, 0xff

    #@26
    shl-int/lit8 v9, v9, 0x8

    #@28
    aget-byte v10, v1, v12

    #@2a
    and-int/lit16 v10, v10, 0xff

    #@2c
    or-int/2addr v9, v10

    #@2d
    shr-int/lit8 v6, v9, 0x6

    #@2f
    .line 385
    .local v6, "second3digits":I
    aget-byte v9, v1, v12

    #@31
    shr-int/lit8 v9, v9, 0x2

    #@33
    and-int/lit8 v2, v9, 0xf

    #@35
    .line 386
    .local v2, "digit7":I
    const/16 v9, 0x9

    #@37
    if-le v2, v9, :cond_0

    #@39
    const/4 v2, 0x0

    #@3a
    .line 387
    :cond_0
    aget-byte v9, v1, v12

    #@3c
    and-int/lit8 v9, v9, 0x3

    #@3e
    shl-int/lit8 v9, v9, 0x8

    #@40
    aget-byte v10, v1, v11

    #@42
    and-int/lit16 v10, v10, 0xff

    #@44
    or-int v4, v9, v10

    #@46
    .line 388
    .local v4, "last3digits":I
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@48
    invoke-static {v9, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->-wrap0(Lcom/android/internal/telephony/uicc/RuimRecords;I)I

    #@4b
    move-result v3

    #@4c
    .line 389
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@4e
    invoke-static {v9, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->-wrap0(Lcom/android/internal/telephony/uicc/RuimRecords;I)I

    #@51
    move-result v6

    #@52
    .line 390
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@54
    invoke-static {v9, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->-wrap0(Lcom/android/internal/telephony/uicc/RuimRecords;I)I

    #@57
    move-result v4

    #@58
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    .line 393
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@5f
    const-string/jumbo v10, "%03d"

    #@62
    new-array v11, v7, [Ljava/lang/Object;

    #@64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v12

    #@68
    aput-object v12, v11, v8

    #@6a
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 394
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@73
    const-string/jumbo v10, "%03d"

    #@76
    new-array v11, v7, [Ljava/lang/Object;

    #@78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7b
    move-result-object v12

    #@7c
    aput-object v12, v11, v8

    #@7e
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@81
    move-result-object v9

    #@82
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 395
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@87
    const-string/jumbo v10, "%d"

    #@8a
    new-array v11, v7, [Ljava/lang/Object;

    #@8c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8f
    move-result-object v12

    #@90
    aput-object v12, v11, v8

    #@92
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@95
    move-result-object v9

    #@96
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    .line 396
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@9b
    const-string/jumbo v10, "%03d"

    #@9e
    new-array v7, v7, [Ljava/lang/Object;

    #@a0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3
    move-result-object v11

    #@a4
    aput-object v11, v7, v8

    #@a6
    invoke-static {v9, v10, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a9
    move-result-object v7

    #@aa
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    .line 397
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@af
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v8

    #@b3
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/RuimRecords;->-set5(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    #@b6
    .line 398
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@b8
    new-instance v8, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v9, "min present="

    #@c0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v8

    #@c4
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@c6
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get3(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    #@c9
    move-result-object v9

    #@ca
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v8

    #@ce
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v8

    #@d2
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@d5
    .line 375
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "digit7":I
    .end local v3    # "first3digits":I
    .end local v4    # "last3digits":I
    .end local v6    # "second3digits":I
    :goto_1
    return-void

    #@d6
    .end local v5    # "provisioned":Z
    :cond_1
    move v5, v8

    #@d7
    .line 380
    goto/16 :goto_0

    #@d9
    .line 400
    .restart local v5    # "provisioned":Z
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@db
    const-string/jumbo v8, "min not present"

    #@de
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@e1
    goto :goto_1
.end method
