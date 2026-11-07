.class public Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacketKeepaliveCallback"
.end annotation


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 1

    .line 2397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2398
    return-void
.end method


# virtual methods
.method public greylist-max-r onError(I)V
    .registers 2
    .param p1, "error"    # I

    .line 2411
    return-void
.end method

.method public blacklist onPaused()V
    .registers 1

    .line 2408
    return-void
.end method

.method public blacklist onResumed()V
    .registers 1

    .line 2403
    return-void
.end method

.method public greylist-max-r onStarted()V
    .registers 1

    .line 2401
    return-void
.end method

.method public greylist-max-r onStopped()V
    .registers 1

    .line 2406
    return-void
.end method
