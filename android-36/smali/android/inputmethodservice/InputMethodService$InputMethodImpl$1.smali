.class Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;
.super Landroid/view/InputEventReceiver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$1"    # Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1175
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->this$1:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1178
    const/4 v0, 0x0

    .line 1180
    .local v0, "handled":Z
    :try_start_1
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_24

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 1183
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v2
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_28

    if-nez v2, :cond_12

    .line 1192
    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1186
    return-void

    .line 1188
    :cond_12
    :try_start_12
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->this$1:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-static {v2, v1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->-$$Nest$mdeliverStylusHandwritingMotionEvent(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/view/MotionEvent;)V

    .line 1189
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->this$1:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mscheduleHandwritingSessionTimeout(Landroid/inputmethodservice/InputMethodService;)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_28

    .line 1190
    const/4 v0, 0x1

    .line 1192
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1193
    nop

    .line 1194
    return-void

    .line 1192
    :cond_24
    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1181
    return-void

    .line 1192
    :catchall_28
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1193
    throw v1
.end method
