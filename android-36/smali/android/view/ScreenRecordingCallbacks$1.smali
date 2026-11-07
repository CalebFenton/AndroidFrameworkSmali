.class Landroid/view/ScreenRecordingCallbacks$1;
.super Landroid/window/IScreenRecordingCallback$Stub;
.source "ScreenRecordingCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ScreenRecordingCallbacks;->addCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ScreenRecordingCallbacks;


# direct methods
.method constructor blacklist <init>(Landroid/view/ScreenRecordingCallbacks;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/ScreenRecordingCallbacks;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Landroid/view/ScreenRecordingCallbacks$1;->this$0:Landroid/view/ScreenRecordingCallbacks;

    invoke-direct {p0}, Landroid/window/IScreenRecordingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onScreenRecordingStateChanged(Z)V
    .registers 4
    .param p1, "visibleInScreenRecording"    # Z

    .line 84
    if-eqz p1, :cond_4

    .line 85
    const/4 v0, 0x1

    goto :goto_5

    .line 86
    :cond_4
    const/4 v0, 0x0

    :goto_5
    nop

    .line 87
    .local v0, "state":I
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks$1;->this$0:Landroid/view/ScreenRecordingCallbacks;

    invoke-static {v1, v0}, Landroid/view/ScreenRecordingCallbacks;->-$$Nest$mnotifyCallbacks(Landroid/view/ScreenRecordingCallbacks;I)V

    .line 88
    return-void
.end method
