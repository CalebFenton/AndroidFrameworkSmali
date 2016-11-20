.class public final Landroid/os/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemClock"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static native currentThreadTimeMicro()J
.end method

.method public static native currentThreadTimeMillis()J
.end method

.method public static native currentTimeMicro()J
.end method

.method public static native elapsedRealtime()J
.end method

.method public static native elapsedRealtimeNanos()J
.end method

.method public static setCurrentTimeMillis(J)Z
    .locals 8
    .param p0, "millis"    # J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 143
    const-string/jumbo v4, "alarm"

    #@4
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 144
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    #@b
    move-result-object v3

    #@c
    .line 145
    .local v3, "mgr":Landroid/app/IAlarmManager;
    if-nez v3, :cond_0

    #@e
    .line 146
    return v6

    #@f
    .line 150
    :cond_0
    :try_start_0
    invoke-interface {v3, p0, p1}, Landroid/app/IAlarmManager;->setTime(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v4

    #@13
    return v4

    #@14
    .line 153
    :catch_0
    move-exception v2

    #@15
    .line 154
    .local v2, "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "SystemClock"

    #@18
    const-string/jumbo v5, "Unable to set RTC"

    #@1b
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 157
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_0
    return v6

    #@1f
    .line 151
    :catch_1
    move-exception v1

    #@20
    .line 152
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SystemClock"

    #@23
    const-string/jumbo v5, "Unable to set RTC"

    #@26
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    goto :goto_0
.end method

.method public static sleep(J)V
    .locals 10
    .param p0, "ms"    # J

    #@0
    .prologue
    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 116
    .local v4, "start":J
    move-wide v0, p0

    #@5
    .line 117
    .local v0, "duration":J
    const/4 v3, 0x0

    #@6
    .line 120
    .local v3, "interrupted":Z
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 125
    :goto_0
    add-long v6, v4, p0

    #@b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e
    move-result-wide v8

    #@f
    sub-long v0, v6, v8

    #@11
    .line 126
    const-wide/16 v6, 0x0

    #@13
    cmp-long v6, v0, v6

    #@15
    if-gtz v6, :cond_0

    #@17
    .line 128
    if-eqz v3, :cond_1

    #@19
    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    #@20
    .line 113
    :cond_1
    return-void

    #@21
    .line 122
    :catch_0
    move-exception v2

    #@22
    .line 123
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    #@23
    goto :goto_0
.end method

.method public static native uptimeMillis()J
.end method
