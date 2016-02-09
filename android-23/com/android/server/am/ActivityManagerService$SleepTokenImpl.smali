.class final Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;
.super Landroid/app/ActivityManagerInternal$SleepToken;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SleepTokenImpl"
.end annotation


# instance fields
.field private final mAcquireTime:J

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 20511
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-direct {p0}, Landroid/app/ActivityManagerInternal$SleepToken;-><init>()V

    #@5
    .line 20512
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;->mTag:Ljava/lang/String;

    #@7
    .line 20513
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;->mAcquireTime:J

    #@d
    .line 20511
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    #@0
    .prologue
    .line 20518
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v1

    #@3
    .line 20519
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSleepTokens:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 20520
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@f
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 20517
    return-void

    #@14
    .line 20518
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 20527
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{\""

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;->mTag:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "\", acquire at "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerService$SleepTokenImpl;->mAcquireTime:J

    #@1b
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, "}"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method
