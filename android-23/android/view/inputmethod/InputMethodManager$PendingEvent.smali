.class final Landroid/view/inputmethod/InputMethodManager$PendingEvent;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingEvent"
.end annotation


# instance fields
.field public mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

.field public mEvent:Landroid/view/InputEvent;

.field public mHandled:Z

.field public mHandler:Landroid/os/Handler;

.field public mInputMethodId:Ljava/lang/String;

.field public mToken:Ljava/lang/Object;

.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method private constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;

    #@0
    .prologue
    .line 2234
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

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
    .line 2243
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    #@3
    .line 2244
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    #@5
    .line 2245
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    #@7
    .line 2246
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    #@9
    .line 2247
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    #@b
    .line 2248
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    #@e
    .line 2242
    return-void
.end method

.method public run()V
    .locals 3

    #@0
    .prologue
    .line 2253
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    #@2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    #@4
    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    #@6
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    #@9
    .line 2255
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@b
    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@d
    monitor-enter v1

    #@e
    .line 2256
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@10
    invoke-static {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->-wrap1(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 2252
    return-void

    #@15
    .line 2255
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method
