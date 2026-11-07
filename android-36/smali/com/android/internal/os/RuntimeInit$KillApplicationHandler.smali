.class Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KillApplicationHandler"
.end annotation


# instance fields
.field private final blacklist mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/RuntimeInit$LoggingHandler;)V
    .registers 3
    .param p1, "loggingHandler"    # Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    iput-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    .line 151
    return-void
.end method

.method private blacklist ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 209
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    iget-boolean v0, v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->mTriggered:Z

    if-nez v0, :cond_d

    .line 211
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    .line 214
    goto :goto_d

    .line 212
    :catchall_c
    move-exception v0

    .line 216
    :cond_d
    :goto_d
    return-void
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 156
    const-string v0, "AndroidRuntime"

    const/16 v1, 0xa

    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 159
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmCrashing()Z

    move-result v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_3a

    if-eqz v2, :cond_18

    .line 186
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 187
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 159
    return-void

    .line 160
    :cond_18
    const/4 v2, 0x1

    :try_start_19
    invoke-static {v2}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfputmCrashing(Z)V

    .line 165
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 166
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->stopProfiling()V

    .line 170
    :cond_29
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-direct {v4, p2}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_3a

    goto :goto_4c

    .line 172
    :catchall_3a
    move-exception v2

    .line 173
    .local v2, "t2":Ljava/lang/Throwable;
    :try_start_3b
    instance-of v3, v2, Landroid/os/DeadObjectException;
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_58

    if-eqz v3, :cond_40

    goto :goto_4c

    .line 178
    :cond_40
    :try_start_40
    const-string v3, "Couldn\'t report crash. Here\'s the crash:"

    invoke-static {v0, v3, p2}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    const-string v3, "Error reporting crash. Here\'s the error:"

    invoke-static {v0, v3, v2}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_4b

    .line 182
    goto :goto_4c

    .line 180
    :catchall_4b
    move-exception v0

    .line 186
    .end local v2    # "t2":Ljava/lang/Throwable;
    :goto_4c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 187
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 188
    nop

    .line 189
    return-void

    .line 186
    :catchall_58
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 187
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 188
    throw v0
.end method
