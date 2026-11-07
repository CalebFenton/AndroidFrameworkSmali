.class public final Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;
.super Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkQualityThroughputListenerWrapper"
.end annotation


# instance fields
.field private final blacklist mWrappedListener:Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;

    .line 245
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 246
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->mWrappedListener:Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;

    .line 247
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 266
    if-eqz p1, :cond_13

    instance-of v0, p1, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;

    if-nez v0, :cond_7

    goto :goto_13

    .line 269
    :cond_7
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->mWrappedListener:Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;

    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;

    iget-object v1, v1, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->mWrappedListener:Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 267
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->mWrappedListener:Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 261
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->mWrappedListener:Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist onThroughputObservation(IJI)V
    .registers 6
    .param p1, "throughputKbps"    # I
    .param p2, "whenMs"    # J
    .param p4, "source"    # I

    .line 251
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$NetworkQualityThroughputListenerWrapper;->mWrappedListener:Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;->onThroughputObservation(IJI)V

    .line 252
    return-void
.end method
