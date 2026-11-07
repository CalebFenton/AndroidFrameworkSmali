.class public final Landroid/net/connectivity/org/chromium/base/JniAndroid;
.super Ljava/lang/Object;
.source "JniAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/JniAndroid$UncaughtExceptionException;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "JniAndroid"

.field static blacklist sSimulateOomInSanitizedStacktraceForTesting:Z


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist handleException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "nativeStackTrace"    # Ljava/lang/String;

    .line 82
    const-string v0, "JniAndroid"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "Handling uncaught Java exception"

    invoke-static {v0, v2, p0}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    new-instance v2, Landroid/net/connectivity/org/chromium/base/JniAndroid$UncaughtExceptionException;

    invoke-direct {v2, p1, p0}, Landroid/net/connectivity/org/chromium/base/JniAndroid$UncaughtExceptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .local v2, "wrappedThrowable":Landroid/net/connectivity/org/chromium/base/JniAndroid$UncaughtExceptionException;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 108
    const-string v3, "Global uncaught exception handler did not terminate the process."

    invoke-static {v0, v3}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_1d} :catch_25
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1e

    .line 109
    return-object v1

    .line 113
    .end local v2    # "wrappedThrowable":Landroid/net/connectivity/org/chromium/base/JniAndroid$UncaughtExceptionException;
    :catchall_1e
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "Exception in uncaught exception handler."

    invoke-static {v0, v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    return-object v1

    .line 110
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    return-object v1
.end method

.method private static blacklist sanitizedStacktraceForUnhandledException(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 25
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/JniAndroid;->sSimulateOomInSanitizedStacktraceForTesting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 26
    return-object v1

    .line 29
    :cond_6
    :try_start_6
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/PiiElider;->sanitizeStacktrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_e} :catch_2a
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object v0

    .line 32
    :catchall_f
    move-exception v0

    .line 34
    .local v0, "stacktraceThrowable":Ljava/lang/Throwable;
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while getting stack trace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_27} :catch_28

    .line 34
    return-object v1

    .line 36
    :catch_28
    move-exception v2

    .line 37
    .local v2, "oomError":Ljava/lang/OutOfMemoryError;
    return-object v1

    .line 30
    .end local v0    # "stacktraceThrowable":Ljava/lang/Throwable;
    .end local v2    # "oomError":Ljava/lang/OutOfMemoryError;
    :catch_2a
    move-exception v0

    .line 31
    .local v0, "oomError":Ljava/lang/OutOfMemoryError;
    return-object v1
.end method
