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
    .line 100
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@b
    move-result v4

    #@c
    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    #@f
    .line 101
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
    if-nez v4, :cond_1

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
    .line 90
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3e
    move-result-object v4

    #@3f
    .line 91
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get0()Landroid/os/IBinder;

    #@42
    move-result-object v5

    #@43
    new-instance v6, Landroid/app/ApplicationErrorReport$CrashInfo;

    #@45
    invoke-direct {v6, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    #@48
    .line 90
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    .line 100
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@4e
    move-result v4

    #@4f
    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    #@52
    .line 101
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    #@55
    .line 70
    :goto_1
    return-void

    #@56
    .line 79
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    .line 80
    .local v0, "message":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "FATAL EXCEPTION: "

    #@5e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    const-string/jumbo v5, "\n"

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 81
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    .line 82
    .local v1, "processName":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@76
    .line 83
    const-string/jumbo v4, "Process: "

    #@79
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    const-string/jumbo v5, ", "

    #@84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 85
    :cond_2
    const-string/jumbo v4, "PID: "

    #@8a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v4

    #@8e
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@91
    move-result v5

    #@92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95
    .line 86
    const-string/jumbo v4, "AndroidRuntime"

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    invoke-static {v4, v5, p2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9f
    goto :goto_0

    #@a0
    .line 92
    .end local v0    # "message":Ljava/lang/StringBuilder;
    .end local v1    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@a1
    .line 94
    .local v2, "t2":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v4, "AndroidRuntime"

    #@a4
    const-string/jumbo v5, "Error reporting crash"

    #@a7
    invoke-static {v4, v5, v2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@aa
    .line 100
    :goto_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@ad
    move-result v4

    #@ae
    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    #@b1
    .line 101
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    #@b4
    goto :goto_1

    #@b5
    .line 98
    .end local v2    # "t2":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    #@b6
    .line 100
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@b9
    move-result v5

    #@ba
    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    #@bd
    .line 101
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    #@c0
    .line 98
    throw v4

    #@c1
    .line 95
    .restart local v2    # "t2":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    #@c2
    .local v3, "t3":Ljava/lang/Throwable;
    goto :goto_2
.end method
