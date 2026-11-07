.class final Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;
.super Ljava/lang/Object;
.source "TvAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingEvent"
.end annotation


# instance fields
.field public blacklist mCallback:Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;

.field public blacklist mEvent:Landroid/view/InputEvent;

.field public blacklist mEventHandler:Landroid/os/Handler;

.field public blacklist mEventToken:Ljava/lang/Object;

.field public blacklist mHandled:Z

.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdManager$Session;


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager$Session;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1117
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->this$0:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager$Session;Landroid/media/tv/ad/TvAdManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;-><init>(Landroid/media/tv/ad/TvAdManager$Session;)V

    return-void
.end method


# virtual methods
.method public blacklist recycle()V
    .registers 2

    .line 1125
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 1126
    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    .line 1127
    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mCallback:Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;

    .line 1128
    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    .line 1129
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mHandled:Z

    .line 1130
    return-void
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 1134
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mCallback:Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    iget-boolean v2, p0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mHandled:Z

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    .line 1136
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 1137
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->this$0:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-static {v1, p0}, Landroid/media/tv/ad/TvAdManager$Session;->-$$Nest$mrecyclePendingEventLocked(Landroid/media/tv/ad/TvAdManager$Session;Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V

    .line 1138
    monitor-exit v0

    .line 1139
    return-void

    .line 1138
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1
.end method
