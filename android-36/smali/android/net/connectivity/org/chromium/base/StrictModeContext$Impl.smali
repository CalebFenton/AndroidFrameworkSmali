.class Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;
.super Landroid/net/connectivity/org/chromium/base/StrictModeContext;
.source "StrictModeContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/StrictModeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# instance fields
.field private final blacklist mThreadPolicy:Landroid/os/StrictMode$ThreadPolicy;

.field private final blacklist mVmPolicy:Landroid/os/StrictMode$VmPolicy;


# direct methods
.method private constructor blacklist <init>(Landroid/os/StrictMode$ThreadPolicy;)V
    .registers 3
    .param p1, "threadPolicy"    # Landroid/os/StrictMode$ThreadPolicy;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/os/StrictMode$VmPolicy;)V

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/net/connectivity/org/chromium/base/StrictModeContext-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/os/StrictMode$VmPolicy;)V
    .registers 3
    .param p1, "threadPolicy"    # Landroid/os/StrictMode$ThreadPolicy;
    .param p2, "vmPolicy"    # Landroid/os/StrictMode$VmPolicy;

    .line 32
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;->mThreadPolicy:Landroid/os/StrictMode$ThreadPolicy;

    .line 34
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;->mVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/StrictMode$VmPolicy;)V
    .registers 3
    .param p1, "vmPolicy"    # Landroid/os/StrictMode$VmPolicy;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/os/StrictMode$VmPolicy;)V

    .line 43
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/StrictMode$VmPolicy;Landroid/net/connectivity/org/chromium/base/StrictModeContext-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 47
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;->mThreadPolicy:Landroid/os/StrictMode$ThreadPolicy;

    if-eqz v0, :cond_9

    .line 48
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;->mThreadPolicy:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 50
    :cond_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;->mVmPolicy:Landroid/os/StrictMode$VmPolicy;

    if-eqz v0, :cond_12

    .line 51
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/StrictModeContext$Impl;->mVmPolicy:Landroid/os/StrictMode$VmPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 53
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "StrictModeContext"

    invoke-static {v2, v0, v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->finishAsync(Ljava/lang/String;J)V

    .line 54
    return-void
.end method
