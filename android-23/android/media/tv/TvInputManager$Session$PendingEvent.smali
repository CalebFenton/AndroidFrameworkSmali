.class final Landroid/media/tv/TvInputManager$Session$PendingEvent;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingEvent"
.end annotation


# instance fields
.field public mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

.field public mEvent:Landroid/view/InputEvent;

.field public mEventHandler:Landroid/os/Handler;

.field public mEventToken:Ljava/lang/Object;

.field public mHandled:Z

.field final synthetic this$1:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$Session;

    #@0
    .prologue
    .line 2101
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->this$1:Landroid/media/tv/TvInputManager$Session;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$Session;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;-><init>(Landroid/media/tv/TvInputManager$Session;)V

    #@3
    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2109
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    #@3
    .line 2110
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    #@5
    .line 2111
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    #@7
    .line 2112
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    #@9
    .line 2113
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mHandled:Z

    #@c
    .line 2108
    return-void
.end method

.method public run()V
    .locals 3

    #@0
    .prologue
    .line 2118
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    #@2
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    #@4
    iget-boolean v2, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mHandled:Z

    #@6
    invoke-interface {v0, v1, v2}, Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    #@9
    .line 2120
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    #@b
    monitor-enter v1

    #@c
    .line 2121
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->this$1:Landroid/media/tv/TvInputManager$Session;

    #@e
    invoke-static {v0, p0}, Landroid/media/tv/TvInputManager$Session;->-wrap0(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 2117
    return-void

    #@13
    .line 2120
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method
