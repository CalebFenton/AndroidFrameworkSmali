.class public final Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;
.super Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestFinishedInfoListener"
.end annotation


# instance fields
.field private final blacklist mWrappedListener:Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

    .line 183
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 184
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->mWrappedListener:Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

    .line 185
    return-void
.end method


# virtual methods
.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->mWrappedListener:Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onRequestFinished(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;)V
    .registers 3
    .param p1, "requestInfo"    # Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;

    .line 189
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->mWrappedListener:Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;->onRequestFinished(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;)V

    .line 190
    return-void
.end method
