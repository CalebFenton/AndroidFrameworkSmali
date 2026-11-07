.class public Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
.super Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodImpl"
.end annotation


# instance fields
.field private blacklist mSimultaneousStylusAndTouchEnabled:Z

.field private blacklist mSystemCallingHideSoftInput:Z

.field private blacklist mSystemCallingShowSoftInput:Z

.field final synthetic blacklist this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public static synthetic blacklist $r8$lambda$FPjtkHgjCUg1jypfNJ5RJkn2tjI(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->deliverStylusHandwritingMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdeliverStylusHandwritingMotionEvent(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->deliverStylusHandwritingMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 778
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    return-void
.end method

.method private blacklist deliverStylusHandwritingMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 1200
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onStylusHandwritingMotionEvent(Landroid/view/MotionEvent;)V

    .line 1201
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSimultaneousStylusAndTouchEnabled:Z

    if-nez v0, :cond_a

    .line 1202
    return-void

    .line 1204
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    :pswitch_11
    goto :goto_2c

    .line 1222
    :pswitch_12
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->finishStylusHandwriting()V

    goto :goto_2c

    .line 1217
    :pswitch_16
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setHandwritingSurfaceNotTouchable(Z)V

    .line 1218
    goto :goto_2c

    .line 1209
    :pswitch_21
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setHandwritingSurfaceNotTouchable(Z)V

    .line 1210
    nop

    .line 1225
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_21
        :pswitch_16
        :pswitch_11
        :pswitch_16
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_21
        :pswitch_16
    .end packed-switch
.end method

.method private blacklist maybeCreateAndInitInkWindow()V
    .registers 4

    .line 1260
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    if-nez v0, :cond_27

    .line 1261
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    new-instance v1, Landroid/inputmethodservice/InkWindow;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v2}, Landroid/inputmethodservice/SoftInputWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/inputmethodservice/InkWindow;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmInkWindow(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InkWindow;)V

    .line 1262
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InkWindow;->setToken(Landroid/os/IBinder;)V

    .line 1264
    :cond_27
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InkWindow;->initOnly()V

    .line 1265
    return-void
.end method


# virtual methods
.method public whitelist attachToken(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 820
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_17

    .line 824
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->attachToWindowToken(Landroid/os/IBinder;)V

    .line 825
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    .line 826
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/SoftInputWindow;->setToken(Landroid/os/IBinder;)V

    .line 827
    return-void

    .line 821
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachToken() must be called at most once. token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindInput(Landroid/view/inputmethod/InputBinding;)V
    .registers 6
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;

    .line 837
    const-string v0, "IMS.bindInput"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 838
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    .line 839
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    iput-object v3, v0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 842
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mreportFullscreenMode(Landroid/inputmethodservice/InputMethodService;)V

    .line 843
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 844
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onBindInput()V

    .line 845
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmConfigTracker(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/ImsConfigurationTracker;

    move-result-object v0

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/inputmethodservice/ImsConfigurationTracker;->onBindInput(Landroid/content/res/Resources;)V

    .line 846
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 847
    return-void
.end method

.method public blacklist canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "connectionlessCallback"    # Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .param p3, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p4, "isConnectionlessForDelegation"    # Z

    .line 1106
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;)Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    const-string v1, "InputMethod"

    if-eqz v0, :cond_14

    .line 1107
    const-string v0, "There is an ongoing Handwriting session. ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    return-void

    .line 1110
    :cond_14
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v0, v0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-nez v0, :cond_20

    .line 1111
    const-string v0, "Input should have started before starting Stylus handwriting."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    return-void

    .line 1114
    :cond_20
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->maybeCreateAndInitInkWindow()V

    .line 1115
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1117
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onPrepareStylusHandwriting()V

    .line 1120
    :cond_30
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;Z)V

    .line 1121
    if-eqz p2, :cond_6e

    .line 1122
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartConnectionlessStylusHandwriting(ILandroid/view/inputmethod/CursorAnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1124
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmConnectionlessHandwritingCallback(Landroid/inputmethodservice/InputMethodService;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    .line 1125
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p4}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmIsConnectionlessHandwritingForDelegation(Landroid/inputmethodservice/InputMethodService;Z)V

    .line 1126
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mcancelStylusWindowIdleTimeout(Landroid/inputmethodservice/InputMethodService;)V

    .line 1127
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->onStylusHandwritingReady(II)V

    goto :goto_8e

    .line 1129
    :cond_5e
    const-string v0, "IME is not ready or doesn\'t currently support connectionless handwriting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :try_start_63
    invoke-interface {p2, v2}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_66} :catch_67

    .line 1136
    :goto_66
    goto :goto_8e

    .line 1134
    :catch_67
    move-exception v0

    .line 1135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Couldn\'t send connectionless handwriting error result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_66

    .line 1138
    :cond_6e
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onStartStylusHandwriting()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1139
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mcancelStylusWindowIdleTimeout(Landroid/inputmethodservice/InputMethodService;)V

    .line 1140
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->onStylusHandwritingReady(II)V

    goto :goto_8e

    .line 1142
    :cond_89
    const-string v0, "IME is not ready. Can\'t start Stylus Handwriting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :goto_8e
    return-void
.end method

.method public whitelist changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 3
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 1300
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mdispatchOnCurrentInputMethodSubtypeChanged(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 1301
    return-void
.end method

.method public blacklist commitHandwritingDelegationTextIfAvailable()V
    .registers 2

    .line 1233
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mcommitHandwritingDelegationTextIfAvailable(Landroid/inputmethodservice/InputMethodService;)V

    .line 1234
    return-void
.end method

.method public blacklist discardHandwritingDelegationText()V
    .registers 2

    .line 1242
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mdiscardHandwritingDelegationText(Landroid/inputmethodservice/InputMethodService;)V

    .line 1243
    return-void
.end method

.method public final blacklist dispatchStartInput(Landroid/view/inputmethod/InputConnection;Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V
    .registers 5
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "params"    # Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;

    .line 903
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    iget-object v1, p2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->startInputToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->reportStartInputAsync(Landroid/os/IBinder;)V

    .line 904
    iget v0, p2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->navigationBarFlags:I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->onNavButtonFlagsChanged(I)V

    .line 905
    iget-boolean v0, p2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->restarting:Z

    if-eqz v0, :cond_1a

    .line 906
    iget-object v0, p2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_1f

    .line 908
    :cond_1a
    iget-object v0, p2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 914
    :goto_1f
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, p2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->imeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmImeDispatcher(Landroid/inputmethodservice/InputMethodService;Landroid/window/ImeOnBackInvokedDispatcher;)V

    .line 915
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_39

    .line 916
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->imeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V

    .line 919
    :cond_39
    return-void
.end method

.method public blacklist finishStylusHandwriting()V
    .registers 2

    .line 1273
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    .line 1274
    return-void
.end method

.method public whitelist hideSoftInput(ILandroid/os/ResultReceiver;)V
    .registers 12
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 972
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmCurStatsToken(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmCurStatsToken(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    goto :goto_20

    .line 973
    :cond_10
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 975
    invoke-static {v2}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v2

    .line 973
    const/16 v3, 0x29

    invoke-static {v0, v1, v3, v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mcreateStatsToken(Landroid/inputmethodservice/InputMethodService;ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    :goto_20
    nop

    .line 976
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurStatsToken(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 979
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1e

    const/16 v5, 0xe

    if-lt v2, v4, :cond_48

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingHideSoftInput:Z

    if-nez v2, :cond_48

    .line 981
    const-string v1, "InputMethod"

    const-string v2, "IME shouldn\'t call hideSoftInput on itself. Use requestHideSelf(int) itself"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 984
    return-void

    .line 986
    :cond_48
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v0, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 988
    const-string v2, "IMS.hideSoftInput"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 989
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v6}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmDumper(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    move-result-object v6

    const-string v7, "InputMethodService.InputMethodImpl#hideSoftInput"

    invoke-virtual {v2, v7, v6, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 992
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v2

    .line 994
    .local v2, "wasVisible":Z
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput v1, v6, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 995
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-boolean v1, v6, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 996
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v6, v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurStatsToken(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 997
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v6}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 998
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v6}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v6

    .line 999
    .local v6, "isVisible":Z
    const/4 v7, 0x1

    if-eq v6, v2, :cond_88

    move v8, v7

    goto :goto_89

    :cond_88
    move v8, v1

    .line 1000
    .local v8, "visibilityChanged":Z
    :goto_89
    if-eqz p2, :cond_97

    .line 1001
    if-eqz v8, :cond_8f

    .line 1002
    const/4 v1, 0x3

    goto :goto_93

    .line 1003
    :cond_8f
    if-eqz v2, :cond_92

    goto :goto_93

    .line 1004
    :cond_92
    move v1, v7

    :goto_93
    nop

    .line 1001
    invoke-virtual {p2, v1, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1006
    :cond_97
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1007
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 1009
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mscheduleImeSurfaceRemoval(Landroid/inputmethodservice/InputMethodService;)V

    .line 1012
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/inputmethod/ImeTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1014
    :cond_ac
    return-void
.end method

.method public blacklist hideSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 9
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "hideInputToken"    # Landroid/os/IBinder;
    .param p4, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 953
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingHideSoftInput:Z

    .line 954
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurHideInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 955
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p4}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurStatsToken(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 957
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1b

    .line 959
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurHideInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 960
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingHideSoftInput:Z

    .line 961
    nop

    .line 962
    return-void

    .line 959
    :catchall_1b
    move-exception v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurHideInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 960
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingHideSoftInput:Z

    .line 961
    throw v2
.end method

.method public blacklist initInkWindow()V
    .registers 3

    .line 1251
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->maybeCreateAndInitInkWindow()V

    .line 1252
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onPrepareStylusHandwriting()V

    .line 1253
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;Z)V

    .line 1254
    return-void
.end method

.method public final blacklist initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V
    .registers 6
    .param p1, "params"    # Lcom/android/internal/inputmethod/IInputMethod$InitParams;

    .line 791
    const-string v0, "IMS.initializeInternal"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 792
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    iget-object v3, p1, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->privilegedOperations:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    invoke-virtual {v0, v3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V

    .line 793
    iget-object v0, p1, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->token:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->put(Landroid/os/IBinder;Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;)V

    .line 794
    iget v0, p1, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->navigationBarFlags:I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->onNavButtonFlagsChanged(I)V

    .line 795
    iget-object v0, p1, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->attachToken(Landroid/os/IBinder;)V

    .line 796
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 797
    return-void
.end method

.method public blacklist onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    .registers 4
    .param p1, "requestInfo"    # Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .param p2, "cb"    # Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    .line 811
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInlineSuggestionSessionController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InlineSuggestionSessionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InlineSuggestionSessionController;->onMakeInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V

    .line 812
    return-void
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .registers 7
    .param p1, "navButtonFlags"    # I

    .line 928
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmNavigationBarController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/NavigationBarController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/NavigationBarController;->onNavButtonFlagsChanged(I)V

    .line 929
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmCanImeRenderGesturalNavButtons(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 930
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 935
    .local v0, "showImeSwitcher":Z
    :goto_1a
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 936
    const v4, 0x11101c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 937
    .local v3, "navBarNotVisible":Z
    if-eqz v0, :cond_30

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    .line 938
    .local v1, "visible":Z
    :goto_31
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmCustomImeSwitcherButtonRequestedVisible(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v2

    if-eq v1, v2, :cond_43

    .line 939
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCustomImeSwitcherButtonRequestedVisible(Landroid/inputmethodservice/InputMethodService;Z)V

    .line 940
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/InputMethodService;->onCustomImeSwitcherButtonRequestedVisible(Z)V

    .line 943
    .end local v0    # "showImeSwitcher":Z
    .end local v1    # "visible":Z
    .end local v3    # "navBarNotVisible":Z
    :cond_43
    return-void
.end method

.method public blacklist removeStylusHandwritingWindow()V
    .registers 2

    .line 1282
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mfinishAndRemoveStylusHandwritingWindow(Landroid/inputmethodservice/InputMethodService;)V

    .line 1283
    return-void
.end method

.method public whitelist restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 7
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 890
    const-string v0, "IMS.restartInput"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 891
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, p2, v3}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 892
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 893
    return-void
.end method

.method public blacklist setStylusWindowIdleTimeoutForTest(J)V
    .registers 4
    .param p1, "timeout"    # J

    .line 1291
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmStylusWindowIdleTimeoutForTest(Landroid/inputmethodservice/InputMethodService;J)V

    .line 1292
    return-void
.end method

.method public whitelist showSoftInput(ILandroid/os/ResultReceiver;)V
    .registers 12
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1044
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmCurStatsToken(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmCurStatsToken(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    goto :goto_20

    .line 1045
    :cond_10
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 1047
    invoke-static {v2}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v2

    .line 1045
    const/16 v3, 0x28

    invoke-static {v0, v1, v3, v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mcreateStatsToken(Landroid/inputmethodservice/InputMethodService;ZIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    :goto_20
    nop

    .line 1048
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurStatsToken(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1051
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1e

    const/16 v5, 0xd

    if-lt v2, v4, :cond_48

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingShowSoftInput:Z

    if-nez v2, :cond_48

    .line 1053
    const-string v1, "InputMethod"

    const-string v2, "IME shouldn\'t call showSoftInput on itself. Use requestShowSelf(int) itself"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1056
    return-void

    .line 1058
    :cond_48
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v0, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1060
    const-string v2, "IMS.showSoftInput"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1061
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v6}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmDumper(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    move-result-object v6

    const-string v7, "InputMethodService.InputMethodImpl#showSoftInput"

    invoke-virtual {v2, v7, v6, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 1064
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v2

    .line 1065
    .local v2, "wasVisible":Z
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v7, 0x0

    invoke-static {v6, p1, v7}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mdispatchOnShowInputRequested(Landroid/inputmethodservice/InputMethodService;IZ)Z

    move-result v6

    const/16 v8, 0xf

    if-eqz v6, :cond_88

    .line 1066
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v6

    invoke-interface {v6, v0, v8}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1068
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v6, v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurStatsToken(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1069
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v6, v1}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    goto :goto_8f

    .line 1071
    :cond_88
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v6

    invoke-interface {v6, v0, v8}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1074
    :goto_8f
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v8}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mcomputeImeWindowVis(Landroid/inputmethodservice/InputMethodService;)I

    move-result v8

    invoke-static {v6, v8}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$msetImeWindowVisibility(Landroid/inputmethodservice/InputMethodService;I)V

    .line 1076
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v6}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v6

    .line 1077
    .local v6, "isVisible":Z
    if-eq v6, v2, :cond_a4

    move v8, v1

    goto :goto_a5

    :cond_a4
    move v8, v7

    .line 1078
    .local v8, "visibilityChanged":Z
    :goto_a5
    if-eqz p2, :cond_b4

    .line 1079
    if-eqz v8, :cond_ab

    .line 1080
    const/4 v1, 0x2

    goto :goto_b0

    .line 1081
    :cond_ab
    if-eqz v2, :cond_af

    move v1, v7

    goto :goto_b0

    .line 1082
    :cond_af
    nop

    :goto_b0
    nop

    .line 1079
    invoke-virtual {p2, v1, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1084
    :cond_b4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1085
    return-void
.end method

.method public blacklist showSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 9
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "showInputToken"    # Landroid/os/IBinder;
    .param p4, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1025
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingShowSoftInput:Z

    .line 1026
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurShowInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 1027
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p4}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurStatsToken(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 1029
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1b

    .line 1031
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurShowInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 1032
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingShowSoftInput:Z

    .line 1033
    nop

    .line 1034
    return-void

    .line 1031
    :catchall_1b
    move-exception v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurShowInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 1032
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingShowSoftInput:Z

    .line 1033
    throw v2
.end method

.method public whitelist startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 7
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 878
    const-string v0, "IMS.startInput"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 879
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 880
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 881
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

    .line 1157
    .local p3, "stylusEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;)Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1161
    return-void

    .line 1164
    :cond_13
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {p1}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;Ljava/util/OptionalInt;)V

    .line 1165
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 1167
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InkWindow;->show()V

    .line 1168
    nop

    .line 1169
    invoke-static {}, Lcom/android/input/flags/Flags;->enableMultiDeviceInput()Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSimultaneousStylusAndTouchEnabled:Z

    .line 1172
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;)V

    invoke-interface {p3, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1175
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p2, v2}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;-><init>(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmHandwritingEventReceiver(Landroid/inputmethodservice/InputMethodService;Landroid/view/InputEventReceiver;)V

    .line 1196
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mscheduleHandwritingSessionTimeout(Landroid/inputmethodservice/InputMethodService;)V

    .line 1197
    return-void
.end method

.method public whitelist unbindInput()V
    .registers 3

    .line 860
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onUnbindInput()V

    .line 861
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    .line 862
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object v1, v0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 864
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 865
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->finishStylusHandwriting()V

    .line 867
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mscheduleStylusWindowIdleTimeout(Landroid/inputmethodservice/InputMethodService;)V

    .line 869
    :cond_1e
    return-void
.end method

.method public blacklist updateEditorToolType(I)V
    .registers 3
    .param p1, "toolType"    # I

    .line 1093
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mupdateEditorToolTypeInternal(Landroid/inputmethodservice/InputMethodService;I)V

    .line 1094
    return-void
.end method
