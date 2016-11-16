.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
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
    name = "UncaughtHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$UncaughtHandler;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/16 v7, 0xa

    #@2
    .line 73
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get1()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 111
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@b
    move-result v4

    #@c
    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    #@f
    .line 112
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    #@12
    .line 73
    return-void

    #@13
    .line 74
    :cond_0
    const/4 v4, 0x1

    #@14
    :try_start_1
    invoke-static {v4}, Lcom/android/internal/os/RuntimeInit;->-set0(Z)Z

    #@17
    .line 76
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get0()Landroid/os/IBinder;

    #@1a
    move-result-object v4

    #@1b
    if-nez v4, :cond_2

    #@1d
    .line 77
    const-string/jumbo v4, "AndroidRuntime"

    #@20
    new-instance v5, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v6, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-static {v4, v5, p2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 92
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@3e
    move-result-object v4

    #@3f
    if-eqz v4, :cond_1

    #@41
    .line 93
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Landroid/app/ActivityThread;->stopProfiling()V

    #@48
    .line 97
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4b
    move-result-object v4

    #@4c
    .line 98
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get0()Landroid/os/IBinder;

    #@4f
    move-result-object v5

    #@50
    new-instance v6, Landroid/app/ApplicationErrorReport$CrashInfo;

    #@52
    invoke-direct {v6, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    #@55
    .line 97
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    .line 111
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@5b
    move-result v4

    #@5c
    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    #@5f
    .line 112
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    #@62
    .line 70
    :goto_1
    return-void

    #@63
    .line 79
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    .line 80
    .local v0, "message":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "FATAL EXCEPTION: "

    #@6b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    const-string/jumbo v5, "\n"

    #@7a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 81
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    .line 82
    .local v1, "processName":Ljava/lang/String;
    if-eqz v1, :cond_3

    #@83
    .line 83
    const-string/jumbo v4, "Process: "

    #@86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v4

    #@8e
    const-string/jumbo v5, ", "

    #@91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 85
    :cond_3
    const-string/jumbo v4, "PID: "

    #@97
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@9e
    move-result v5

    #@9f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a2
    .line 86
    const-string/jumbo v4, "AndroidRuntime"

    #@a5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v5

    #@a9
    invoke-static {v4, v5, p2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ac
    goto :goto_0

    #@ad
    .line 99
    .end local v0    # "message":Ljava/lang/StringBuilder;
    .end local v1    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@ae
    .line 100
    .local v2, "t2":Ljava/lang/Throwable;
    :try_start_3
    instance-of v4, v2, Landroid/os/DeadObjectException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b0
    if-eqz v4, :cond_4

    #@b2
    .line 111
    :goto_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@b5
    move-result v4

    #@b6
    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    #@b9
    .line 112
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    #@bc
    goto :goto_1

    #@bd
    .line 104
    :cond_4
    :try_start_4
    const-string/jumbo v4, "AndroidRuntime"

    #@c0
    const-string/jumbo v5, "Error reporting crash"

    #@c3
    invoke-static {v4, v5, v2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c6
    goto :goto_2

    #@c7
    .line 105
    :catch_1
    move-exception v3

    #@c8
    .local v3, "t3":Ljava/lang/Throwable;
    goto :goto_2

    #@c9
    .line 109
    .end local v2    # "t2":Ljava/lang/Throwable;
    .end local v3    # "t3":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    #@ca
    .line 111
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@cd
    move-result v5

    #@ce
    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    #@d1
    .line 112
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    #@d4
    .line 109
    throw v4
.end method
