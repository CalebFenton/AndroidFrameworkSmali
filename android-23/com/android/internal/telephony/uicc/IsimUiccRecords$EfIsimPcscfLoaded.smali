.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;
.super Ljava/lang/Object;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimPcscfLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@0
    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    #@3
    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 251
    const-string/jumbo v0, "EF_ISIM_PCSCF"

    #@3
    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 254
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2
    check-cast v5, Ljava/util/ArrayList;

    #@4
    .line 255
    .local v5, "pcscflist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@6
    new-instance v7, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v8, "EF_PCSCF record count: "

    #@e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v7

    #@12
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v8

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    #@21
    .line 256
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@23
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v7

    #@27
    new-array v7, v7, [Ljava/lang/String;

    #@29
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-set4(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[Ljava/lang/String;)[Ljava/lang/String;

    #@2c
    .line 257
    const/4 v0, 0x0

    #@2d
    .line 258
    .local v0, "i":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v3

    #@31
    .local v3, "identity$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_0

    #@37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    check-cast v2, [B

    #@3d
    .line 259
    .local v2, "identity":[B
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-wrap0([B)Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    .line 261
    .local v4, "pcscf":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@43
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-get1(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    add-int/lit8 v1, v0, 0x1

    #@49
    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v4, v6, v0

    #@4b
    move v0, v1

    #@4c
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@4d
    .line 253
    .end local v2    # "identity":[B
    .end local v4    # "pcscf":Ljava/lang/String;
    :cond_0
    return-void
.end method
