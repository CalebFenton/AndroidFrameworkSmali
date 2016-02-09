.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$H;,
        Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;,
        Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;,
        Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;,
        Landroid/view/inputmethod/InputMethodManager$PendingEvent;,
        Landroid/view/inputmethod/InputMethodManager$1;
    }
.end annotation


# static fields
.field public static final CONTROL_START_INITIAL:I = 0x100

.field public static final CONTROL_WINDOW_FIRST:I = 0x4

.field public static final CONTROL_WINDOW_IS_TEXT_EDITOR:I = 0x2

.field public static final CONTROL_WINDOW_VIEW_HAS_FOCUS:I = 0x1

.field static final DEBUG:Z = false

.field public static final DISPATCH_HANDLED:I = 0x1

.field public static final DISPATCH_IN_PROGRESS:I = -0x1

.field public static final DISPATCH_NOT_HANDLED:I = 0x0

.field public static final HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final HIDE_NOT_ALWAYS:I = 0x2

.field static final INPUT_METHOD_NOT_RESPONDING_TIMEOUT:J = 0x9c4L

.field static final MSG_BIND:I = 0x2

.field static final MSG_DUMP:I = 0x1

.field static final MSG_FLUSH_INPUT_EVENT:I = 0x7

.field static final MSG_SEND_INPUT_EVENT:I = 0x5

.field static final MSG_SET_ACTIVE:I = 0x4

.field static final MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = 0x9

.field static final MSG_TIMEOUT_INPUT_EVENT:I = 0x6

.field static final MSG_UNBIND:I = 0x3

.field private static final NOT_AN_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = -0x1

.field static final PENDING_EVENT_COUNTER:Ljava/lang/String; = "aq:imm"

.field private static final REQUEST_UPDATE_CURSOR_ANCHOR_INFO_NONE:I = 0x0

.field public static final RESULT_HIDDEN:I = 0x3

.field public static final RESULT_SHOWN:I = 0x2

.field public static final RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final SHOW_FORCED:I = 0x2

.field public static final SHOW_IMPLICIT:I = 0x1

.field public static final SHOW_IM_PICKER_MODE_AUTO:I = 0x0

.field public static final SHOW_IM_PICKER_MODE_EXCLUDE_AUXILIARY_SUBTYPES:I = 0x2

.field public static final SHOW_IM_PICKER_MODE_INCLUDE_AUXILIARY_SUBTYPES:I = 0x1

.field static final TAG:Ljava/lang/String; = "InputMethodManager"

.field static sInstance:Landroid/view/inputmethod/InputMethodManager;


# instance fields
.field mActive:Z

.field mBindSequence:I

.field final mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

.field mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mCurChannel:Landroid/view/InputChannel;

.field mCurId:Ljava/lang/String;

.field mCurMethod:Lcom/android/internal/view/IInputMethodSession;

.field mCurRootView:Landroid/view/View;

.field mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

.field mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

.field private mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

.field mCursorCandEnd:I

.field mCursorCandStart:I

.field mCursorRect:Landroid/graphics/Rect;

.field mCursorSelEnd:I

.field mCursorSelStart:I

.field final mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

.field mFullscreenMode:Z

.field final mH:Landroid/view/inputmethod/InputMethodManager$H;

.field mHasBeenInactive:Z

.field final mIInputContext:Lcom/android/internal/view/IInputContext;

.field private mLastSentUserActionNotificationSequenceNumber:I

.field final mMainLooper:Landroid/os/Looper;

.field mNextServedView:Landroid/view/View;

.field private mNextUserActionNotificationSequenceNumber:I

.field final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestUpdateCursorAnchorInfoMonitorMode:I

.field mServedConnecting:Z

.field mServedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

.field mServedView:Landroid/view/View;

.field final mService:Lcom/android/internal/view/IInputMethodManager;

.field mTmpCursorRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -set0(Landroid/view/inputmethod/InputMethodManager;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/view/inputmethod/InputMethodManager;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/view/inputmethod/InputMethodManager;ZZ)Z
    .locals 1
    .param p1, "forceNewFocus"    # Z
    .param p2, "finishComposingText"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(ZZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 0
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V
    .locals 4
    .param p1, "service"    # Lcom/android/internal/view/IInputMethodManager;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/16 v3, 0x14

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, -0x1

    #@4
    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 273
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    #@9
    .line 279
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    #@c
    .line 325
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    #@13
    .line 326
    new-instance v0, Landroid/graphics/Rect;

    #@15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@18
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    #@1a
    .line 342
    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    #@1c
    .line 348
    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastSentUserActionNotificationSequenceNumber:I

    #@1e
    .line 354
    const/4 v0, 0x0

    #@1f
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    #@21
    .line 361
    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    #@23
    .line 378
    iput v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    #@25
    .line 380
    new-instance v0, Landroid/util/Pools$SimplePool;

    #@27
    invoke-direct {v0, v3}, Landroid/util/Pools$SimplePool;-><init>(I)V

    #@2a
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    #@2c
    .line 381
    new-instance v0, Landroid/util/SparseArray;

    #@2e
    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    #@31
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    #@33
    .line 554
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$1;

    #@35
    invoke-direct {v0, p0}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    #@38
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    #@3a
    .line 601
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    #@3c
    invoke-direct {v0, p0, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    #@3f
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    #@41
    .line 604
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@43
    .line 605
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    #@45
    .line 606
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$H;

    #@47
    invoke-direct {v0, p0, p2}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    #@4a
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@4c
    .line 607
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    #@4e
    .line 608
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    #@50
    .line 607
    invoke-direct {v0, p2, v1, p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V

    #@53
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@55
    .line 603
    return-void
.end method

.method private checkFocusNoStartInput(ZZ)Z
    .locals 6
    .param p1, "forceNewFocus"    # Z
    .param p2, "finishComposingText"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1363
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@4
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    #@6
    if-ne v1, v2, :cond_0

    #@8
    if-eqz p1, :cond_2

    #@a
    .line 1367
    :cond_0
    const/4 v0, 0x0

    #@b
    .line 1368
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@d
    monitor-enter v2

    #@e
    .line 1369
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@10
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    #@12
    if-ne v1, v3, :cond_1

    #@14
    if-eqz p1, :cond_3

    #@16
    .line 1378
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    #@18
    if-nez v1, :cond_4

    #@1a
    .line 1379
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    #@1d
    .line 1383
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v2

    #@21
    .line 1384
    return v4

    #@22
    .line 1364
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    return v4

    #@23
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    monitor-exit v2

    #@24
    .line 1370
    return v4

    #@25
    .line 1387
    :cond_4
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@27
    .line 1389
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    #@29
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@2b
    .line 1390
    const/4 v1, 0x0

    #@2c
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    #@2e
    .line 1391
    const/4 v1, 0x0

    #@2f
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@31
    .line 1392
    const/4 v1, 0x1

    #@32
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 1395
    if-eqz p2, :cond_5

    #@37
    if-eqz v0, :cond_5

    #@39
    .line 1396
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@3c
    .line 1399
    :cond_5
    return v5

    #@3d
    .line 1368
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1
.end method

.method private flushPendingEventsLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x7

    #@1
    .line 1885
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@3
    invoke-virtual {v4, v6}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(I)V

    #@6
    .line 1887
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v0

    #@c
    .line 1888
    .local v0, "count":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@f
    .line 1889
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@14
    move-result v3

    #@15
    .line 1890
    .local v3, "seq":I
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@17
    const/4 v5, 0x0

    #@18
    invoke-virtual {v4, v6, v3, v5}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    #@1b
    move-result-object v2

    #@1c
    .line 1891
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    #@1d
    invoke-virtual {v2, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    #@20
    .line 1892
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@23
    .line 1888
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1884
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "seq":I
    :cond_0
    return-void
.end method

.method public static getInstance()Landroid/view/inputmethod/InputMethodManager;
    .locals 5

    #@0
    .prologue
    .line 617
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    #@2
    monitor-enter v3

    #@3
    .line 618
    :try_start_0
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 619
    const-string/jumbo v2, "input_method"

    #@a
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 620
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    #@11
    move-result-object v1

    #@12
    .line 621
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    new-instance v2, Landroid/view/inputmethod/InputMethodManager;

    #@14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@17
    move-result-object v4

    #@18
    invoke-direct {v2, v1, v4}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V

    #@1b
    sput-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    #@1d
    .line 623
    :cond_0
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v3

    #@20
    return-object v2

    #@21
    .line 617
    .end local v1    # "service":Lcom/android/internal/view/IInputMethodManager;
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2
.end method

.method private notifyInputConnectionFinished()V
    .locals 2

    #@0
    .prologue
    .line 833
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 838
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@a
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@d
    move-result-object v0

    #@e
    .line 839
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@10
    .line 841
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@12
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    #@15
    .line 832
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_0
    return-void
.end method

.method private obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "inputMethodId"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1898
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    #@3
    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    #@9
    .line 1899
    .local v0, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    if-nez v0, :cond_0

    #@b
    .line 1900
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    #@d
    .end local v0    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    invoke-direct {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    #@10
    .line 1902
    .restart local v0    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :cond_0
    iput-object p1, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    #@12
    .line 1903
    iput-object p2, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    #@14
    .line 1904
    iput-object p3, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    #@16
    .line 1905
    iput-object p4, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    #@18
    .line 1906
    iput-object p5, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    #@1a
    .line 1907
    return-object v0
.end method

.method public static peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    #@0
    .prologue
    .line 633
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    #@2
    return-object v0
.end method

.method private recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 1
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    #@0
    .prologue
    .line 1911
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->recycle()V

    #@3
    .line 1912
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    #@5
    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@8
    .line 1910
    return-void
.end method

.method static scheduleCheckFocusLocked(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1346
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@3
    move-result-object v0

    #@4
    .line 1347
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@6
    .line 1348
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    #@9
    .line 1345
    :cond_0
    return-void
.end method

.method private showInputMethodPickerLocked()V
    .locals 4

    #@0
    .prologue
    .line 1942
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    #@4
    const/4 v3, 0x0

    #@5
    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 1940
    :goto_0
    return-void

    #@9
    .line 1943
    :catch_0
    move-exception v0

    #@a
    .line 1944
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputMethodManager"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "IME died: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0
.end method


# virtual methods
.method public checkFocus()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1356
    const/4 v0, 0x1

    #@2
    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(ZZ)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1357
    const/4 v0, 0x0

    #@9
    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    #@c
    .line 1355
    :cond_0
    return-void
.end method

.method clearBindingLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 774
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    #@4
    .line 775
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    #@7
    .line 776
    const/4 v0, -0x1

    #@8
    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    #@a
    .line 777
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@c
    .line 778
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@e
    .line 772
    return-void
.end method

.method clearConnectionLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 800
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    #@3
    .line 801
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@5
    .line 802
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 803
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    #@b
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->deactivate()V

    #@e
    .line 804
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    #@10
    .line 799
    :cond_0
    return-void
.end method

.method closeCurrentInput()V
    .locals 5

    #@0
    .prologue
    .line 1404
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    #@4
    const/4 v3, 0x2

    #@5
    const/4 v4, 0x0

    #@6
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1402
    :goto_0
    return-void

    #@a
    .line 1405
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I
    .locals 11
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1773
    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@4
    monitor-enter v10

    #@5
    .line 1774
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 1775
    instance-of v1, p1, Landroid/view/KeyEvent;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1776
    move-object v0, p1

    #@e
    check-cast v0, Landroid/view/KeyEvent;

    #@10
    move-object v7, v0

    #@11
    .line 1777
    .local v7, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v7}, Landroid/view/KeyEvent;->getAction()I

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 1778
    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    #@1a
    move-result v1

    #@1b
    const/16 v2, 0x3f

    #@1d
    if-ne v1, v2, :cond_0

    #@1f
    .line 1779
    invoke-virtual {v7}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_0

    #@25
    .line 1780
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v10

    #@29
    .line 1781
    return v3

    #@2a
    .line 1788
    .end local v7    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@2c
    move-object v1, p0

    #@2d
    move-object v2, p1

    #@2e
    move-object v3, p2

    #@2f
    move-object v5, p3

    #@30
    move-object v6, p4

    #@31
    .line 1787
    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    #@34
    move-result-object v9

    #@35
    .line 1789
    .local v9, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    #@37
    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 1791
    invoke-virtual {p0, v9}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    move-result v1

    #@41
    monitor-exit v10

    #@42
    return v1

    #@43
    .line 1795
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@45
    const/4 v2, 0x5

    #@46
    invoke-virtual {v1, v2, v9}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@49
    move-result-object v8

    #@4a
    .line 1796
    .local v8, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@4b
    invoke-virtual {v8, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@4e
    .line 1797
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@50
    invoke-virtual {v1, v8}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    .line 1798
    const/4 v1, -0x1

    #@54
    monitor-exit v10

    #@55
    return v1

    #@56
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :cond_2
    monitor-exit v10

    #@57
    .line 1801
    return v2

    #@58
    .line 1773
    :catchall_0
    move-exception v1

    #@59
    monitor-exit v10

    #@5a
    throw v1
.end method

.method public displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 861
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@3
    .line 862
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@5
    monitor-enter v2

    #@6
    .line 863
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@8
    if-eq v1, p1, :cond_0

    #@a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 864
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@10
    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 868
    :cond_0
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@18
    .line 869
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 871
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@1e
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@20
    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    :cond_1
    :goto_0
    monitor-exit v2

    #@24
    .line 860
    return-void

    #@25
    :cond_2
    monitor-exit v2

    #@26
    .line 865
    return-void

    #@27
    .line 862
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1

    #@2a
    .line 872
    :catch_0
    move-exception v0

    #@2b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2180
    new-instance v0, Landroid/util/PrintWriterPrinter;

    #@2
    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@5
    .line 2181
    .local v0, "p":Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Input method client state for "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, ":"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@23
    .line 2183
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "  mService="

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3c
    .line 2184
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v2, "  mMainLooper="

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@55
    .line 2185
    new-instance v1, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v2, "  mIInputContext="

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@6e
    .line 2186
    new-instance v1, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v2, "  mActive="

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    #@7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    .line 2187
    const-string/jumbo v2, " mHasBeenInactive="

    #@83
    .line 2186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    .line 2187
    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    #@89
    .line 2186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    .line 2188
    const-string/jumbo v2, " mBindSequence="

    #@90
    .line 2186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    .line 2188
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    #@96
    .line 2186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    .line 2189
    const-string/jumbo v2, " mCurId="

    #@9d
    .line 2186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    .line 2189
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@a3
    .line 2186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v1

    #@a7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v1

    #@ab
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@ae
    .line 2190
    new-instance v1, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v2, "  mCurMethod="

    #@b6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v1

    #@ba
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v1

    #@c0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v1

    #@c4
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@c7
    .line 2191
    new-instance v1, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v2, "  mCurRootView="

    #@cf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v1

    #@d3
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    #@d5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v1

    #@d9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v1

    #@dd
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@e0
    .line 2192
    new-instance v1, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v2, "  mServedView="

    #@e8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v1

    #@ec
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v1

    #@f2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v1

    #@f6
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@f9
    .line 2193
    new-instance v1, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    const-string/jumbo v2, "  mNextServedView="

    #@101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v1

    #@105
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    #@107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v1

    #@10b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v1

    #@10f
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@112
    .line 2194
    new-instance v1, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    const-string/jumbo v2, "  mServedConnecting="

    #@11a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v1

    #@11e
    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    #@120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@123
    move-result-object v1

    #@124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v1

    #@128
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@12b
    .line 2195
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    #@12d
    if-eqz v1, :cond_0

    #@12f
    .line 2196
    const-string/jumbo v1, "  mCurrentTextBoxAttribute:"

    #@132
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@135
    .line 2197
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    #@137
    const-string/jumbo v2, "    "

    #@13a
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@13d
    .line 2201
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@13f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@142
    const-string/jumbo v2, "  mServedInputConnection="

    #@145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v1

    #@149
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@14b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v1

    #@14f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v1

    #@153
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@156
    .line 2202
    new-instance v1, Ljava/lang/StringBuilder;

    #@158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15b
    const-string/jumbo v2, "  mCompletions="

    #@15e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v1

    #@162
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v1

    #@168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v1

    #@16c
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@16f
    .line 2203
    new-instance v1, Ljava/lang/StringBuilder;

    #@171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v2, "  mCursorRect="

    #@177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v1

    #@17b
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    #@17d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v1

    #@181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@184
    move-result-object v1

    #@185
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@188
    .line 2204
    new-instance v1, Ljava/lang/StringBuilder;

    #@18a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18d
    const-string/jumbo v2, "  mCursorSelStart="

    #@190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v1

    #@194
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    #@196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@199
    move-result-object v1

    #@19a
    .line 2205
    const-string/jumbo v2, " mCursorSelEnd="

    #@19d
    .line 2204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v1

    #@1a1
    .line 2205
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    #@1a3
    .line 2204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v1

    #@1a7
    .line 2206
    const-string/jumbo v2, " mCursorCandStart="

    #@1aa
    .line 2204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v1

    #@1ae
    .line 2206
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    #@1b0
    .line 2204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v1

    #@1b4
    .line 2207
    const-string/jumbo v2, " mCursorCandEnd="

    #@1b7
    .line 2204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v1

    #@1bb
    .line 2207
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    #@1bd
    .line 2204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v1

    #@1c1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c4
    move-result-object v1

    #@1c5
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1c8
    .line 2208
    new-instance v1, Ljava/lang/StringBuilder;

    #@1ca
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1cd
    const-string/jumbo v2, "  mNextUserActionNotificationSequenceNumber="

    #@1d0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v1

    #@1d4
    .line 2209
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    #@1d6
    .line 2208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v1

    #@1da
    .line 2210
    const-string/jumbo v2, " mLastSentUserActionNotificationSequenceNumber="

    #@1dd
    .line 2208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v1

    #@1e1
    .line 2211
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mLastSentUserActionNotificationSequenceNumber:I

    #@1e3
    .line 2208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v1

    #@1e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ea
    move-result-object v1

    #@1eb
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1ee
    .line 2179
    return-void

    #@1ef
    .line 2199
    :cond_0
    const-string/jumbo v1, "  mCurrentTextBoxAttribute: null"

    #@1f2
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1f5
    goto/16 :goto_0
.end method

.method finishInputLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 812
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    #@3
    .line 813
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 815
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 817
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@d
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    #@f
    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodManager;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 821
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->notifyInputConnectionFinished()V

    #@15
    .line 822
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@17
    .line 823
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@19
    .line 824
    const/4 v1, 0x0

    #@1a
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    #@1c
    .line 825
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    #@1f
    .line 811
    :cond_1
    return-void

    #@20
    .line 818
    :catch_0
    move-exception v0

    #@21
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method finishedInputEvent(IZZ)V
    .locals 8
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    #@0
    .prologue
    .line 1847
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v3

    #@3
    .line 1848
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 1849
    .local v0, "index":I
    if-gez v0, :cond_0

    #@b
    monitor-exit v3

    #@c
    .line 1850
    return-void

    #@d
    .line 1853
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    #@15
    .line 1854
    .local v1, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    #@1a
    .line 1855
    const-string/jumbo v2, "aq:imm"

    #@1d
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@22
    move-result v4

    #@23
    const-wide/16 v6, 0x4

    #@25
    invoke-static {v6, v7, v2, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    #@28
    .line 1857
    if-eqz p3, :cond_1

    #@2a
    .line 1858
    const-string/jumbo v2, "InputMethodManager"

    #@2d
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "Timeout waiting for IME to handle input event after 2500 ms: "

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    .line 1859
    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    #@3b
    .line 1858
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    :goto_0
    monitor-exit v3

    #@47
    .line 1865
    invoke-virtual {p0, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    #@4a
    .line 1845
    return-void

    #@4b
    .line 1861
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@4d
    const/4 v4, 0x6

    #@4e
    invoke-virtual {v2, v4, v1}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 1847
    .end local v0    # "index":I
    .end local v1    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :catchall_0
    move-exception v2

    #@53
    monitor-exit v3

    #@54
    throw v2
.end method

.method public focusIn(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1287
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v0

    #@3
    .line 1288
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1286
    return-void

    #@8
    .line 1287
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method focusInLocked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1295
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    #@2
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@5
    move-result-object v1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 1299
    return-void

    #@9
    .line 1302
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    #@b
    .line 1303
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->scheduleCheckFocusLocked(Landroid/view/View;)V

    #@e
    .line 1292
    return-void
.end method

.method public focusOut(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1311
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v0

    #@3
    .line 1315
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eq v1, p1, :cond_0

    #@7
    :cond_0
    monitor-exit v0

    #@8
    .line 1310
    return-void

    #@9
    .line 1311
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public getClient()Lcom/android/internal/view/IInputMethodClient;
    .locals 1

    #@0
    .prologue
    .line 638
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    #@2
    return-object v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5

    #@0
    .prologue
    .line 1969
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v2

    #@3
    .line 1971
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@5
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    monitor-exit v2

    #@a
    return-object v1

    #@b
    .line 1972
    :catch_0
    move-exception v0

    #@c
    .line 1973
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "InputMethodManager"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "IME died: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 1974
    const/4 v1, 0x0

    #@29
    monitor-exit v2

    #@2a
    return-object v1

    #@2b
    .line 1969
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 656
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 657
    :catch_0
    move-exception v0

    #@8
    .line 658
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method public getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .locals 3
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 672
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@3
    .line 673
    if-nez p1, :cond_0

    #@5
    .line 672
    :goto_0
    invoke-interface {v2, v1, p2}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 673
    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    goto :goto_0

    #@f
    .line 674
    :catch_0
    move-exception v0

    #@10
    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@12
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@15
    throw v1
.end method

.method public getInputContext()Lcom/android/internal/view/IInputContext;
    .locals 1

    #@0
    .prologue
    .line 643
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    #@2
    return-object v0
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 648
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 649
    :catch_0
    move-exception v0

    #@8
    .line 650
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 5

    #@0
    .prologue
    .line 2071
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v2

    #@3
    .line 2073
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@5
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodWindowVisibleHeight()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    monitor-exit v2

    #@a
    return v1

    #@b
    .line 2074
    :catch_0
    move-exception v0

    #@c
    .line 2075
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "InputMethodManager"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "IME died: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 2076
    const/4 v1, 0x0

    #@29
    monitor-exit v2

    #@2a
    return v1

    #@2b
    .line 2071
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5

    #@0
    .prologue
    .line 2169
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v2

    #@3
    .line 2171
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@5
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    monitor-exit v2

    #@a
    return-object v1

    #@b
    .line 2172
    :catch_0
    move-exception v0

    #@c
    .line 2173
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "InputMethodManager"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "IME died: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 2174
    const/4 v1, 0x0

    #@29
    monitor-exit v2

    #@2a
    return-object v1

    #@2b
    .line 2169
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2035
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v8

    #@3
    .line 2037
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    #@5
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 2040
    .local v5, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :try_start_1
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@a
    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    #@d
    move-result-object v3

    #@e
    .line 2042
    .local v3, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    #@f
    .line 2043
    .local v6, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result v7

    #@15
    if-eqz v7, :cond_1

    #@17
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_0
    :goto_0
    monitor-exit v8

    #@18
    .line 2062
    return-object v5

    #@19
    .line 2044
    .restart local v3    # "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1c
    move-result v0

    #@1d
    .line 2045
    .local v0, "N":I
    const/4 v2, 0x0

    #@1e
    .end local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    #@20
    .line 2046
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    .line 2047
    .local v4, "o":Ljava/lang/Object;
    instance-of v7, v4, Landroid/view/inputmethod/InputMethodInfo;

    #@26
    if-eqz v7, :cond_4

    #@28
    .line 2048
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@2b
    move-result v7

    #@2c
    if-eqz v7, :cond_2

    #@2e
    .line 2049
    const-string/jumbo v7, "InputMethodManager"

    #@31
    const-string/jumbo v9, "IMI list already contains the same InputMethod."

    #@34
    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 2059
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v1

    #@39
    .line 2060
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v7, "InputMethodManager"

    #@3c
    new-instance v9, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v10, "IME died: "

    #@44
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v9

    #@48
    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@4a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v9

    #@4e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v9

    #@52
    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@55
    goto :goto_0

    #@56
    .line 2035
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :catchall_0
    move-exception v7

    #@57
    monitor-exit v8

    #@58
    throw v7

    #@59
    .line 2052
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v5    # "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :cond_2
    :try_start_4
    new-instance v6, Ljava/util/ArrayList;

    #@5b
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@5e
    .line 2053
    .local v6, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    #@60
    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 2045
    .end local v6    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@65
    goto :goto_1

    #@66
    .line 2054
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_4
    if-eqz v6, :cond_3

    #@68
    instance-of v7, v4, Landroid/view/inputmethod/InputMethodSubtype;

    #@6a
    if-eqz v7, :cond_3

    #@6c
    .line 2055
    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    #@6e
    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@71
    goto :goto_2
.end method

.method public hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1734
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->hideMySoftInput(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1732
    return-void

    #@6
    .line 1735
    :catch_0
    move-exception v0

    #@7
    .line 1736
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1021
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .locals 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1042
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@4
    .line 1043
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@6
    monitor-enter v2

    #@7
    .line 1044
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@9
    if-eqz v1, :cond_0

    #@b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@d
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v1

    #@11
    if-eq v1, p1, :cond_1

    #@13
    :cond_0
    monitor-exit v2

    #@14
    .line 1045
    return v4

    #@15
    .line 1049
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@17
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    #@19
    invoke-interface {v1, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result v1

    #@1d
    monitor-exit v2

    #@1e
    return v1

    #@1f
    .line 1050
    :catch_0
    move-exception v0

    #@20
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v2

    #@21
    .line 1052
    return v4

    #@22
    .line 1043
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public hideStatusIcon(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "imeToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 689
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 687
    return-void

    #@8
    .line 690
    :catch_0
    move-exception v0

    #@9
    .line 691
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@b
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@e
    throw v1
.end method

.method invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V
    .locals 2
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .param p2, "handled"    # Z

    #@0
    .prologue
    .line 1870
    iput-boolean p2, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    #@2
    .line 1871
    iget-object v1, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    #@4
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 1874
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->run()V

    #@11
    .line 1869
    :goto_0
    return-void

    #@12
    .line 1878
    :cond_0
    iget-object v1, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    #@14
    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@17
    move-result-object v0

    #@18
    .line 1879
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@1c
    .line 1880
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1f
    goto :goto_0
.end method

.method public isAcceptingText()Z
    .locals 1

    #@0
    .prologue
    .line 765
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@3
    .line 766
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isActive()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 754
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@4
    .line 755
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@6
    monitor-enter v1

    #@7
    .line 756
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@9
    if-eqz v2, :cond_0

    #@b
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-eqz v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    monitor-exit v1

    #@11
    return v0

    #@12
    .line 755
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public isActive(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 741
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@4
    .line 742
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@6
    monitor-enter v1

    #@7
    .line 743
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@9
    if-eq v2, p1, :cond_0

    #@b
    .line 744
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 745
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@11
    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    #@14
    move-result v2

    #@15
    .line 743
    if-eqz v2, :cond_1

    #@17
    .line 746
    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    if-eqz v2, :cond_1

    #@1b
    const/4 v0, 0x1

    #@1c
    :cond_1
    monitor-exit v1

    #@1d
    .line 743
    return v0

    #@1e
    .line 742
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method public isCursorAnchorInfoEnabled()Z
    .locals 4

    #@0
    .prologue
    .line 1568
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v3

    #@3
    .line 1569
    :try_start_0
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    #@5
    and-int/lit8 v2, v2, 0x1

    #@7
    if-eqz v2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 1571
    .local v0, "isImmediate":Z
    :goto_0
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    and-int/lit8 v2, v2, 0x2

    #@e
    if-eqz v2, :cond_1

    #@10
    const/4 v1, 0x1

    #@11
    .line 1573
    .local v1, "isMonitoring":Z
    :goto_1
    if-nez v0, :cond_2

    #@13
    .end local v1    # "isMonitoring":Z
    :goto_2
    monitor-exit v3

    #@14
    return v1

    #@15
    .line 1569
    .end local v0    # "isImmediate":Z
    :cond_0
    const/4 v0, 0x0

    #@16
    .restart local v0    # "isImmediate":Z
    goto :goto_0

    #@17
    .line 1571
    :cond_1
    const/4 v1, 0x0

    #@18
    .restart local v1    # "isMonitoring":Z
    goto :goto_1

    #@19
    .line 1573
    :cond_2
    const/4 v1, 0x1

    #@1a
    goto :goto_2

    #@1b
    .line 1568
    .end local v0    # "isImmediate":Z
    .end local v1    # "isMonitoring":Z
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit v3

    #@1d
    throw v2
.end method

.method public isFullscreenMode()Z
    .locals 1

    #@0
    .prologue
    .line 733
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    #@2
    return v0
.end method

.method public isWatchingCursor(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1558
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V
    .locals 2
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I

    #@0
    .prologue
    .line 721
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 719
    return-void

    #@6
    .line 722
    :catch_0
    move-exception v0

    #@7
    .line 723
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public notifyUserAction()V
    .locals 5

    #@0
    .prologue
    .line 2002
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v2

    #@3
    .line 2003
    :try_start_0
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastSentUserActionNotificationSequenceNumber:I

    #@5
    .line 2004
    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 2003
    if-ne v1, v3, :cond_0

    #@9
    monitor-exit v2

    #@a
    .line 2012
    return-void

    #@b
    .line 2022
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@d
    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    #@f
    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodManager;->notifyUserAction(I)V

    #@12
    .line 2024
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    #@14
    .line 2023
    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastSentUserActionNotificationSequenceNumber:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    :goto_0
    monitor-exit v2

    #@17
    .line 2001
    return-void

    #@18
    .line 2025
    :catch_0
    move-exception v0

    #@19
    .line 2026
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "InputMethodManager"

    #@1c
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v4, "IME died: "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 2002
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V
    .locals 12
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "focusedView"    # Landroid/view/View;
    .param p3, "softInputMode"    # I
    .param p4, "first"    # Z
    .param p5, "windowFlags"    # I

    #@0
    .prologue
    .line 1415
    const/4 v10, 0x0

    #@1
    .line 1416
    .local v10, "forceNewFocus":Z
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@3
    monitor-enter v2

    #@4
    .line 1421
    :try_start_0
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1423
    const/4 v1, 0x0

    #@9
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    #@b
    .line 1424
    const/4 v10, 0x1

    #@c
    .line 1426
    :cond_0
    if-eqz p2, :cond_3

    #@e
    move-object v1, p2

    #@f
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 1429
    const/4 v4, 0x0

    #@14
    .line 1430
    .local v4, "controlFlags":I
    if-eqz p2, :cond_1

    #@16
    .line 1431
    const/4 v4, 0x1

    #@17
    .line 1432
    invoke-virtual {p2}, Landroid/view/View;->onCheckIsTextEditor()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1433
    or-int/lit8 v4, v4, 0x2

    #@1f
    .line 1436
    :cond_1
    if-eqz p4, :cond_2

    #@21
    .line 1437
    or-int/lit8 v4, v4, 0x4

    #@23
    .line 1440
    :cond_2
    const/4 v1, 0x1

    #@24
    invoke-direct {p0, v10, v1}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(ZZ)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_4

    #@2a
    .line 1445
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@2d
    move-result-object v1

    #@2e
    move/from16 v0, p5

    #@30
    invoke-virtual {p0, v1, v4, p3, v0}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_4

    #@36
    .line 1447
    return-void

    #@37
    .end local v4    # "controlFlags":I
    :cond_3
    move-object v1, p1

    #@38
    .line 1426
    goto :goto_0

    #@39
    .line 1416
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit v2

    #@3b
    throw v1

    #@3c
    .line 1453
    .restart local v4    # "controlFlags":I
    :cond_4
    iget-object v11, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@3e
    monitor-enter v11

    #@3f
    .line 1456
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@41
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    #@43
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@46
    move-result-object v3

    #@47
    .line 1457
    const/4 v7, 0x0

    #@48
    const/4 v8, 0x0

    #@49
    move v5, p3

    #@4a
    move/from16 v6, p5

    #@4c
    .line 1456
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/view/IInputMethodManager;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4f
    :goto_1
    monitor-exit v11

    #@50
    .line 1414
    return-void

    #@51
    .line 1453
    :catchall_1
    move-exception v1

    #@52
    monitor-exit v11

    #@53
    throw v1

    #@54
    .line 1458
    :catch_0
    move-exception v9

    #@55
    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onPreWindowFocus(Landroid/view/View;Z)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "hasWindowFocus"    # Z

    #@0
    .prologue
    .line 1465
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v1

    #@3
    .line 1466
    if-nez p1, :cond_0

    #@5
    .line 1467
    const/4 v0, 0x0

    #@6
    :try_start_0
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    #@8
    .line 1468
    :cond_0
    if-eqz p2, :cond_2

    #@a
    .line 1469
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_1
    :goto_0
    monitor-exit v1

    #@d
    .line 1464
    return-void

    #@e
    .line 1470
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    #@10
    if-ne p1, v0, :cond_1

    #@12
    .line 1473
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    goto :goto_0

    #@16
    .line 1465
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1334
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v1

    #@3
    .line 1338
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1339
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    #@10
    .line 1340
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->scheduleCheckFocusLocked(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 1333
    return-void

    #@15
    .line 1334
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 2
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;

    #@0
    .prologue
    .line 712
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 710
    return-void

    #@6
    .line 713
    :catch_0
    move-exception v0

    #@7
    .line 714
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    #@0
    .prologue
    .line 851
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 852
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    #@7
    .line 854
    instance-of v0, p1, Landroid/view/inputmethod/BaseInputConnection;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 855
    check-cast p1, Landroid/view/inputmethod/BaseInputConnection;

    #@d
    .end local p1    # "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p1}, Landroid/view/inputmethod/BaseInputConnection;->reportFinish()V

    #@10
    .line 850
    :cond_0
    return-void
.end method

.method public restartInput(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1114
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@5
    .line 1115
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@7
    monitor-enter v1

    #@8
    .line 1116
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@a
    if-eq v0, p1, :cond_0

    #@c
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1117
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@12
    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 1121
    :cond_0
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 1124
    invoke-virtual {p0, v3, v2, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    #@1f
    .line 1113
    return-void

    #@20
    :cond_1
    monitor-exit v1

    #@21
    .line 1118
    return-void

    #@22
    .line 1115
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method public sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1671
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@3
    .line 1672
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@5
    monitor-enter v2

    #@6
    .line 1673
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@8
    if-eq v1, p1, :cond_0

    #@a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 1674
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@10
    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 1675
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    if-nez v1, :cond_2

    #@1a
    :cond_1
    monitor-exit v2

    #@1b
    .line 1676
    return-void

    #@1c
    .line 1675
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 1680
    :try_start_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@22
    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    :goto_0
    monitor-exit v2

    #@26
    .line 1670
    return-void

    #@27
    .line 1681
    :catch_0
    move-exception v0

    #@28
    .line 1682
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "InputMethodManager"

    #@2b
    new-instance v3, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v4, "IME died: "

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 1672
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@46
    monitor-exit v2

    #@47
    throw v1
.end method

.method sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 4
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    #@0
    .prologue
    .line 1807
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v2

    #@3
    .line 1808
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    .line 1809
    .local v1, "result":I
    const/4 v3, -0x1

    #@8
    if-ne v1, v3, :cond_0

    #@a
    monitor-exit v2

    #@b
    .line 1810
    return-void

    #@c
    .line 1813
    :cond_0
    const/4 v3, 0x1

    #@d
    if-ne v1, v3, :cond_1

    #@f
    const/4 v0, 0x1

    #@10
    .local v0, "handled":Z
    :goto_0
    monitor-exit v2

    #@11
    .line 1816
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    #@14
    .line 1805
    return-void

    #@15
    .line 1813
    .end local v0    # "handled":Z
    :cond_1
    const/4 v0, 0x0

    #@16
    .restart local v0    # "handled":Z
    goto :goto_0

    #@17
    .line 1807
    .end local v0    # "handled":Z
    .end local v1    # "result":I
    :catchall_0
    move-exception v3

    #@18
    monitor-exit v2

    #@19
    throw v3
.end method

.method sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    .locals 8
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    #@0
    .prologue
    .line 1821
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    #@2
    if-eqz v3, :cond_2

    #@4
    .line 1822
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    #@6
    if-nez v3, :cond_0

    #@8
    .line 1823
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    #@a
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    #@c
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@e
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager$H;->getLooper()Landroid/os/Looper;

    #@11
    move-result-object v5

    #@12
    invoke-direct {v3, p0, v4, v5}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@15
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    #@17
    .line 1826
    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    #@19
    .line 1827
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    #@1c
    move-result v2

    #@1d
    .line 1828
    .local v2, "seq":I
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    #@1f
    invoke-virtual {v3, v2, v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 1829
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2a
    .line 1830
    const-string/jumbo v3, "aq:imm"

    #@2d
    .line 1831
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    #@2f
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@32
    move-result v4

    #@33
    .line 1830
    const-wide/16 v6, 0x4

    #@35
    invoke-static {v6, v7, v3, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    #@38
    .line 1833
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@3a
    const/4 v4, 0x6

    #@3b
    invoke-virtual {v3, v4, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3e
    move-result-object v1

    #@3f
    .line 1834
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    #@40
    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@43
    .line 1835
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@45
    const-wide/16 v4, 0x9c4

    #@47
    invoke-virtual {v3, v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@4a
    .line 1836
    const/4 v3, -0x1

    #@4b
    return v3

    #@4c
    .line 1839
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const-string/jumbo v3, "InputMethodManager"

    #@4f
    new-instance v4, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v5, "Unable to send input event to IME: "

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    .line 1840
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@5d
    .line 1839
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    .line 1840
    const-string/jumbo v5, " dropping: "

    #@64
    .line 1839
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 1842
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v2    # "seq":I
    :cond_2
    const/4 v3, 0x0

    #@74
    return v3
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 5
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 2159
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v2

    #@3
    .line 2161
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@5
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :goto_0
    monitor-exit v2

    #@9
    .line 2158
    return-void

    #@a
    .line 2162
    :catch_0
    move-exception v0

    #@b
    .line 2163
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "InputMethodManager"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "IME died: "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 2159
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 5
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 1987
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v2

    #@3
    .line 1989
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@5
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    monitor-exit v2

    #@a
    return v1

    #@b
    .line 1990
    :catch_0
    move-exception v0

    #@c
    .line 1991
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "InputMethodManager"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "IME died: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 1992
    const/4 v1, 0x0

    #@29
    monitor-exit v2

    #@2a
    return v1

    #@2b
    .line 1987
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method

.method public setFullscreenMode(Z)V
    .locals 0
    .param p1, "fullScreen"    # Z

    #@0
    .prologue
    .line 706
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    #@2
    .line 705
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    #@0
    .prologue
    .line 698
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 696
    return-void

    #@6
    .line 699
    :catch_0
    move-exception v0

    #@7
    .line 700
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method setInputChannelLocked(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "channel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 782
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    #@3
    if-eq v0, p1, :cond_2

    #@5
    .line 783
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 784
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->flushPendingEventsLocked()V

    #@c
    .line 785
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    #@e
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->dispose()V

    #@11
    .line 786
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    #@13
    .line 788
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 789
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    #@19
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@1c
    .line 791
    :cond_1
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    #@1e
    .line 781
    :cond_2
    return-void
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1697
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1695
    return-void

    #@6
    .line 1698
    :catch_0
    move-exception v0

    #@7
    .line 1699
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 1714
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1712
    return-void

    #@6
    .line 1715
    :catch_0
    move-exception v0

    #@7
    .line 1716
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public setUpdateCursorAnchorInfoMode(I)V
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1583
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v0

    #@3
    .line 1584
    :try_start_0
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 1582
    return-void

    #@7
    .line 1583
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "imeToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2134
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v2

    #@3
    .line 2136
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@5
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    monitor-exit v2

    #@a
    return v1

    #@b
    .line 2137
    :catch_0
    move-exception v0

    #@c
    .line 2138
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "InputMethodManager"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "IME died: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 2139
    const/4 v1, 0x0

    #@29
    monitor-exit v2

    #@2a
    return v1

    #@2b
    .line 2134
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method

.method public showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 5
    .param p1, "imiId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1954
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v2

    #@3
    .line 1956
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@5
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    #@7
    invoke-interface {v1, v3, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :goto_0
    monitor-exit v2

    #@b
    .line 1953
    return-void

    #@c
    .line 1957
    :catch_0
    move-exception v0

    #@d
    .line 1958
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "InputMethodManager"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "IME died: "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 1954
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method

.method public showInputMethodPicker()V
    .locals 2

    #@0
    .prologue
    .line 1916
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v0

    #@3
    .line 1917
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1915
    return-void

    #@8
    .line 1916
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public showInputMethodPicker(Z)V
    .locals 6
    .param p1, "showAuxiliarySubtypes"    # Z

    #@0
    .prologue
    .line 1928
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v3

    #@3
    .line 1930
    if-eqz p1, :cond_0

    #@5
    .line 1931
    const/4 v1, 0x1

    #@6
    .line 1933
    .local v1, "mode":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@8
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    #@a
    invoke-interface {v2, v4, v1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :goto_1
    monitor-exit v3

    #@e
    .line 1927
    return-void

    #@f
    .line 1932
    .end local v1    # "mode":I
    :cond_0
    const/4 v1, 0x2

    #@10
    .restart local v1    # "mode":I
    goto :goto_0

    #@11
    .line 1934
    :catch_0
    move-exception v0

    #@12
    .line 1935
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "InputMethodManager"

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "IME died: "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_1

    #@2f
    .line 1928
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@30
    monitor-exit v3

    #@31
    throw v2
.end method

.method public showSoftInput(Landroid/view/View;I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 920
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 972
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@4
    .line 973
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@6
    monitor-enter v2

    #@7
    .line 974
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@9
    if-eq v1, p1, :cond_0

    #@b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 975
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@11
    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 980
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@19
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    #@1b
    invoke-interface {v1, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result v1

    #@1f
    monitor-exit v2

    #@20
    return v1

    #@21
    :cond_1
    monitor-exit v2

    #@22
    .line 976
    return v4

    #@23
    .line 981
    :catch_0
    move-exception v0

    #@24
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v2

    #@25
    .line 984
    return v4

    #@26
    .line 973
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1
.end method

.method public showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1755
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showMySoftInput(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1753
    return-void

    #@6
    .line 1756
    :catch_0
    move-exception v0

    #@7
    .line 1757
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 991
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    #@4
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 989
    :goto_0
    return-void

    #@8
    .line 992
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    #@0
    .prologue
    .line 681
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 679
    return-void

    #@6
    .line 682
    :catch_0
    move-exception v0

    #@7
    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method startInputInner(Landroid/os/IBinder;III)Z
    .locals 15
    .param p1, "windowGainingFocus"    # Landroid/os/IBinder;
    .param p2, "controlFlags"    # I
    .param p3, "softInputMode"    # I
    .param p4, "windowFlags"    # I

    #@0
    .prologue
    .line 1130
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v1

    #@3
    .line 1131
    :try_start_0
    iget-object v13, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 1135
    .local v13, "view":Landroid/view/View;
    if-nez v13, :cond_0

    #@7
    .line 1137
    const/4 v2, 0x0

    #@8
    monitor-exit v1

    #@9
    return v2

    #@a
    :cond_0
    monitor-exit v1

    #@b
    .line 1145
    invoke-virtual {v13}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    #@e
    move-result-object v12

    #@f
    .line 1146
    .local v12, "vh":Landroid/os/Handler;
    if-nez v12, :cond_1

    #@11
    .line 1152
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    #@14
    .line 1153
    const/4 v1, 0x0

    #@15
    return v1

    #@16
    .line 1130
    .end local v12    # "vh":Landroid/os/Handler;
    .end local v13    # "view":Landroid/view/View;
    :catchall_0
    move-exception v2

    #@17
    monitor-exit v1

    #@18
    throw v2

    #@19
    .line 1155
    .restart local v12    # "vh":Landroid/os/Handler;
    .restart local v13    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@20
    move-result-object v2

    #@21
    if-eq v1, v2, :cond_2

    #@23
    .line 1159
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$2;

    #@25
    invoke-direct {v1, p0}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    #@28
    invoke-virtual {v12, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2b
    .line 1165
    const/4 v1, 0x0

    #@2c
    return v1

    #@2d
    .line 1171
    :cond_2
    new-instance v7, Landroid/view/inputmethod/EditorInfo;

    #@2f
    invoke-direct {v7}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    #@32
    .line 1175
    .local v7, "tba":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, v7, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@3c
    .line 1176
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    #@3f
    move-result v1

    #@40
    iput v1, v7, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    #@42
    .line 1177
    invoke-virtual {v13, v7}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    #@45
    move-result-object v10

    #@46
    .line 1180
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v14, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@48
    monitor-enter v14

    #@49
    .line 1183
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@4b
    if-ne v1, v13, :cond_7

    #@4d
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    #@4f
    if-eqz v1, :cond_7

    #@51
    .line 1193
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    #@53
    if-nez v1, :cond_3

    #@55
    .line 1194
    move/from16 v0, p2

    #@57
    or-int/lit16 v0, v0, 0x100

    #@59
    move/from16 p2, v0

    #@5b
    .line 1198
    :cond_3
    iput-object v7, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    #@5d
    .line 1199
    const/4 v1, 0x0

    #@5e
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    #@60
    .line 1201
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->notifyInputConnectionFinished()V

    #@63
    .line 1202
    iput-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    #@65
    .line 1204
    if-eqz v10, :cond_8

    #@67
    .line 1205
    iget v1, v7, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@69
    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    #@6b
    .line 1206
    iget v1, v7, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@6d
    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    #@6f
    .line 1207
    const/4 v1, -0x1

    #@70
    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    #@72
    .line 1208
    const/4 v1, -0x1

    #@73
    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    #@75
    .line 1209
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    #@77
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    #@7a
    .line 1210
    const/4 v1, 0x0

    #@7b
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    #@7d
    .line 1211
    new-instance v8, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    #@7f
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@82
    move-result-object v1

    #@83
    invoke-direct {v8, v1, v10, p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V

    #@86
    .line 1215
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    #@88
    if-eqz v1, :cond_4

    #@8a
    .line 1216
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    #@8c
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->deactivate()V

    #@8f
    .line 1218
    :cond_4
    iput-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@91
    .line 1225
    if-eqz p1, :cond_9

    #@93
    .line 1226
    :try_start_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@95
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    #@97
    move-object/from16 v3, p1

    #@99
    move/from16 v4, p2

    #@9b
    move/from16 v5, p3

    #@9d
    move/from16 v6, p4

    #@9f
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/view/IInputMethodManager;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;

    #@a2
    move-result-object v11

    #@a3
    .line 1234
    .local v11, "res":Lcom/android/internal/view/InputBindResult;
    :goto_1
    if-eqz v11, :cond_5

    #@a5
    .line 1235
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    #@a7
    if-eqz v1, :cond_a

    #@a9
    .line 1236
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@ab
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    #@ae
    .line 1237
    iget v1, v11, Lcom/android/internal/view/InputBindResult;->sequence:I

    #@b0
    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    #@b2
    .line 1238
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    #@b4
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@b6
    .line 1239
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    #@b8
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@ba
    .line 1241
    iget v1, v11, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    #@bc
    .line 1240
    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    #@be
    .line 1253
    :cond_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@c0
    if-eqz v1, :cond_6

    #@c2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@c4
    if-eqz v1, :cond_6

    #@c6
    .line 1255
    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@c8
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    #@ca
    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@cd
    .end local v11    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_6
    :goto_2
    monitor-exit v14

    #@ce
    .line 1264
    const/4 v1, 0x1

    #@cf
    return v1

    #@d0
    .line 1188
    :cond_7
    const/4 v1, 0x0

    #@d1
    monitor-exit v14

    #@d2
    return v1

    #@d3
    .line 1213
    :cond_8
    const/4 v8, 0x0

    #@d4
    .local v8, "servedContext":Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    goto :goto_0

    #@d5
    .line 1230
    .end local v8    # "servedContext":Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    :cond_9
    :try_start_4
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@d7
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    #@d9
    move/from16 v0, p2

    #@db
    invoke-interface {v1, v2, v8, v7, v0}, Lcom/android/internal/view/IInputMethodManager;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@de
    move-result-object v11

    #@df
    .restart local v11    # "res":Lcom/android/internal/view/InputBindResult;
    goto :goto_1

    #@e0
    .line 1243
    :cond_a
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@e2
    if-eqz v1, :cond_b

    #@e4
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@e6
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    #@e8
    if-eq v1, v2, :cond_b

    #@ea
    .line 1244
    iget-object v1, v11, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@ec
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@ef
    .line 1246
    :cond_b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@f1
    if-nez v1, :cond_5

    #@f3
    .line 1249
    const/4 v1, 0x1

    #@f4
    monitor-exit v14

    #@f5
    return v1

    #@f6
    .line 1259
    .end local v11    # "res":Lcom/android/internal/view/InputBindResult;
    :catch_0
    move-exception v9

    #@f7
    .line 1260
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v1, "InputMethodManager"

    #@fa
    new-instance v2, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v3, "IME died: "

    #@102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v2

    #@106
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v2

    #@10c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v2

    #@110
    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@113
    goto :goto_2

    #@114
    .line 1180
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    #@115
    monitor-exit v14

    #@116
    throw v1

    #@117
    .line 1256
    .restart local v11    # "res":Lcom/android/internal/view/InputBindResult;
    :catch_1
    move-exception v9

    #@118
    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "imeToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2091
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v2

    #@3
    .line 2093
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@5
    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->switchToLastInputMethod(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    monitor-exit v2

    #@a
    return v1

    #@b
    .line 2094
    :catch_0
    move-exception v0

    #@c
    .line 2095
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "InputMethodManager"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "IME died: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 2096
    const/4 v1, 0x0

    #@29
    monitor-exit v2

    #@2a
    return v1

    #@2b
    .line 2091
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 5
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z

    #@0
    .prologue
    .line 2112
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v2

    #@3
    .line 2114
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    #@5
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    monitor-exit v2

    #@a
    return v1

    #@b
    .line 2115
    :catch_0
    move-exception v0

    #@c
    .line 2116
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "InputMethodManager"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "IME died: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 2117
    const/4 v1, 0x0

    #@29
    monitor-exit v2

    #@2a
    return v1

    #@2b
    .line 2112
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method

.method public toggleSoftInput(II)V
    .locals 2
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    #@0
    .prologue
    .line 1097
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1099
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@6
    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1096
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1100
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "showFlags"    # I
    .param p3, "hideFlags"    # I

    #@0
    .prologue
    .line 1071
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@2
    monitor-enter v2

    #@3
    .line 1072
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@9
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    if-eq v1, p1, :cond_1

    #@f
    :cond_0
    monitor-exit v2

    #@10
    .line 1073
    return-void

    #@11
    .line 1075
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 1077
    :try_start_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@17
    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    :cond_2
    :goto_0
    monitor-exit v2

    #@1b
    .line 1070
    return-void

    #@1c
    .line 1071
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1

    #@1f
    .line 1078
    :catch_0
    move-exception v0

    #@20
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updateCursor(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1595
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@3
    .line 1596
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@5
    monitor-enter v2

    #@6
    .line 1597
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@8
    if-eq v1, p1, :cond_0

    #@a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 1598
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@10
    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 1599
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    if-nez v1, :cond_2

    #@1a
    :cond_1
    monitor-exit v2

    #@1b
    .line 1600
    return-void

    #@1c
    .line 1599
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 1603
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    #@22
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    #@25
    .line 1604
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    #@27
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    #@29
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    move-result v1

    #@2d
    if-nez v1, :cond_3

    #@2f
    .line 1609
    :try_start_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@31
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    #@33
    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    #@36
    .line 1610
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    #@38
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    #@3a
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    :cond_3
    :goto_0
    monitor-exit v2

    #@3e
    .line 1594
    return-void

    #@3f
    .line 1611
    :catch_0
    move-exception v0

    #@40
    .line 1612
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "InputMethodManager"

    #@43
    new-instance v3, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v4, "IME died: "

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5c
    goto :goto_0

    #@5d
    .line 1596
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@5e
    monitor-exit v2

    #@5f
    throw v1
.end method

.method public updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    #@0
    .prologue
    .line 1623
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1624
    :cond_0
    return-void

    #@5
    .line 1626
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@8
    .line 1627
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@a
    monitor-enter v3

    #@b
    .line 1628
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@d
    if-eq v2, p1, :cond_2

    #@f
    .line 1629
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@11
    if-eqz v2, :cond_3

    #@13
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@15
    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_3

    #@1b
    .line 1630
    :cond_2
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    if-nez v2, :cond_4

    #@1f
    :cond_3
    monitor-exit v3

    #@20
    .line 1631
    return-void

    #@21
    .line 1630
    :cond_4
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@23
    if-eqz v2, :cond_3

    #@25
    .line 1635
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    #@27
    and-int/lit8 v2, v2, 0x1

    #@29
    if-eqz v2, :cond_5

    #@2b
    const/4 v1, 0x1

    #@2c
    .line 1637
    .local v1, "isImmediate":Z
    :goto_0
    if-nez v1, :cond_6

    #@2e
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    #@30
    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_6

    #@36
    monitor-exit v3

    #@37
    .line 1644
    return-void

    #@38
    .line 1635
    .end local v1    # "isImmediate":Z
    :cond_5
    const/4 v1, 0x0

    #@39
    .restart local v1    # "isImmediate":Z
    goto :goto_0

    #@3a
    .line 1648
    :cond_6
    :try_start_2
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@3c
    invoke-interface {v2, p2}, Lcom/android/internal/view/IInputMethodSession;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    #@3f
    .line 1649
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    #@41
    .line 1651
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    #@43
    and-int/lit8 v2, v2, -0x2

    #@45
    iput v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    :goto_1
    monitor-exit v3

    #@48
    .line 1622
    return-void

    #@49
    .line 1653
    :catch_0
    move-exception v0

    #@4a
    .line 1654
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v2, "InputMethodManager"

    #@4d
    new-instance v4, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v5, "IME died: "

    #@55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@66
    goto :goto_1

    #@67
    .line 1627
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isImmediate":Z
    :catchall_0
    move-exception v2

    #@68
    monitor-exit v3

    #@69
    throw v2
.end method

.method public updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # I
    .param p3, "text"    # Landroid/view/inputmethod/ExtractedText;

    #@0
    .prologue
    .line 879
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@3
    .line 880
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@5
    monitor-enter v2

    #@6
    .line 881
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@8
    if-eq v1, p1, :cond_0

    #@a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 882
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@10
    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 886
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 888
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@1c
    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    :cond_1
    :goto_0
    monitor-exit v2

    #@20
    .line 878
    return-void

    #@21
    :cond_2
    monitor-exit v2

    #@22
    .line 883
    return-void

    #@23
    .line 880
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1

    #@26
    .line 889
    :catch_0
    move-exception v0

    #@27
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updateSelection(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I
    .param p4, "candidatesStart"    # I
    .param p5, "candidatesEnd"    # I

    #@0
    .prologue
    .line 1496
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@3
    .line 1497
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@5
    monitor-enter v8

    #@6
    .line 1498
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@8
    if-eq v0, p1, :cond_0

    #@a
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1499
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@10
    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1500
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    if-nez v0, :cond_2

    #@1a
    :cond_1
    monitor-exit v8

    #@1b
    .line 1501
    return-void

    #@1c
    .line 1500
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 1504
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    #@22
    if-ne v0, p2, :cond_3

    #@24
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    if-eq v0, p3, :cond_5

    #@28
    .line 1511
    :cond_3
    :goto_0
    :try_start_2
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    #@2a
    .line 1512
    .local v1, "oldSelStart":I
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    #@2c
    .line 1516
    .local v2, "oldSelEnd":I
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    #@2e
    .line 1517
    iput p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    #@30
    .line 1518
    iput p4, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    #@32
    .line 1519
    iput p5, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    #@34
    .line 1520
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@36
    move v3, p2

    #@37
    move v4, p3

    #@38
    move v5, p4

    #@39
    move v6, p5

    #@3a
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession;->updateSelection(IIIIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    .end local v1    # "oldSelStart":I
    .end local v2    # "oldSelEnd":I
    :cond_4
    :goto_1
    monitor-exit v8

    #@3e
    .line 1495
    return-void

    #@3f
    .line 1505
    :cond_5
    :try_start_3
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    #@41
    if-ne v0, p4, :cond_3

    #@43
    .line 1506
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    #@45
    if-eq v0, p5, :cond_4

    #@47
    goto :goto_0

    #@48
    .line 1522
    :catch_0
    move-exception v7

    #@49
    .line 1523
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "InputMethodManager"

    #@4c
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v4, "IME died: "

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-static {v0, v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@65
    goto :goto_1

    #@66
    .line 1497
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@67
    monitor-exit v8

    #@68
    throw v0
.end method

.method public viewClicked(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1533
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@2
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    #@4
    if-eq v2, v3, :cond_2

    #@6
    const/4 v1, 0x1

    #@7
    .line 1534
    .local v1, "focusChanged":Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@a
    .line 1535
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@c
    monitor-enter v3

    #@d
    .line 1536
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@f
    if-eq v2, p1, :cond_0

    #@11
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 1537
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@17
    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 1538
    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    if-nez v2, :cond_3

    #@21
    :cond_1
    monitor-exit v3

    #@22
    .line 1539
    return-void

    #@23
    .line 1533
    .end local v1    # "focusChanged":Z
    :cond_2
    const/4 v1, 0x0

    #@24
    .restart local v1    # "focusChanged":Z
    goto :goto_0

    #@25
    .line 1538
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 1543
    :try_start_2
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    #@2b
    invoke-interface {v2, v1}, Lcom/android/internal/view/IInputMethodSession;->viewClicked(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    :goto_1
    monitor-exit v3

    #@2f
    .line 1532
    return-void

    #@30
    .line 1544
    :catch_0
    move-exception v0

    #@31
    .line 1545
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v2, "InputMethodManager"

    #@34
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v5, "IME died: "

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4d
    goto :goto_1

    #@4e
    .line 1535
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@4f
    monitor-exit v3

    #@50
    throw v2
.end method

.method public windowDismissed(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "appWindowToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1273
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    #@3
    .line 1274
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@5
    monitor-enter v1

    #@6
    .line 1275
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1276
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    #@c
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    if-ne v0, p1, :cond_0

    #@12
    .line 1277
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit v1

    #@16
    .line 1272
    return-void

    #@17
    .line 1274
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method
