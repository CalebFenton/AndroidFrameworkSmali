.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;
.super Ljava/lang/Object;
.source "DcTrackerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@0
    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->updateDataActivity()V

    #@5
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@7
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@f
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@11
    .line 377
    const-string/jumbo v2, "pdp_watchdog_poll_interval_ms"

    #@14
    const/16 v3, 0x3e8

    #@16
    .line 376
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@19
    move-result v1

    #@1a
    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    #@1c
    .line 384
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@1e
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@24
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionTracker:Landroid/os/Handler;

    #@26
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@28
    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    #@2a
    int-to-long v2, v1

    #@2b
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@2e
    .line 372
    :cond_0
    return-void

    #@2f
    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@31
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@33
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    #@35
    .line 380
    const-string/jumbo v2, "pdp_watchdog_long_poll_interval_ms"

    #@38
    .line 381
    const v3, 0x927c0

    #@3b
    .line 379
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@3e
    move-result v1

    #@3f
    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    #@41
    goto :goto_0
.end method
