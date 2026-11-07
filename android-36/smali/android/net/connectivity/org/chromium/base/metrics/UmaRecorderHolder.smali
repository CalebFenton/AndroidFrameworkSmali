.class public Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;
.super Ljava/lang/Object;
.source "UmaRecorderHolder.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sNativeInitialized:Z

.field private static blacklist sRecorder:Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;

.field private static blacklist sSetUpNativeUmaRecorder:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 8
    nop

    .line 12
    new-instance v0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->sRecorder:Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->sSetUpNativeUmaRecorder:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    .registers 1

    .line 22
    sget-object v0, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->sRecorder:Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;

    return-object v0
.end method

.method public static blacklist onLibraryLoaded()V
    .registers 2

    .line 51
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->sSetUpNativeUmaRecorder:Z

    if-nez v0, :cond_5

    return-void

    .line 53
    :cond_5
    nop

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->sNativeInitialized:Z

    .line 55
    sget-object v0, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->sRecorder:Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->setDelegate(Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;)Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    .line 56
    return-void
.end method

.method public static blacklist resetForTesting()V
    .registers 1

    .line 63
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->sNativeInitialized:Z

    if-nez v0, :cond_b

    .line 64
    new-instance v0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->sRecorder:Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;

    .line 66
    :cond_b
    return-void
.end method

.method public static blacklist setNonNativeDelegate(Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;)V
    .registers 2
    .param p0, "recorder"    # Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    .line 35
    sget-object v0, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->sRecorder:Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;->setDelegate(Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;)Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    .line 36
    .local v0, "previous":Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
    nop

    .line 38
    return-void
.end method

.method public static blacklist setUpNativeUmaRecorder(Z)V
    .registers 1
    .param p0, "setUpNativeUmaRecorder"    # Z

    .line 46
    sput-boolean p0, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->sSetUpNativeUmaRecorder:Z

    .line 47
    return-void
.end method
