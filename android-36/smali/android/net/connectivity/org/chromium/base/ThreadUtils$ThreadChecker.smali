.class public Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadChecker"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mThread:Ljava/lang/Thread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const-class v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->resetThreadId()V

    .line 55
    return-void
.end method

.method private blacklist assertOnValidThreadHelper(Z)V
    .registers 5
    .param p1, "allowInstrThread"    # Z

    .line 80
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_2d

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->-$$Nest$sfgetsThreadAssertsDisabledForTesting()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 82
    .local v0, "curThread":Ljava/lang/Thread;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->mThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_2c

    if-eqz p1, :cond_1b

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->-$$Nest$sfgetsInstrumentationThreadForTesting()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1b

    goto :goto_2c

    .line 86
    :cond_1b
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 87
    .local v1, "uiThread":Ljava/lang/Thread;
    if-ne v0, v1, :cond_26

    .line 88
    goto :goto_2b

    .line 92
    :cond_26
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->mThread:Ljava/lang/Thread;

    if-ne v2, v1, :cond_2b

    .line 93
    nop

    .line 95
    :cond_2b
    :goto_2b
    goto :goto_2d

    .line 84
    .end local v1    # "uiThread":Ljava/lang/Thread;
    :cond_2c
    :goto_2c
    return-void

    .line 101
    .end local v0    # "curThread":Ljava/lang/Thread;
    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public blacklist assertOnValidOrInstrumentationThread()V
    .registers 2

    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThreadHelper(Z)V

    .line 77
    return-void
.end method

.method public blacklist assertOnValidThread()V
    .registers 2

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThreadHelper(Z)V

    .line 69
    return-void
.end method

.method public blacklist resetThreadId()V
    .registers 2

    .line 58
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_a

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->mThread:Ljava/lang/Thread;

    .line 61
    :cond_a
    return-void
.end method
