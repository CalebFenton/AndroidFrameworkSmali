.class public Lcom/android/internal/util/WakeupMessage;
.super Ljava/lang/Object;
.source "WakeupMessage.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field protected final mArg1:I

.field protected final mArg2:I

.field protected final mCmd:I

.field protected final mCmdName:Ljava/lang/String;

.field protected final mHandler:Landroid/os/Handler;

.field private mScheduled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v6, v5

    #@7
    .line 65
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;III)V

    #@a
    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I
    .param p5, "arg1"    # I

    #@0
    .prologue
    .line 61
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;III)V

    #@a
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I
    .param p5, "arg1"    # I
    .param p6, "arg2"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    const-string/jumbo v0, "alarm"

    #@6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/app/AlarmManager;

    #@c
    iput-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    #@e
    .line 53
    iput-object p2, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    #@10
    .line 54
    iput-object p3, p0, Lcom/android/internal/util/WakeupMessage;->mCmdName:Ljava/lang/String;

    #@12
    .line 55
    iput p4, p0, Lcom/android/internal/util/WakeupMessage;->mCmd:I

    #@14
    .line 56
    iput p5, p0, Lcom/android/internal/util/WakeupMessage;->mArg1:I

    #@16
    .line 57
    iput p6, p0, Lcom/android/internal/util/WakeupMessage;->mArg2:I

    #@18
    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 85
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 86
    iget-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    #@7
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@a
    .line 87
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit p0

    #@e
    .line 84
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public onAlarm()V
    .locals 6

    #@0
    .prologue
    .line 97
    monitor-enter p0

    #@1
    .line 98
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z

    #@3
    .line 99
    .local v1, "stillScheduled":Z
    const/4 v2, 0x0

    #@4
    iput-boolean v2, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 101
    if-eqz v1, :cond_0

    #@9
    .line 102
    iget-object v2, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    #@b
    iget v3, p0, Lcom/android/internal/util/WakeupMessage;->mCmd:I

    #@d
    iget v4, p0, Lcom/android/internal/util/WakeupMessage;->mArg1:I

    #@f
    iget v5, p0, Lcom/android/internal/util/WakeupMessage;->mArg2:I

    #@11
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    .line 103
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    #@17
    invoke-virtual {v2, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@1a
    .line 104
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    #@1d
    .line 92
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    #@1e
    .line 97
    .end local v1    # "stillScheduled":Z
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit p0

    #@20
    throw v2
.end method

.method public declared-synchronized schedule(J)V
    .locals 7
    .param p1, "when"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    #@3
    .line 76
    iget-object v4, p0, Lcom/android/internal/util/WakeupMessage;->mCmdName:Ljava/lang/String;

    #@5
    iget-object v6, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    #@7
    const/4 v1, 0x2

    #@8
    move-wide v2, p1

    #@9
    move-object v5, p0

    #@a
    .line 75
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@d
    .line 77
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 74
    return-void

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method
