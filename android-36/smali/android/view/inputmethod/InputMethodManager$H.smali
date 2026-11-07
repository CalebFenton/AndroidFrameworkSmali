.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$I_rRPtZ_qTSdKK46C0wWRGEaNhU(Landroid/view/inputmethod/InputMethodManager$H;Landroid/view/ViewRootImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$H;->lambda$handleMessage$0(Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1152
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 1153
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1154
    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$0(Landroid/view/ViewRootImpl;)V
    .registers 6
    .param p1, "currentViewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 1423
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1424
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v1, p1, :cond_d

    .line 1426
    monitor-exit v0

    return-void

    .line 1428
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_24

    .line 1429
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 1430
    .local v0, "curRootView":Landroid/view/View;
    if-nez v0, :cond_15

    .line 1432
    return-void

    .line 1434
    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 1435
    .local v1, "focusedView":Landroid/view/View;
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    invoke-static {v2, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$monViewFocusChangedInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Z)V

    .line 1436
    return-void

    .line 1428
    .end local v0    # "curRootView":Landroid/view/View;
    .end local v1    # "focusedView":Landroid/view/View;
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 1158
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_488

    goto/16 :goto_487

    .line 1202
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/inputmethod/InputBindResult;

    .line 1203
    .local v3, "res":Lcom/android/internal/inputmethod/InputBindResult;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1204
    .local v4, "startInputSeq":I
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 1205
    :try_start_16
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmLastPendingStartSeqId(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v0

    if-ne v0, v4, :cond_24

    .line 1207
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v6, -0x1

    invoke-static {v0, v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmLastPendingStartSeqId(Landroid/view/inputmethod/InputMethodManager;I)V

    .line 1210
    :cond_24
    if-nez v3, :cond_28

    .line 1212
    monitor-exit v5

    return-void

    .line 1216
    :cond_28
    iget-object v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    if-eqz v0, :cond_80

    .line 1217
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-static {v0, v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mupdateInputChannelLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;)V

    .line 1218
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v3, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    iput-object v6, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 1219
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    new-instance v6, Landroid/view/inputmethod/InputMethodManager$BindState;

    invoke-direct {v6, v3}, Landroid/view/inputmethod/InputMethodManager$BindState;-><init>(Lcom/android/internal/inputmethod/InputBindResult;)V

    invoke-static {v0, v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCurBindState(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$BindState;)V

    .line 1220
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1221
    iget-object v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-eqz v0, :cond_79

    .line 1222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_51
    iget-object v6, v3, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_79

    .line 1223
    iget-object v6, v3, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 1225
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 1224
    invoke-static {v6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    move-result-object v6

    .line 1226
    .local v6, "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    if-eqz v6, :cond_76

    .line 1227
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v7}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;

    move-result-object v7

    iget-object v8, v3, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 1228
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1227
    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1222
    .end local v6    # "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 1232
    .end local v0    # "i":I
    :cond_79
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v3, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object v6, v0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    goto :goto_93

    .line 1233
    :cond_80
    iget-object v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_93

    iget-object v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurChannel(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/InputChannel;

    move-result-object v6

    if-eq v0, v6, :cond_93

    .line 1234
    iget-object v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1236
    :cond_93
    :goto_93
    iget v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    packed-switch v0, :pswitch_data_4c2

    goto :goto_a3

    .line 1238
    :pswitch_99
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1239
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmServedView(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 1242
    :goto_a3
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCompletions(Landroid/view/inputmethod/InputMethodManager;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    if-eqz v0, :cond_c4

    .line 1243
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$misImeSessionAvailableLocked(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 1244
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurBindState(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$BindState;

    move-result-object v0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCompletions(Landroid/view/inputmethod/InputMethodManager;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1248
    :cond_c4
    if-eqz v3, :cond_ed

    iget-object v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v0, :cond_ed

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_ed

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    move-result-object v0

    if-eqz v0, :cond_ed

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;->mSequenceNum:I

    if-ne v0, v4, :cond_ed

    .line 1254
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;->run()V

    .line 1256
    :cond_ed
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;)V

    .line 1257
    monitor-exit v5

    .line 1258
    return-void

    .line 1257
    :catchall_f4
    move-exception v0

    monitor-exit v5
    :try_end_f6
    .catchall {:try_start_16 .. :try_end_f6} :catchall_f4

    throw v0

    .line 1500
    .end local v3    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v4    # "startInputSeq":I
    :sswitch_f7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1501
    :try_start_fc
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeInsetsConsumer(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;

    move-result-object v0

    if-eqz v0, :cond_10d

    .line 1502
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeInsetsConsumer(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeInsetsSourceConsumer;->onShowRequested()V

    .line 1504
    :cond_10d
    monitor-exit v1

    .line 1505
    return-void

    .line 1504
    :catchall_10f
    move-exception v0

    monitor-exit v1
    :try_end_111
    .catchall {:try_start_fc .. :try_end_111} :catchall_10f

    throw v0

    .line 1450
    :sswitch_112
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    .line 1451
    .local v4, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1452
    .local v5, "visible":Z
    iget-object v0, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/view/inputmethod/ImeTracker$Token;

    .line 1453
    .local v6, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 1454
    :try_start_129
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/16 v1, 0x3a

    if-eqz v0, :cond_154

    .line 1455
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v0

    .line 1456
    .local v0, "insetsController":Landroid/view/InsetsController;
    if-eqz v0, :cond_153

    .line 1457
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v6, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1459
    if-eqz v5, :cond_14c

    .line 1460
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1, v3, v6}, Landroid/view/InsetsController;->show(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_153

    .line 1463
    :cond_14c
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1, v3, v6}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1467
    .end local v0    # "insetsController":Landroid/view/InsetsController;
    :cond_153
    :goto_153
    goto :goto_15b

    .line 1468
    :cond_154
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v6, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1471
    :goto_15b
    monitor-exit v7

    .line 1472
    goto/16 :goto_487

    .line 1471
    :catchall_15e
    move-exception v0

    monitor-exit v7
    :try_end_160
    .catchall {:try_start_129 .. :try_end_160} :catchall_15e

    throw v0

    .line 1402
    .end local v4    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v5    # "visible":Z
    .end local v6    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :sswitch_161
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_167

    move v0, v2

    goto :goto_168

    :cond_167
    move v0, v3

    :goto_168
    move v4, v0

    .line 1403
    .local v4, "interactive":Z
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_16e

    goto :goto_16f

    :cond_16e
    move v2, v3

    .line 1408
    .local v2, "fullscreen":Z
    :goto_16f
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1409
    :try_start_174
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmActive(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1410
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1411
    if-eqz v4, :cond_1a0

    .line 1415
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_18e

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 1416
    .local v1, "rootView":Landroid/view/View;
    :cond_18e
    if-nez v1, :cond_192

    .line 1418
    monitor-exit v3

    return-void

    .line 1420
    :cond_192
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 1422
    .local v0, "currentViewRootImpl":Landroid/view/ViewRootImpl;
    new-instance v5, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0}, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/InputMethodManager$H;Landroid/view/ViewRootImpl;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1437
    nop

    .end local v0    # "currentViewRootImpl":Landroid/view/ViewRootImpl;
    .end local v1    # "rootView":Landroid/view/View;
    goto :goto_1c2

    .line 1439
    :cond_1a0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1440
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$misImeSessionAvailableLocked(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 1441
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurBindState(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$BindState;

    move-result-object v0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v0}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->finishInput()V

    .line 1443
    :cond_1b8
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    new-instance v1, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mforAccessibilitySessionsLocked(Landroid/view/inputmethod/InputMethodManager;Ljava/util/function/Consumer;)V

    .line 1446
    :goto_1c2
    monitor-exit v3

    .line 1447
    return-void

    .line 1446
    :catchall_1c4
    move-exception v0

    monitor-exit v3
    :try_end_1c6
    .catchall {:try_start_174 .. :try_end_1c6} :catchall_1c4

    throw v0

    .line 1339
    .end local v2    # "fullscreen":Z
    .end local v4    # "interactive":Z
    :sswitch_1c7
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1340
    .local v1, "sequence":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1345
    .local v2, "id":I
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 1346
    :try_start_1d0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v0

    if-eq v0, v1, :cond_1da

    .line 1351
    monitor-exit v3

    return-void

    .line 1353
    :cond_1da
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;I)V

    .line 1354
    monitor-exit v3

    .line 1355
    return-void

    .line 1354
    :catchall_1e1
    move-exception v0

    monitor-exit v3
    :try_end_1e3
    .catchall {:try_start_1d0 .. :try_end_1e3} :catchall_1e1

    throw v0

    .line 1293
    .end local v1    # "sequence":I
    .end local v2    # "id":I
    :sswitch_1e4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1294
    .local v1, "id":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/internal/inputmethod/InputBindResult;

    .line 1299
    .local v4, "res":Lcom/android/internal/inputmethod/InputBindResult;
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 1300
    :try_start_1f0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v0

    .line 1301
    .local v0, "curBindSequence":I
    if-ltz v0, :cond_25f

    iget v2, v4, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    if-eq v0, v2, :cond_1fd

    goto :goto_25f

    .line 1313
    :cond_1fd
    iget-object v2, v4, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-eqz v2, :cond_252

    .line 1314
    iget-object v2, v4, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 1316
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 1315
    invoke-static {v2}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    move-result-object v2

    move-object v6, v2

    .line 1317
    .local v6, "invoker":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    if-eqz v6, :cond_252

    .line 1318
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1319
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object v2

    if-eqz v2, :cond_249

    .line 1320
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmInitialSelStart(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v7

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmInitialSelEnd(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v8

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorSelStart(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v9

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorSelEnd(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v10

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorCandStart(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v11

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorCandEnd(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v12

    invoke-virtual/range {v6 .. v12}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    goto :goto_252

    .line 1329
    :cond_249
    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-virtual/range {v6 .. v12}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    .line 1333
    .end local v0    # "curBindSequence":I
    .end local v6    # "invoker":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    :cond_252
    :goto_252
    monitor-exit v5
    :try_end_253
    .catchall {:try_start_1f0 .. :try_end_253} :catchall_298

    .line 1334
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z

    .line 1336
    return-void

    .line 1302
    .restart local v0    # "curBindSequence":I
    :cond_25f
    :goto_25f
    :try_start_25f
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring onBind: cur seq="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", given seq="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v4, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v2, v4, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v2, :cond_296

    iget-object v2, v4, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurChannel(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/InputChannel;

    move-result-object v3

    if-eq v2, v3, :cond_296

    .line 1305
    iget-object v2, v4, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 1307
    :cond_296
    monitor-exit v5

    return-void

    .line 1333
    .end local v0    # "curBindSequence":I
    :catchall_298
    move-exception v0

    monitor-exit v5
    :try_end_29a
    .catchall {:try_start_25f .. :try_end_29a} :catchall_298

    throw v0

    .line 1486
    .end local v1    # "id":I
    .end local v4    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    :sswitch_29b
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2a0

    goto :goto_2a1

    :cond_2a0
    move v2, v3

    .line 1487
    .local v2, "fullscreen":Z
    :goto_2a1
    const/4 v1, 0x0

    .line 1488
    .local v1, "ic":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 1489
    :try_start_2a7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0

    if-eq v0, v2, :cond_2c3

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object v0

    if-eqz v0, :cond_2c3

    .line 1490
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object v0

    move-object v1, v0

    .line 1491
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1493
    :cond_2c3
    monitor-exit v4
    :try_end_2c4
    .catchall {:try_start_2a7 .. :try_end_2c4} :catchall_2ca

    .line 1494
    if-eqz v1, :cond_2c9

    .line 1495
    invoke-virtual {v1, v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchReportFullscreenMode(Z)V

    .line 1497
    :cond_2c9
    return-void

    .line 1493
    :catchall_2ca
    move-exception v0

    :try_start_2cb
    monitor-exit v4
    :try_end_2cc
    .catchall {:try_start_2cb .. :try_end_2cc} :catchall_2ca

    throw v0

    .line 1482
    .end local v1    # "ic":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v2    # "fullscreen":Z
    :sswitch_2cd
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mfinishedInputEvent(Landroid/view/inputmethod/InputMethodManager;IZZ)V

    .line 1483
    return-void

    .line 1478
    :sswitch_2d5
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mfinishedInputEvent(Landroid/view/inputmethod/InputMethodManager;IZZ)V

    .line 1479
    return-void

    .line 1474
    :sswitch_2dd
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    .line 1475
    return-void

    .line 1358
    :sswitch_2e7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2ed

    move v0, v2

    goto :goto_2ee

    :cond_2ed
    move v0, v3

    :goto_2ee
    move v4, v0

    .line 1359
    .local v4, "active":Z
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_2f4

    move v3, v2

    .line 1363
    .local v3, "fullscreen":Z
    :cond_2f4
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 1364
    :try_start_2f9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmActive(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1365
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1367
    if-nez v4, :cond_31d

    .line 1371
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1374
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmFallbackInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->finishComposingTextFromImm()V

    .line 1376
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearCurRootViewIfNeeded(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0

    if-eqz v0, :cond_31d

    .line 1377
    monitor-exit v5

    return-void

    .line 1382
    :cond_31d
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v0

    .line 1383
    .local v0, "servedView":Landroid/view/View;
    if-eqz v0, :cond_36a

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$smcanStartInput(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_32c

    goto :goto_36a

    .line 1386
    :cond_32c
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-nez v6, :cond_334

    .line 1387
    monitor-exit v5

    return-void

    .line 1389
    :cond_334
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v7}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v7

    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v8, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-static {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z

    move-result v6

    if-nez v6, :cond_348

    .line 1390
    monitor-exit v5

    return-void

    .line 1392
    :cond_348
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v6, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCurrentEditorInfo(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/EditorInfo;)V

    .line 1393
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v6, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCompletions(Landroid/view/inputmethod/InputMethodManager;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1394
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmServedConnecting(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1395
    .end local v0    # "servedView":Landroid/view/View;
    monitor-exit v5
    :try_end_358
    .catchall {:try_start_2f9 .. :try_end_358} :catchall_36c

    .line 1396
    if-eqz v4, :cond_35d

    const/16 v0, 0x8

    goto :goto_35f

    .line 1397
    :cond_35d
    const/16 v0, 0x9

    :goto_35f
    move v6, v0

    .line 1398
    .local v6, "reason":I
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z

    .line 1399
    return-void

    .line 1384
    .end local v6    # "reason":I
    .restart local v0    # "servedView":Landroid/view/View;
    :cond_36a
    :goto_36a
    :try_start_36a
    monitor-exit v5

    return-void

    .line 1395
    .end local v0    # "servedView":Landroid/view/View;
    :catchall_36c
    move-exception v0

    monitor-exit v5
    :try_end_36e
    .catchall {:try_start_36a .. :try_end_36e} :catchall_36c

    throw v0

    .line 1261
    .end local v3    # "fullscreen":Z
    .end local v4    # "active":Z
    :sswitch_36f
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1263
    .local v1, "sequence":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 1269
    .local v4, "reason":I
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 1270
    const/4 v0, 0x3

    if-ne v4, v0, :cond_384

    .line 1271
    :try_start_37b
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->clear()V

    .line 1273
    :cond_384
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v0

    if-eq v0, v1, :cond_38e

    .line 1274
    monitor-exit v5

    return-void

    .line 1276
    :cond_38e
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearAllAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 1277
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 1280
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v0

    .line 1281
    .restart local v0    # "servedView":Landroid/view/View;
    if-eqz v0, :cond_3ab

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_3ab

    .line 1282
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmServedConnecting(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1284
    :cond_3ab
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmActive(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v2

    .line 1285
    .end local v0    # "servedView":Landroid/view/View;
    .local v2, "startInput":Z
    monitor-exit v5
    :try_end_3b2
    .catchall {:try_start_37b .. :try_end_3b2} :catchall_3bf

    .line 1286
    if-eqz v2, :cond_3be

    .line 1287
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z

    .line 1290
    :cond_3be
    return-void

    .line 1285
    .end local v2    # "startInput":Z
    :catchall_3bf
    move-exception v0

    :try_start_3c0
    monitor-exit v5
    :try_end_3c1
    .catchall {:try_start_3c0 .. :try_end_3c1} :catchall_3bf

    throw v0

    .line 1174
    .end local v1    # "sequence":I
    .end local v4    # "reason":I
    :sswitch_3c2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/InputBindResult;

    .line 1178
    .local v1, "res":Lcom/android/internal/inputmethod/InputBindResult;
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 1179
    :try_start_3cc
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v0

    .line 1180
    .local v0, "curBindSequence":I
    if-ltz v0, :cond_407

    iget v4, v1, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    if-eq v0, v4, :cond_3d9

    goto :goto_407

    .line 1189
    :cond_3d9
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;I)V

    .line 1192
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-static {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mupdateInputChannelLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;)V

    .line 1193
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v1, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    iput-object v4, v3, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 1194
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    new-instance v4, Landroid/view/inputmethod/InputMethodManager$BindState;

    invoke-direct {v4, v1}, Landroid/view/inputmethod/InputMethodManager$BindState;-><init>(Lcom/android/internal/inputmethod/InputBindResult;)V

    invoke-static {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCurBindState(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$BindState;)V

    .line 1195
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v1, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object v4, v3, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 1196
    .end local v0    # "curBindSequence":I
    monitor-exit v2
    :try_end_3fc
    .catchall {:try_start_3cc .. :try_end_3fc} :catchall_440

    .line 1197
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z

    .line 1198
    return-void

    .line 1181
    .restart local v0    # "curBindSequence":I
    :cond_407
    :goto_407
    :try_start_407
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring onBind: cur seq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", given seq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v3, v1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v3, :cond_43e

    iget-object v3, v1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurChannel(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/InputChannel;

    move-result-object v4

    if-eq v3, v4, :cond_43e

    .line 1184
    iget-object v3, v1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    .line 1186
    :cond_43e
    monitor-exit v2

    return-void

    .line 1196
    .end local v0    # "curBindSequence":I
    :catchall_440
    move-exception v0

    monitor-exit v2
    :try_end_442
    .catchall {:try_start_407 .. :try_end_442} :catchall_440

    throw v0

    .line 1160
    .end local v1    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    :sswitch_443
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1162
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_448
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/io/FileDescriptor;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/io/PrintWriter;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mdoDump(Landroid/view/inputmethod/InputMethodManager;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_459
    .catch Ljava/lang/RuntimeException; {:try_start_448 .. :try_end_459} :catch_45a

    .line 1166
    goto :goto_475

    .line 1164
    :catch_45a
    move-exception v0

    .line 1165
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_475
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v2

    .line 1168
    :try_start_478
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1169
    monitor-exit v2
    :try_end_480
    .catchall {:try_start_478 .. :try_end_480} :catchall_484

    .line 1170
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1171
    return-void

    .line 1169
    :catchall_484
    move-exception v0

    :try_start_485
    monitor-exit v2
    :try_end_486
    .catchall {:try_start_485 .. :try_end_486} :catchall_484

    throw v0

    .line 1508
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_487
    return-void

    :sswitch_data_488
    .sparse-switch
        0x1 -> :sswitch_443
        0x2 -> :sswitch_3c2
        0x3 -> :sswitch_36f
        0x4 -> :sswitch_2e7
        0x5 -> :sswitch_2dd
        0x6 -> :sswitch_2d5
        0x7 -> :sswitch_2cd
        0xa -> :sswitch_29b
        0xb -> :sswitch_1e4
        0xc -> :sswitch_1c7
        0xd -> :sswitch_161
        0xe -> :sswitch_112
        0x1f -> :sswitch_f7
        0x28 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_4c2
    .packed-switch 0xc
        :pswitch_99
    .end packed-switch
.end method
