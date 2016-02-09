.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;
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
    name = "EfCsimEprlLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    #@3
    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 440
    const-string/jumbo v0, "EF_CSIM_EPRL"

    #@3
    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-wrap1(Lcom/android/internal/telephony/uicc/RuimRecords;Landroid/os/AsyncResult;)V

    #@5
    .line 443
    return-void
.end method
