.class final Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Landroid/view/ImeFocusController$InputMethodManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelegateImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetCurrentRootViewLocked(Landroid/view/inputmethod/InputMethodManager$DelegateImpl;Landroid/view/ViewRootImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->setCurrentRootViewLocked(Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 895
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method

.method private blacklist setCurrentRootViewLocked(Landroid/view/ViewRootImpl;)V
    .registers 5
    .param p1, "rootView"    # Landroid/view/ViewRootImpl;

    .line 1039
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1040
    .local v0, "wasEmpty":Z
    :goto_9
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v1

    if-eqz v1, :cond_20

    if-nez v0, :cond_20

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v1, p1, :cond_20

    .line 1041
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-static {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$monImeFocusLost(Landroid/view/inputmethod/InputMethodManager;Landroid/view/ViewRootImpl;)V

    .line 1044
    :cond_20
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2, p1}, Landroid/window/ImeOnBackInvokedDispatcher;->switchRootView(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl;)V

    .line 1045
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 1046
    if-eqz v0, :cond_4a

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_4a

    .line 1047
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/window/ImeOnBackInvokedDispatcher;->updateReceivingDispatcher(Landroid/window/WindowOnBackInvokedDispatcher;)V

    .line 1049
    :cond_4a
    return-void
.end method


# virtual methods
.method public blacklist onPostWindowGainedFocus(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 26
    .param p1, "viewForWindowFocus"    # Landroid/view/View;
    .param p2, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 909
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    const/4 v2, 0x0

    .line 910
    .local v2, "forceFocus":Z
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 912
    :try_start_c
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$monViewFocusChangedInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Z)V

    .line 916
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v0

    const/4 v6, 0x0

    if-ne v0, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v5, v6

    .line 918
    .local v5, "nextFocusIsServedView":Z
    :goto_1d
    if-eqz v5, :cond_29

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 919
    invoke-static {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mhasActiveInputConnectionInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 920
    const/4 v0, 0x1

    move v2, v0

    .line 922
    .end local v5    # "nextFocusIsServedView":Z
    :cond_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_d5

    .line 924
    iget v13, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 925
    .local v13, "softInputMode":I
    iget v14, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 927
    .local v14, "windowFlags":I
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetStartInputFlags(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)I

    move-result v0

    .line 928
    .local v0, "startInputFlags":I
    or-int/lit8 v5, v0, 0x8

    .line 930
    .end local v0    # "startInputFlags":I
    .local v5, "startInputFlags":I
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManager.DelegateImpl#startInputAsyncOnWindowFocusGain"

    iget-object v7, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v7, v9}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 935
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 936
    :try_start_47
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_4f

    .line 937
    monitor-exit v7

    return-void

    .line 939
    :cond_4f
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 941
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V
    :try_end_5c
    .catchall {:try_start_47 .. :try_end_5c} :catchall_d2

    .line 942
    const/4 v2, 0x1

    move v9, v2

    goto :goto_60

    .line 939
    :cond_5f
    move v9, v2

    .line 944
    .end local v2    # "forceFocus":Z
    .local v9, "forceFocus":Z
    :goto_60
    :try_start_60
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-static {v0, v9, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z

    move-result v0

    move/from16 v22, v0

    .line 945
    .local v22, "checkFocusResult":Z
    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_ce

    .line 947
    if-eqz v22, :cond_7b

    .line 952
    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x1

    move v6, v13

    move v7, v14

    .end local v13    # "softInputMode":I
    .end local v14    # "windowFlags":I
    .local v6, "softInputMode":I
    .local v7, "windowFlags":I
    invoke-static/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputOnWindowFocusGainInternal(Landroid/view/inputmethod/InputMethodManager;ILandroid/view/View;III)Z

    move-result v0

    .end local v6    # "softInputMode":I
    .end local v7    # "windowFlags":I
    .restart local v13    # "softInputMode":I
    .restart local v14    # "windowFlags":I
    if-eqz v0, :cond_7b

    .line 954
    return-void

    .line 958
    :cond_7b
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 965
    :try_start_80
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 966
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 965
    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$smhasViewImeRequestedVisible(Landroid/view/View;)Z

    move-result v21

    .line 969
    .local v21, "imeRequestedVisible":Z
    const-string v0, "IMM.startInputOrWindowGainedFocus"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 970
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmClient(Landroid/view/inputmethod/InputMethodManager;)Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    move-result-object v10

    .line 972
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v11

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 976
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 977
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v20
    :try_end_b3
    .catchall {:try_start_80 .. :try_end_b3} :catchall_c8

    .line 970
    move v6, v9

    .end local v9    # "forceFocus":Z
    .local v6, "forceFocus":Z
    const/4 v9, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v0

    move v12, v5

    .end local v5    # "startInputFlags":I
    .local v12, "startInputFlags":I
    :try_start_bd
    invoke-static/range {v9 .. v21}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c5

    .line 978
    .end local v12    # "startInputFlags":I
    .restart local v5    # "startInputFlags":I
    :try_start_c0
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 979
    .end local v21    # "imeRequestedVisible":Z
    monitor-exit v2

    .line 980
    return-void

    .line 979
    .end local v5    # "startInputFlags":I
    .restart local v12    # "startInputFlags":I
    :catchall_c5
    move-exception v0

    move v5, v12

    .end local v12    # "startInputFlags":I
    .restart local v5    # "startInputFlags":I
    goto :goto_ca

    .end local v6    # "forceFocus":Z
    .restart local v9    # "forceFocus":Z
    :catchall_c8
    move-exception v0

    move v6, v9

    .end local v9    # "forceFocus":Z
    .restart local v6    # "forceFocus":Z
    :goto_ca
    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_c0 .. :try_end_cb} :catchall_cc

    throw v0

    :catchall_cc
    move-exception v0

    goto :goto_ca

    .line 945
    .end local v6    # "forceFocus":Z
    .end local v22    # "checkFocusResult":Z
    .restart local v9    # "forceFocus":Z
    :catchall_ce
    move-exception v0

    move v6, v9

    move v2, v6

    .end local v9    # "forceFocus":Z
    .restart local v6    # "forceFocus":Z
    goto :goto_d3

    .end local v6    # "forceFocus":Z
    .restart local v2    # "forceFocus":Z
    :catchall_d2
    move-exception v0

    :goto_d3
    :try_start_d3
    monitor-exit v7
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v0

    .line 922
    .end local v5    # "startInputFlags":I
    .end local v13    # "softInputMode":I
    .end local v14    # "windowFlags":I
    :catchall_d5
    move-exception v0

    :try_start_d6
    monitor-exit v3
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v0
.end method

.method public blacklist onPreWindowGainedFocus(Landroid/view/ViewRootImpl;)V
    .registers 5
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 900
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 901
    :try_start_5
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->setCurrentRootViewLocked(Landroid/view/ViewRootImpl;)V

    .line 902
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootViewWindowFocused:Z

    .line 903
    monitor-exit v0

    .line 904
    return-void

    .line 903
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist onScheduledCheckFocus(Landroid/view/ViewRootImpl;)V
    .registers 10
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 999
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1000
    :try_start_5
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1001
    monitor-exit v1

    return-void

    .line 1003
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_1c

    .line 1004
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputOnWindowFocusGainInternal(Landroid/view/inputmethod/InputMethodManager;ILandroid/view/View;III)Z

    .line 1007
    return-void

    .line 1003
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public blacklist onViewDetachedFromWindow(Landroid/view/View;Landroid/view/ViewRootImpl;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 1011
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1012
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eq v1, v2, :cond_11

    .line 1013
    monitor-exit v0

    return-void

    .line 1015
    :cond_11
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmNextServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1f

    .line 1016
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmNextServedView(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 1018
    :cond_1f
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2a

    .line 1019
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 1021
    :cond_2a
    monitor-exit v0

    .line 1022
    return-void

    .line 1021
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public blacklist onViewFocusChanged(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 994
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$monViewFocusChangedInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Z)V

    .line 995
    return-void
.end method

.method public blacklist onWindowDismissed(Landroid/view/ViewRootImpl;)V
    .registers 4
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 1026
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1027
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v1, p1, :cond_d

    .line 1028
    monitor-exit v0

    return-void

    .line 1030
    :cond_d
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1031
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1033
    :cond_1a
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->setCurrentRootViewLocked(Landroid/view/ViewRootImpl;)V

    .line 1034
    monitor-exit v0

    .line 1035
    return-void

    .line 1034
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist onWindowLostFocus(Landroid/view/ViewRootImpl;)V
    .registers 5
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 984
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 985
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-ne v1, p1, :cond_15

    .line 986
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootViewWindowFocused:Z

    .line 987
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearCurRootViewIfNeeded(Landroid/view/inputmethod/InputMethodManager;)Z

    .line 989
    :cond_15
    monitor-exit v0

    .line 990
    return-void

    .line 989
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1
.end method
