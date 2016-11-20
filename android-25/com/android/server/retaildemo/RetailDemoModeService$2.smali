.class Lcom/android/server/retaildemo/RetailDemoModeService$2;
.super Ljava/lang/Object;
.source "RetailDemoModeService.java"

# interfaces
.implements Landroid/app/RetailDemoModeServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final USER_ACTIVITY_DEBOUNCE_TIME:J = 0x7d0L


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/RetailDemoModeService;


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/retaildemo/RetailDemoModeService;

    #@0
    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onUserActivity()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 560
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@3
    iget-boolean v2, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    #@5
    if-nez v2, :cond_0

    #@7
    .line 561
    return-void

    #@8
    .line 563
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v0

    #@c
    .line 564
    .local v0, "timeOfActivity":J
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@e
    iget-object v3, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    #@10
    monitor-enter v3

    #@11
    .line 565
    :try_start_0
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@13
    iget-wide v4, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mLastUserActivityTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    const-wide/16 v6, 0x7d0

    #@17
    add-long/2addr v4, v6

    #@18
    cmp-long v2, v0, v4

    #@1a
    if-gez v2, :cond_1

    #@1c
    monitor-exit v3

    #@1d
    .line 566
    return-void

    #@1e
    .line 568
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@20
    iput-wide v0, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mLastUserActivityTime:J

    #@22
    .line 569
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@24
    iget-boolean v2, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserUntouched:Z

    #@26
    if-eqz v2, :cond_2

    #@28
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@2a
    invoke-virtual {v2}, Lcom/android/server/retaildemo/RetailDemoModeService;->isDemoLauncherDisabled()Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 570
    invoke-static {}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get0()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    const-string/jumbo v4, "retail_demo first touch"

    #@37
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 571
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@3c
    const/4 v4, 0x0

    #@3d
    iput-boolean v4, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserUntouched:Z

    #@3f
    .line 572
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@41
    iput-wide v0, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mFirstUserActivityTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    :cond_2
    monitor-exit v3

    #@44
    .line 575
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@46
    iget-object v2, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    #@48
    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    #@4b
    .line 576
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@4d
    iget-object v2, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    #@4f
    iget-object v3, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@51
    iget-wide v4, v3, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserInactivityTimeout:J

    #@53
    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@56
    .line 559
    return-void

    #@57
    .line 564
    :catchall_0
    move-exception v2

    #@58
    monitor-exit v3

    #@59
    throw v2
.end method
