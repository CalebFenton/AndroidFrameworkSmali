.class public Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter;
.super Ljava/lang/Object;
.source "JavaExceptionReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter$Natives;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mCrashAfterReport:Z

.field private blacklist mHandlingException:Z

.field private final blacklist mParent:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 23
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .registers 3
    .param p1, "parent"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p2, "crashAfterReport"    # Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter;->mParent:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 32
    iput-boolean p2, p0, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter;->mCrashAfterReport:Z

    .line 33
    return-void
.end method

.method private static blacklist installHandler(Z)V
    .registers 3
    .param p0, "crashAfterReport"    # Z

    .line 98
    new-instance v0, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter;

    .line 100
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 98
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 101
    return-void
.end method

.method public static blacklist reportException(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "exception"    # Ljava/lang/Throwable;

    .line 92
    nop

    .line 93
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporterJni;->get()Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter$Natives;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter$Natives;->reportJavaException(ZLjava/lang/Throwable;)V

    .line 94
    return-void
.end method

.method public static blacklist reportStackTrace(Ljava/lang/String;)V
    .registers 3
    .param p0, "stackTrace"    # Ljava/lang/String;

    .line 78
    nop

    .line 79
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporterJni;->get()Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter$Natives;

    move-result-object v0

    .line 80
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/PiiElider;->sanitizeStacktrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter$Natives;->reportJavaStackTrace(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static blacklist shouldReportThrowable(Ljava/lang/Throwable;)Z
    .registers 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 46
    instance-of v0, p0, Landroid/os/DeadSystemException;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 51
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter;->mHandlingException:Z

    if-nez v0, :cond_20

    invoke-static {p2}, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter;->shouldReportThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter;->mHandlingException:Z

    .line 53
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporterJni;->get()Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter$Natives;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter;->mCrashAfterReport:Z

    .line 62
    instance-of v2, p2, Landroid/net/connectivity/org/chromium/base/JniAndroid$UncaughtExceptionException;

    if-eqz v2, :cond_1c

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1d

    :cond_1c
    move-object v2, p2

    .line 54
    :goto_1d
    invoke-interface {v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter$Natives;->reportJavaException(ZLjava/lang/Throwable;)V

    .line 64
    :cond_20
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter;->mParent:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_29

    .line 65
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter;->mParent:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 67
    :cond_29
    return-void
.end method
