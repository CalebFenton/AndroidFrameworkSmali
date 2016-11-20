.class public abstract Landroid/view/InputEventSender;
.super Ljava/lang/Object;
.source "InputEventSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventSender"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mSenderPtr:J


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 56
    if-nez p1, :cond_0

    #@b
    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "inputChannel must not be null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 59
    :cond_0
    if-nez p2, :cond_1

    #@16
    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "looper must not be null"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 63
    :cond_1
    iput-object p1, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    #@21
    .line 64
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    #@27
    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@29
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@2c
    .line 66
    iget-object v1, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    #@2e
    .line 65
    invoke-static {v0, p1, v1}, Landroid/view/InputEventSender;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J

    #@31
    move-result-wide v0

    #@32
    iput-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    #@34
    .line 68
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@36
    const-string/jumbo v1, "dispose"

    #@39
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@3c
    .line 55
    return-void
.end method

.method private dispatchInputEventFinished(IZ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    #@0
    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventSender;->onInputEventFinished(IZ)V

    #@3
    .line 140
    return-void
.end method

.method private dispose(Z)V
    .locals 6
    .param p1, "finalized"    # Z

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 88
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 89
    if-eqz p1, :cond_0

    #@9
    .line 90
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@b
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@e
    .line 92
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@10
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@13
    .line 95
    :cond_1
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    #@15
    cmp-long v0, v0, v4

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 96
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    #@1b
    invoke-static {v0, v1}, Landroid/view/InputEventSender;->nativeDispose(J)V

    #@1e
    .line 97
    iput-wide v4, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    #@20
    .line 99
    :cond_2
    iput-object v2, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    #@22
    .line 100
    iput-object v2, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    #@24
    .line 87
    return-void
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/InputEventSender;",
            ">;",
            "Landroid/view/InputChannel;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeSendKeyEvent(JILandroid/view/KeyEvent;)Z
.end method

.method private static native nativeSendMotionEvent(JILandroid/view/MotionEvent;)Z
.end method


# virtual methods
.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 84
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/view/InputEventSender;->dispose(Z)V

    #@4
    .line 83
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    const/4 v0, 0x1

    #@1
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/InputEventSender;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@7
    .line 72
    return-void

    #@8
    .line 75
    :catchall_0
    move-exception v0

    #@9
    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@c
    .line 75
    throw v0
.end method

.method public onInputEventFinished(IZ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    #@0
    .prologue
    .line 109
    return-void
.end method

.method public final sendInputEvent(ILandroid/view/InputEvent;)Z
    .locals 4
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 122
    if-nez p2, :cond_0

    #@2
    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "event must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 125
    :cond_0
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    #@d
    const-wide/16 v2, 0x0

    #@f
    cmp-long v0, v0, v2

    #@11
    if-nez v0, :cond_1

    #@13
    .line 126
    const-string/jumbo v0, "InputEventSender"

    #@16
    const-string/jumbo v1, "Attempted to send an input event but the input event sender has already been disposed."

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 128
    const/4 v0, 0x0

    #@1d
    return v0

    #@1e
    .line 131
    :cond_1
    instance-of v0, p2, Landroid/view/KeyEvent;

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 132
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    #@24
    check-cast p2, Landroid/view/KeyEvent;

    #@26
    .end local p2    # "event":Landroid/view/InputEvent;
    invoke-static {v0, v1, p1, p2}, Landroid/view/InputEventSender;->nativeSendKeyEvent(JILandroid/view/KeyEvent;)Z

    #@29
    move-result v0

    #@2a
    return v0

    #@2b
    .line 134
    .restart local p2    # "event":Landroid/view/InputEvent;
    :cond_2
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    #@2d
    check-cast p2, Landroid/view/MotionEvent;

    #@2f
    .end local p2    # "event":Landroid/view/InputEvent;
    invoke-static {v0, v1, p1, p2}, Landroid/view/InputEventSender;->nativeSendMotionEvent(JILandroid/view/MotionEvent;)Z

    #@32
    move-result v0

    #@33
    return v0
.end method
