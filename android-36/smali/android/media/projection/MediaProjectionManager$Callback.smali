.class public abstract Landroid/media/projection/MediaProjectionManager$Callback;
.super Ljava/lang/Object;
.source "MediaProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onMediaProjectionEvent(Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 4
    .param p1, "event"    # Landroid/media/projection/MediaProjectionEvent;
    .param p2, "info"    # Landroid/media/projection/MediaProjectionInfo;
    .param p3, "session"    # Landroid/view/ContentRecordingSession;

    .line 382
    return-void
.end method

.method public blacklist onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 3
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;
    .param p2, "session"    # Landroid/view/ContentRecordingSession;

    .line 369
    return-void
.end method

.method public abstract greylist-max-o onStart(Landroid/media/projection/MediaProjectionInfo;)V
.end method

.method public abstract greylist-max-o onStop(Landroid/media/projection/MediaProjectionInfo;)V
.end method
