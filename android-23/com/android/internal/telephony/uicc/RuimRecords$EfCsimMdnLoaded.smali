.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;
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
    name = "EfCsimMdnLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    #@3
    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 352
    const-string/jumbo v0, "EF_CSIM_MDN"

    #@3
    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 357
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2
    check-cast v0, [B

    #@4
    .line 358
    .local v0, "data":[B
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "CSIM_MDN="

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@21
    .line 360
    const/4 v2, 0x0

    #@22
    aget-byte v2, v0, v2

    #@24
    and-int/lit8 v1, v2, 0xf

    #@26
    .line 361
    .local v1, "mdnDigitsNum":I
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@28
    const/4 v3, 0x1

    #@29
    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdToString([BII)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->-set4(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    #@30
    .line 362
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@32
    new-instance v3, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v4, "CSIM MDN="

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@40
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get2(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@4f
    .line 356
    return-void
.end method
