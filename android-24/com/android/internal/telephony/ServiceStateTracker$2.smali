.class Lcom/android/internal/telephony/ServiceStateTracker$2;
.super Landroid/database/ContentObserver;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 382
    const-string/jumbo v0, "SST"

    #@3
    const-string/jumbo v1, "Auto time zone state changed"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    #@b
    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-wrap0(Lcom/android/internal/telephony/ServiceStateTracker;)V

    #@e
    .line 381
    return-void
.end method
