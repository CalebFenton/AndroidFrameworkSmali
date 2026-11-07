.class public Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;
.super Ljava/lang/Object;
.source "WakeupMessage.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field private final blacklist mAlarmManager:Landroid/app/AlarmManager;

.field protected final blacklist mArg1:I

.field protected final blacklist mArg2:I

.field protected final blacklist mCmd:I

.field protected final blacklist mCmdName:Ljava/lang/String;

.field protected final blacklist mHandler:Landroid/os/Handler;

.field protected final blacklist mObj:Ljava/lang/Object;

.field private final blacklist mRunnable:Ljava/lang/Runnable;

.field private blacklist mScheduled:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I

    .line 75
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "cmdName":Ljava/lang/String;
    .end local p4    # "cmd":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "cmdName":Ljava/lang/String;
    .local v4, "cmd":I
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I
    .param p5, "arg1"    # I

    .line 66
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "cmdName":Ljava/lang/String;
    .end local p4    # "cmd":I
    .end local p5    # "arg1":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "cmdName":Ljava/lang/String;
    .local v4, "cmd":I
    .local v5, "arg1":I
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;III)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I
    .param p5, "arg1"    # I
    .param p6, "arg2"    # I

    .line 71
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "cmdName":Ljava/lang/String;
    .end local p4    # "cmd":I
    .end local p5    # "arg1":I
    .end local p6    # "arg2":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "cmdName":Ljava/lang/String;
    .local v4, "cmd":I
    .local v5, "arg1":I
    .local v6, "arg2":I
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I
    .param p5, "arg1"    # I
    .param p6, "arg2"    # I
    .param p7, "obj"    # Ljava/lang/Object;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    .line 56
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mCmdName:Ljava/lang/String;

    .line 58
    iput p4, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mCmd:I

    .line 59
    iput p5, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mArg1:I

    .line 60
    iput p6, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mArg2:I

    .line 61
    iput-object p7, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mObj:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mRunnable:Ljava/lang/Runnable;

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    .line 80
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mCmdName:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mCmd:I

    .line 83
    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mArg1:I

    .line 84
    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mArg2:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mObj:Ljava/lang/Object;

    .line 86
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mRunnable:Ljava/lang/Runnable;

    .line 87
    return-void
.end method

.method private static blacklist getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized blacklist cancel()V
    .registers 2

    monitor-enter p0

    .line 110
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mScheduled:Z

    if-eqz v0, :cond_d

    .line 111
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mScheduled:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 114
    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;
    :cond_d
    monitor-exit p0

    return-void

    .line 109
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public whitelist onAlarm()V
    .registers 7

    .line 122
    monitor-enter p0

    .line 123
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mScheduled:Z

    .line 124
    .local v0, "stillScheduled":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mScheduled:Z

    .line 125
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2d

    .line 126
    if-eqz v0, :cond_2c

    .line 128
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_1c

    .line 129
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mCmd:I

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mArg1:I

    iget v4, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mArg2:I

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mObj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    goto :goto_24

    .line 131
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 133
    .restart local v1    # "msg":Landroid/os/Message;
    :goto_24
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 134
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 136
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2c
    return-void

    .line 125
    .end local v0    # "stillScheduled":Z
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public declared-synchronized blacklist schedule(J)V
    .registers 10
    .param p1, "when"    # J

    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mCmdName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mHandler:Landroid/os/Handler;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_12

    const/4 v1, 0x2

    move-object v5, p0

    move-wide v2, p1

    .end local p1    # "when":J
    .local v2, "when":J
    :try_start_a
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 102
    const/4 p1, 0x1

    iput-boolean p1, v5, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;->mScheduled:Z
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_17

    .line 103
    monitor-exit p0

    return-void

    .line 99
    .end local v2    # "when":J
    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;
    :catchall_12
    move-exception v0

    move-object v5, p0

    :goto_14
    move-object p1, v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_17

    throw p1

    :catchall_17
    move-exception v0

    goto :goto_14
.end method
