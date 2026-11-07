.class Landroid/inputmethodservice/IInputMethodWrapper;
.super Lcom/android/internal/inputmethod/IInputMethod$Stub;
.source "IInputMethodWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DO_CAN_START_STYLUS_HANDWRITING:I = 0x64

.field private static final blacklist DO_CHANGE_INPUTMETHOD_SUBTYPE:I = 0x50

.field private static final blacklist DO_COMMIT_HANDWRITING_DELEGATION_TEXT_IF_AVAILABLE:I = 0xaa

.field private static final blacklist DO_CREATE_INLINE_SUGGESTIONS_REQUEST:I = 0x5a

.field private static final blacklist DO_CREATE_SESSION:I = 0x28

.field private static final blacklist DO_DISCARD_HANDWRITING_DELEGATION_TEXT:I = 0xb4

.field private static final blacklist DO_DUMP:I = 0x1

.field private static final blacklist DO_FINISH_STYLUS_HANDWRITING:I = 0x82

.field private static final blacklist DO_HIDE_SOFT_INPUT:I = 0x46

.field private static final blacklist DO_INITIALIZE_INTERNAL:I = 0xa

.field private static final blacklist DO_INIT_INK_WINDOW:I = 0x78

.field private static final blacklist DO_ON_NAV_BUTTON_FLAGS_CHANGED:I = 0x23

.field private static final blacklist DO_REMOVE_STYLUS_HANDWRITING_WINDOW:I = 0x96

.field private static final blacklist DO_SET_INPUT_CONTEXT:I = 0x14

.field private static final blacklist DO_SET_SESSION_ENABLED:I = 0x2d

.field private static final blacklist DO_SET_STYLUS_WINDOW_IDLE_TIMEOUT:I = 0xa0

.field private static final blacklist DO_SHOW_SOFT_INPUT:I = 0x3c

.field private static final blacklist DO_START_INPUT:I = 0x20

.field private static final blacklist DO_START_STYLUS_HANDWRITING:I = 0x6e

.field private static final blacklist DO_UNSET_INPUT_CONTEXT:I = 0x1e

.field private static final blacklist DO_UPDATE_TOOL_TYPE:I = 0x8c

.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field final greylist mCaller:Lcom/android/internal/os/HandlerCaller;

.field blacklist mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field final blacklist mContext:Landroid/content/Context;

.field final blacklist mInputMethod:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/inputmethod/InputMethod;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/InputMethodServiceInternal;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTargetSdkVersion:I


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodServiceInternal;Landroid/view/inputmethod/InputMethod;)V
    .registers 7
    .param p1, "imsInternal"    # Landroid/inputmethodservice/InputMethodServiceInternal;
    .param p2, "inputMethod"    # Landroid/view/inputmethod/InputMethod;

    .line 147
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 148
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    .line 149
    invoke-interface {p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    .line 150
    new-instance v1, Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 151
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    .line 152
    invoke-interface {p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    .line 153
    return-void
.end method

.method private static blacklist isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z
    .registers 5
    .param p0, "inputMethod"    # Landroid/view/inputmethod/InputMethod;
    .param p1, "target"    # Landroid/inputmethodservice/InputMethodServiceInternal;
    .param p2, "msg"    # Ljava/lang/String;

    .line 548
    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    invoke-interface {p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->isServiceDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 549
    const/4 v0, 0x1

    return v0

    .line 551
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", InputMethod:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", InputMethodServiceInternal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist bindInput(Landroid/view/inputmethod/InputBinding;)V
    .registers 7
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;

    .line 382
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_b

    .line 383
    const-string v0, "InputMethodWrapper"

    const-string v1, "bindInput must be paired with unbindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_b
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 386
    new-instance v0, Landroid/inputmethodservice/RemoteInputConnection;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    .line 387
    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0, v1, v2, v3}, Landroid/inputmethodservice/RemoteInputConnection;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V

    .line 389
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    new-instance v1, Landroid/view/inputmethod/InputBinding;

    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V

    .line 390
    .local v1, "nu":Landroid/view/inputmethod/InputBinding;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 391
    return-void
.end method

.method public blacklist canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V
    .registers 12
    .param p1, "requestId"    # I
    .param p2, "connectionlessCallback"    # Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .param p3, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p4, "isConnectionlessForDelegation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 486
    nop

    .line 485
    const/16 v2, 0x64

    move v3, p1

    move-object v5, p2

    move-object v6, p3

    move v4, p4

    .end local p1    # "requestId":I
    .end local p2    # "connectionlessCallback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .end local p3    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p4    # "isConnectionlessForDelegation":Z
    .local v3, "requestId":I
    .local v4, "isConnectionlessForDelegation":Z
    .local v5, "connectionlessCallback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .local v6, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOO(IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 488
    return-void
.end method

.method public blacklist changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 5
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 475
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 477
    return-void
.end method

.method public blacklist commitHandwritingDelegationTextIfAvailable()V
    .registers 4

    .line 511
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 512
    const/16 v2, 0xaa

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 511
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 513
    return-void
.end method

.method public blacklist createSession(Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V
    .registers 6
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "callback"    # Lcom/android/internal/inputmethod/IInputMethodSessionCallback;

    .line 433
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 435
    return-void
.end method

.method public blacklist discardHandwritingDelegationText()V
    .registers 4

    .line 518
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 519
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 340
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/inputmethodservice/InputMethodServiceInternal;

    .line 341
    .local v1, "target":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-nez v1, :cond_c

    .line 342
    return-void

    .line 344
    :cond_c
    invoke-interface {v1}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_41

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 348
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    return-void

    .line 353
    :cond_41
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v8, v0

    .line 354
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v4, 0x1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "fout":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    .local v5, "fd":Ljava/io/FileDescriptor;
    .local v6, "fout":Ljava/io/PrintWriter;
    .local v7, "args":[Ljava/lang/String;
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 357
    :try_start_5b
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x5

    invoke-virtual {v8, p2, p3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_6a

    .line 358
    const-string p1, "Timeout waiting for dump"

    invoke-virtual {v6, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_6a} :catch_6b

    .line 362
    :cond_6a
    goto :goto_72

    .line 360
    :catch_6b
    move-exception v0

    move-object p1, v0

    .line 361
    .local p1, "e":Ljava/lang/InterruptedException;
    const-string p2, "Interrupted waiting for dump"

    invoke-virtual {v6, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    .end local p1    # "e":Ljava/lang/InterruptedException;
    :goto_72
    return-void
.end method

.method public blacklist executeMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 158
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethod;

    .line 159
    .local v0, "inputMethod":Landroid/view/inputmethod/InputMethod;
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/InputMethodServiceInternal;

    .line 160
    .local v1, "target":Landroid/inputmethodservice/InputMethodServiceInternal;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xc

    sparse-switch v2, :sswitch_data_230

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodWrapper"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void

    .line 328
    :sswitch_34
    const-string v2, "DO_DISCARD_HANDWRITING_DELEGATION_TEXT"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 329
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->discardHandwritingDelegationText()V

    .line 331
    :cond_3f
    return-void

    .line 321
    :sswitch_40
    const-string v2, "DO_COMMIT_HANDWRITING_DELEGATION_TEXT_IF_AVAILABLE"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 323
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->commitHandwritingDelegationTextIfAvailable()V

    .line 325
    :cond_4b
    return-void

    .line 315
    :sswitch_4c
    const-string v2, "DO_SET_STYLUS_WINDOW_IDLE_TIMEOUT"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 316
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputMethod;->setStylusWindowIdleTimeoutForTest(J)V

    .line 318
    :cond_5f
    return-void

    .line 309
    :sswitch_60
    const-string v2, "DO_REMOVE_STYLUS_HANDWRITING_WINDOW"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 310
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->removeStylusHandwritingWindow()V

    .line 312
    :cond_6b
    return-void

    .line 282
    :sswitch_6c
    const-string v2, "DO_UPDATE_TOOL_TYPE"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 283
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputMethod;->updateEditorToolType(I)V

    .line 285
    :cond_79
    return-void

    .line 303
    :sswitch_7a
    const-string v2, "DO_FINISH_STYLUS_HANDWRITING"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 304
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->finishStylusHandwriting()V

    .line 306
    :cond_85
    return-void

    .line 297
    :sswitch_86
    const-string v2, "DO_INIT_INK_WINDOW"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 298
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->initInkWindow()V

    .line 300
    :cond_91
    return-void

    .line 288
    :sswitch_92
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 289
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    const-string v3, "DO_START_STYLUS_HANDWRITING"

    invoke-static {v0, v1, v3}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 290
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/InputChannel;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v0, v3, v4, v5}, Landroid/view/inputmethod/InputMethod;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V

    .line 293
    :cond_ab
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 294
    return-void

    .line 272
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_af
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 273
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    const-string v5, "DO_CAN_START_STYLUS_HANDWRITING"

    invoke-static {v0, v1, v5}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 274
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    iget-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Landroid/view/inputmethod/CursorAnchorInfo;

    iget v8, p1, Landroid/os/Message;->arg2:I

    if-eqz v8, :cond_ca

    goto :goto_cb

    :cond_ca
    move v3, v4

    :goto_cb
    invoke-interface {v0, v5, v6, v7, v3}, Landroid/view/inputmethod/InputMethod;->canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V

    .line 278
    :cond_ce
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 279
    return-void

    .line 262
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_d2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 263
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    const-string v3, "DO_CREATE_INLINE_SUGGESTIONS_REQUEST"

    invoke-static {v0, v1, v3}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 264
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputMethod;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V

    .line 268
    :cond_e9
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 269
    return-void

    .line 257
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_ed
    const-string v2, "DO_CHANGE_INPUTMETHOD_SUBTYPE"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 258
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 260
    :cond_fc
    return-void

    .line 242
    :sswitch_fd
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 243
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 244
    .local v3, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    const-string v4, "DO_HIDE_SOFT_INPUT"

    invoke-static {v0, v1, v4}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_122

    .line 245
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 247
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/os/ResultReceiver;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    invoke-interface {v0, v4, v5, v6, v3}, Landroid/view/inputmethod/InputMethod;->hideSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_129

    .line 250
    :cond_122
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 253
    :goto_129
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 254
    return-void

    .line 227
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :sswitch_12d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 228
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 229
    .restart local v3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    const-string v4, "DO_SHOW_SOFT_INPUT"

    invoke-static {v0, v1, v4}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_152

    .line 230
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 232
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/os/ResultReceiver;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    invoke-interface {v0, v4, v5, v6, v3}, Landroid/view/inputmethod/InputMethod;->showSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_159

    .line 235
    :cond_152
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 238
    :goto_159
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 239
    return-void

    .line 222
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :sswitch_15d
    const-string v2, "DO_SET_SESSION_ENABLED"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_172

    .line 223
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputMethodSession;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_16e

    goto :goto_16f

    :cond_16e
    move v3, v4

    :goto_16f
    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputMethod;->setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V

    .line 225
    :cond_172
    return-void

    .line 212
    :sswitch_173
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 213
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    const-string v3, "DO_CREATE_SESSION"

    invoke-static {v0, v1, v3}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_191

    .line 214
    new-instance v3, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;

    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/view/InputChannel;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/inputmethod/IInputMethodSessionCallback;

    invoke-direct {v3, v4, v5, v6}, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V

    invoke-interface {v0, v3}, Landroid/view/inputmethod/InputMethod;->createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V

    .line 218
    :cond_191
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 219
    return-void

    .line 207
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_195
    const-string v2, "DO_ON_NAV_BUTTON_FLAGS_CHANGED"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 208
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputMethod;->onNavButtonFlagsChanged(I)V

    .line 210
    :cond_1a2
    return-void

    .line 196
    :sswitch_1a3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 197
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    const-string v3, "DO_START_INPUT"

    invoke-static {v0, v1, v3}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 198
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 199
    .local v3, "inputConnection":Landroid/view/inputmethod/InputConnection;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;

    .line 201
    .local v4, "params":Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;
    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputMethod;->dispatchStartInput(Landroid/view/inputmethod/InputConnection;Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V

    .line 203
    .end local v3    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    .end local v4    # "params":Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;
    :cond_1ba
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 204
    return-void

    .line 191
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1be
    const-string v2, "DO_UNSET_INPUT_CONTEXT"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c9

    .line 192
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->unbindInput()V

    .line 194
    :cond_1c9
    return-void

    .line 185
    :sswitch_1ca
    const-string v2, "DO_SET_INPUT_CONTEXT"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d9

    .line 186
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    .line 188
    :cond_1d9
    return-void

    .line 180
    :sswitch_1da
    const-string v2, "DO_INITIALIZE_INTERNAL"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e9

    .line 181
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/inputmethod/IInputMethod$InitParams;

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputMethod;->initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V

    .line 183
    :cond_1e9
    return-void

    .line 162
    :sswitch_1ea
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 163
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    const-string v3, "DO_DUMP"

    invoke-static {v0, v1, v3}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22b

    .line 164
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/io/FileDescriptor;

    .line 165
    .local v3, "fd":Ljava/io/FileDescriptor;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/io/PrintWriter;

    .line 166
    .local v4, "fout":Ljava/io/PrintWriter;
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    .line 167
    .local v5, "dumpArgs":[Ljava/lang/String;
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/CountDownLatch;

    .line 169
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_206
    invoke-interface {v1, v3, v4, v5}, Landroid/inputmethodservice/InputMethodServiceInternal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_209
    .catch Ljava/lang/RuntimeException; {:try_start_206 .. :try_end_209} :catch_20f
    .catchall {:try_start_206 .. :try_end_209} :catchall_20d

    .line 173
    :goto_209
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 174
    goto :goto_22b

    .line 173
    :catchall_20d
    move-exception v7

    goto :goto_227

    .line 170
    :catch_20f
    move-exception v7

    .line 171
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_210
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_226
    .catchall {:try_start_210 .. :try_end_226} :catchall_20d

    .end local v7    # "e":Ljava/lang/RuntimeException;
    goto :goto_209

    .line 173
    :goto_227
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 174
    throw v7

    .line 176
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "fout":Ljava/io/PrintWriter;
    .end local v5    # "dumpArgs":[Ljava/lang/String;
    .end local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_22b
    :goto_22b
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 177
    return-void

    nop

    :sswitch_data_230
    .sparse-switch
        0x1 -> :sswitch_1ea
        0xa -> :sswitch_1da
        0x14 -> :sswitch_1ca
        0x1e -> :sswitch_1be
        0x20 -> :sswitch_1a3
        0x23 -> :sswitch_195
        0x28 -> :sswitch_173
        0x2d -> :sswitch_15d
        0x3c -> :sswitch_12d
        0x46 -> :sswitch_fd
        0x50 -> :sswitch_ed
        0x5a -> :sswitch_d2
        0x64 -> :sswitch_af
        0x6e -> :sswitch_92
        0x78 -> :sswitch_86
        0x82 -> :sswitch_7a
        0x8c -> :sswitch_6c
        0x96 -> :sswitch_60
        0xa0 -> :sswitch_4c
        0xaa -> :sswitch_40
        0xb4 -> :sswitch_34
    .end sparse-switch
.end method

.method public blacklist finishStylusHandwriting()V
    .registers 4

    .line 530
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 531
    return-void
.end method

.method public blacklist hideSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)V
    .registers 12
    .param p1, "hideInputToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 467
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 468
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x46

    move-object v4, p1

    move-object v6, p2

    move v3, p3

    move-object v5, p4

    .end local p1    # "hideInputToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local p3    # "flags":I
    .end local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    .local v3, "flags":I
    .local v4, "hideInputToken":Landroid/os/IBinder;
    .local v5, "resultReceiver":Landroid/os/ResultReceiver;
    .local v6, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 470
    return-void
.end method

.method public blacklist initInkWindow()V
    .registers 4

    .line 524
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 525
    return-void
.end method

.method public blacklist initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V
    .registers 5
    .param p1, "params"    # Lcom/android/internal/inputmethod/IInputMethod$InitParams;

    .line 368
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 369
    return-void
.end method

.method public blacklist onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    .registers 6
    .param p1, "requestInfo"    # Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .param p2, "cb"    # Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    .line 375
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 376
    const/16 v2, 0x5a

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 377
    return-void
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .registers 5
    .param p1, "navButtonFlags"    # I

    .line 426
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 427
    const/16 v2, 0x23

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    .line 426
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 428
    return-void
.end method

.method public blacklist removeStylusHandwritingWindow()V
    .registers 4

    .line 536
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 537
    return-void
.end method

.method public blacklist setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V
    .registers 9
    .param p1, "session"    # Lcom/android/internal/inputmethod/IInputMethodSession;
    .param p2, "enabled"    # Z

    .line 441
    const-string v0, "InputMethodWrapper"

    :try_start_2
    move-object v1, p1

    check-cast v1, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    .line 442
    invoke-virtual {v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v1

    .line 443
    .local v1, "ls":Landroid/view/inputmethod/InputMethodSession;
    if-nez v1, :cond_22

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session is already finished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .line 447
    :cond_22
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 448
    if-eqz p2, :cond_2a

    const/4 v4, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    .line 447
    :goto_2b
    const/16 v5, 0x2d

    invoke-virtual {v3, v5, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_34
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_34} :catch_35

    .line 451
    .end local v1    # "ls":Landroid/view/inputmethod/InputMethodSession;
    goto :goto_4c

    .line 449
    :catch_35
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming session not of correct type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_4c
    return-void
.end method

.method public blacklist setStylusWindowIdleTimeoutForTest(J)V
    .registers 7
    .param p1, "timeout"    # J

    .line 542
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 543
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 544
    return-void
.end method

.method public blacklist showSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)V
    .registers 12
    .param p1, "showInputToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 458
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 459
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3c

    move-object v4, p1

    move-object v6, p2

    move v3, p3

    move-object v5, p4

    .end local p1    # "showInputToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local p3    # "flags":I
    .end local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    .local v3, "flags":I
    .local v4, "showInputToken":Landroid/os/IBinder;
    .local v5, "resultReceiver":Landroid/os/ResultReceiver;
    .local v6, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 461
    return-void
.end method

.method public blacklist startInput(Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V
    .registers 6
    .param p1, "params"    # Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;

    .line 409
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-nez v0, :cond_12

    .line 410
    const-string v0, "InputMethodWrapper"

    const-string v1, "startInput must be called after bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 414
    :cond_12
    iget-object v0, p1, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 416
    iget-object v0, p1, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_2a

    .line 417
    :cond_1f
    new-instance v0, Landroid/inputmethodservice/RemoteInputConnection;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    iget-object v2, p1, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0, v1, v2, v3}, Landroid/inputmethodservice/RemoteInputConnection;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V

    :goto_2a
    nop

    .line 420
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x20

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 421
    return-void
.end method

.method public blacklist startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
    .registers 7
    .param p1, "requestId"    # I
    .param p2, "channel"    # Landroid/view/InputChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InputChannel;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    .local p3, "stylusEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 504
    const/16 v2, 0x6e

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 503
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 506
    return-void
.end method

.method public blacklist unbindInput()V
    .registers 4

    .line 396
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_d

    .line 398
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->cancelAll()V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    goto :goto_14

    .line 401
    :cond_d
    const-string v0, "InputMethodWrapper"

    const-string v1, "unbindInput must be paired with bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_14
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 404
    return-void
.end method

.method public blacklist updateEditorToolType(I)V
    .registers 5
    .param p1, "toolType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 495
    const/16 v2, 0x8c

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    .line 494
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 496
    return-void
.end method
