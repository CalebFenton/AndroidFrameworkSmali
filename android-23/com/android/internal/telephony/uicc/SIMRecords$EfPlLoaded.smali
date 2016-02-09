.class Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;
.super Ljava/lang/Object;
.source "SIMRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfPlLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/SIMRecords;

    #@0
    .prologue
    .line 1252
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/SIMRecords;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    #@3
    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1254
    const-string/jumbo v0, "EF_PL"

    #@3
    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 1258
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@2
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4
    check-cast v0, [B

    #@6
    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    #@8
    .line 1259
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "EF_PL="

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@18
    iget-object v2, v2, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    #@1a
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@29
    .line 1257
    return-void
.end method
