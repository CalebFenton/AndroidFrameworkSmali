.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;
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
    name = "EfCsimCdmaHomeLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    #@3
    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 406
    const-string/jumbo v0, "EF_CSIM_CDMAHOME"

    #@3
    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/16 v10, 0x2c

    #@2
    .line 412
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4
    check-cast v2, Ljava/util/ArrayList;

    #@6
    .line 413
    .local v2, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@8
    new-instance v8, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v9, "CSIM_CDMAHOME data size="

    #@10
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v8

    #@14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v9

    #@18
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@23
    .line 414
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@26
    move-result v7

    #@27
    if-eqz v7, :cond_0

    #@29
    .line 415
    return-void

    #@2a
    .line 417
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    .line 418
    .local v6, "sidBuf":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    .line 420
    .local v4, "nidBuf":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v1

    #@38
    .local v1, "data$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v7

    #@3c
    if-eqz v7, :cond_2

    #@3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, [B

    #@44
    .line 421
    .local v0, "data":[B
    array-length v7, v0

    #@45
    const/4 v8, 0x5

    #@46
    if-ne v7, v8, :cond_1

    #@48
    .line 422
    const/4 v7, 0x1

    #@49
    aget-byte v7, v0, v7

    #@4b
    and-int/lit16 v7, v7, 0xff

    #@4d
    shl-int/lit8 v7, v7, 0x8

    #@4f
    const/4 v8, 0x0

    #@50
    aget-byte v8, v0, v8

    #@52
    and-int/lit16 v8, v8, 0xff

    #@54
    or-int v5, v7, v8

    #@56
    .line 423
    .local v5, "sid":I
    const/4 v7, 0x3

    #@57
    aget-byte v7, v0, v7

    #@59
    and-int/lit16 v7, v7, 0xff

    #@5b
    shl-int/lit8 v7, v7, 0x8

    #@5d
    const/4 v8, 0x2

    #@5e
    aget-byte v8, v0, v8

    #@60
    and-int/lit16 v8, v8, 0xff

    #@62
    or-int v3, v7, v8

    #@64
    .line 424
    .local v3, "nid":I
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6b
    .line 425
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@72
    goto :goto_0

    #@73
    .line 429
    .end local v0    # "data":[B
    .end local v3    # "nid":I
    .end local v5    # "sid":I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@76
    move-result v7

    #@77
    add-int/lit8 v7, v7, -0x1

    #@79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7c
    .line 430
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@7f
    move-result v7

    #@80
    add-int/lit8 v7, v7, -0x1

    #@82
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@85
    .line 432
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v8

    #@8b
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/RuimRecords;->-set3(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    #@8e
    .line 433
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v8

    #@94
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/RuimRecords;->-set2(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    #@97
    .line 410
    return-void
.end method
