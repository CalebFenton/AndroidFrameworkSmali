.class Lcom/android/internal/telephony/dataconnection/DcTracker$3;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@0
    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

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
    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap10(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@5
    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@7
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get1(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@f
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@11
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get7(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/content/ContentResolver;

    #@14
    move-result-object v1

    #@15
    .line 326
    const-string/jumbo v2, "pdp_watchdog_poll_interval_ms"

    #@18
    const/16 v3, 0x3e8

    #@1a
    .line 325
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1d
    move-result v1

    #@1e
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set2(Lcom/android/internal/telephony/dataconnection/DcTracker;I)I

    #@21
    .line 333
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@23
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get3(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2b
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get0(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/os/Handler;

    #@2e
    move-result-object v0

    #@2f
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@31
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get4(Lcom/android/internal/telephony/dataconnection/DcTracker;)I

    #@34
    move-result v1

    #@35
    int-to-long v2, v1

    #@36
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@39
    .line 321
    :cond_0
    return-void

    #@3a
    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@3c
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@3e
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get7(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/content/ContentResolver;

    #@41
    move-result-object v1

    #@42
    .line 329
    const-string/jumbo v2, "pdp_watchdog_long_poll_interval_ms"

    #@45
    .line 330
    const v3, 0x927c0

    #@48
    .line 328
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@4b
    move-result v1

    #@4c
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set2(Lcom/android/internal/telephony/dataconnection/DcTracker;I)I

    #@4f
    goto :goto_0
.end method
