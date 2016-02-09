.class Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;
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
    name = "EfPlLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    #@3
    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 237
    const-string/jumbo v0, "EF_PL"

    #@3
    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@2
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4
    check-cast v0, [B

    #@6
    invoke-static {v1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-set1(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B

    #@9
    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "EF_PL="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@19
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get1(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    #@2c
    .line 241
    return-void
.end method
