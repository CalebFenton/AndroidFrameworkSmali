.class Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
.super Ljava/lang/Object;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellInfoResult"
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field lockObj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    #@0
    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 221
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    #@c
    .line 219
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    #@3
    return-void
.end method
