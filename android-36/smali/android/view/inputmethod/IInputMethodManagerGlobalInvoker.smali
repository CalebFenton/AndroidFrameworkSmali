.class final Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;
.super Ljava/lang/Object;
.source "IInputMethodManagerGlobalInvoker.java"


# static fields
.field private static final blacklist TIMEOUT_MS:J = 0x2710L

.field private static blacklist sCurStartInputSeq:I

.field private static volatile blacklist sServiceCache:Lcom/android/internal/view/IInputMethodManager;

.field private static volatile blacklist sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    const/4 v0, 0x0

    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sServiceCache:Lcom/android/internal/view/IInputMethodManager;

    .line 76
    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;

    .line 77
    const/4 v0, 0x0

    sput v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 12
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "userId"    # I
    .param p2, "delegatePackageName"    # Ljava/lang/String;
    .param p3, "delegatorPackageName"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 651
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 652
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_8

    .line 653
    const/4 v0, 0x0

    return v0

    .line 656
    :cond_8
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p0    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p1    # "userId":I
    .end local p2    # "delegatePackageName":Ljava/lang/String;
    .end local p3    # "delegatorPackageName":Ljava/lang/String;
    .end local p4    # "flags":I
    .local v2, "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .local v3, "userId":I
    .local v4, "delegatePackageName":Ljava/lang/String;
    .local v5, "delegatorPackageName":Ljava/lang/String;
    .local v6, "flags":I
    :try_start_d
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/view/IInputMethodManager;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return p0

    .line 658
    :catch_12
    move-exception v0

    move-object p0, v0

    .line 659
    .local p0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method static blacklist acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)Z
    .registers 14
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "userId"    # I
    .param p2, "delegatePackageName"    # Ljava/lang/String;
    .param p3, "delegatorPackageName"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "callback"    # Lcom/android/internal/inputmethod/IBooleanListener;

    .line 672
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 673
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_8

    .line 674
    const/4 v0, 0x0

    return v0

    .line 677
    :cond_8
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .end local p0    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p1    # "userId":I
    .end local p2    # "delegatePackageName":Ljava/lang/String;
    .end local p3    # "delegatorPackageName":Ljava/lang/String;
    .end local p4    # "flags":I
    .end local p5    # "callback":Lcom/android/internal/inputmethod/IBooleanListener;
    .local v2, "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .local v3, "userId":I
    .local v4, "delegatePackageName":Ljava/lang/String;
    .local v5, "delegatorPackageName":Ljava/lang/String;
    .local v6, "flags":I
    .local v7, "callback":Lcom/android/internal/inputmethod/IBooleanListener;
    :try_start_e
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/view/IInputMethodManager;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_14

    .line 681
    nop

    .line 682
    const/4 p0, 0x1

    return p0

    .line 679
    :catch_14
    move-exception v0

    move-object p0, v0

    .line 680
    .local p0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method static blacklist addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 6
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "fallbackInputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p2, "untrustedDisplayId"    # I

    .line 223
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 224
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 225
    return-void

    .line 228
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 231
    nop

    .line 232
    return-void

    .line 229
    :catch_c
    move-exception v1

    .line 230
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .registers 4
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 703
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 704
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 705
    return-void

    .line 708
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 711
    nop

    .line 712
    return-void

    .line 709
    :catch_c
    move-exception v1

    .line 710
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist advanceAngGetStartInputSequenceNumber()I
    .registers 1

    .line 430
    sget v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    return v0
.end method

.method static blacklist finishTrackingPendingImeVisibilityRequests()V
    .registers 5

    .line 847
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 848
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_7

    .line 849
    return-void

    .line 852
    :cond_7
    :try_start_7
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 853
    .local v1, "completionSignal":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IImeTracker;->finishTrackingPendingImeVisibilityRequests(Lcom/android/internal/infra/AndroidFuture;)V

    .line 854
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_18

    .line 859
    nop

    .line 860
    .end local v1    # "completionSignal":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void

    .line 857
    :catch_18
    move-exception v1

    .line 858
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 855
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v1

    .line 856
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .registers 4
    .param p0, "userId"    # I

    .line 238
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 239
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_8

    .line 240
    const/4 v1, 0x0

    return-object v1

    .line 243
    :cond_8
    :try_start_8
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 244
    :catch_d
    move-exception v1

    .line 245
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 4
    .param p0, "userId"    # I

    .line 512
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 513
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_8

    .line 514
    const/4 v1, 0x0

    return-object v1

    .line 517
    :cond_8
    :try_start_8
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 518
    :catch_d
    move-exception v1

    .line 519
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getEnabledInputMethodList(I)Ljava/util/List;
    .registers 4
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 275
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_c

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 279
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/view/inputmethod/Flags;->useInputMethodInfoSafeList()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 280
    nop

    .line 281
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v1

    .line 280
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->extractFrom(Lcom/android/internal/inputmethod/InputMethodInfoSafeList;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 283
    :cond_1c
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_20} :catch_21

    return-object v1

    .line 285
    :catch_21
    move-exception v1

    .line 286
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;
    .registers 6
    .param p0, "imiId"    # Ljava/lang/String;
    .param p1, "allowsImplicitlyEnabledSubtypes"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 295
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 296
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_c

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 300
    :cond_c
    :try_start_c
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return-object v1

    .line 302
    :catch_11
    move-exception v1

    .line 303
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
    .registers 4

    .line 865
    sget-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;

    .line 866
    .local v0, "trackerService":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_1d

    .line 867
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 868
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 869
    return-object v2

    .line 873
    :cond_c
    :try_start_c
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v3

    move-object v0, v3

    .line 874
    if-nez v0, :cond_14

    .line 875
    return-object v2

    .line 878
    :cond_14
    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    .line 881
    goto :goto_1d

    .line 879
    :catch_17
    move-exception v2

    .line 880
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 883
    .end local v1    # "service":Lcom/android/internal/view/IInputMethodManager;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-object v0
.end method

.method static blacklist getInputMethodList(II)Ljava/util/List;
    .registers 5
    .param p0, "userId"    # I
    .param p1, "directBootAwareness"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 255
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_c

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 259
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/view/inputmethod/Flags;->useInputMethodInfoSafeList()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 260
    nop

    .line 261
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v1

    .line 260
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->extractFrom(Lcom/android/internal/inputmethod/InputMethodInfoSafeList;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 263
    :cond_1c
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodListLegacy(II)Ljava/util/List;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_20} :catch_21

    return-object v1

    .line 265
    :catch_21
    move-exception v1

    .line 266
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .registers 4
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 555
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 556
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_8

    .line 557
    const/4 v1, 0x0

    return v1

    .line 560
    :cond_8
    :try_start_8
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 561
    :catch_d
    move-exception v1

    .line 562
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 4
    .param p0, "userId"    # I

    .line 311
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 312
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_8

    .line 313
    const/4 v1, 0x0

    return-object v1

    .line 316
    :cond_8
    :try_start_8
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 317
    :catch_d
    move-exception v1

    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getService()Lcom/android/internal/view/IInputMethodManager;
    .registers 3

    .line 90
    sget-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sServiceCache:Lcom/android/internal/view/IInputMethodManager;

    .line 91
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_1c

    .line 92
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditModeInternal()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 93
    return-object v2

    .line 95
    :cond_c
    nop

    .line 96
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 97
    if-nez v0, :cond_1a

    .line 98
    return-object v2

    .line 100
    :cond_1a
    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sServiceCache:Lcom/android/internal/view/IInputMethodManager;

    .line 102
    :cond_1c
    return-object v0
.end method

.method private static blacklist handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "e"    # Landroid/os/RemoteException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteException;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "exceptionHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/RemoteException;>;"
    if-eqz p1, :cond_6

    .line 109
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 113
    return-void

    .line 111
    :cond_6
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static blacklist hasPendingImeVisibilityRequests()Z
    .registers 3

    .line 833
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 834
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_8

    .line 835
    const/4 v1, 0x1

    return v1

    .line 838
    :cond_8
    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IImeTracker;->hasPendingImeVisibilityRequests()Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 839
    :catch_d
    move-exception v1

    .line 840
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z
    .registers 16
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p5, "reason"    # I
    .param p6, "async"    # Z

    .line 344
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 345
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_8

    .line 346
    const/4 v0, 0x0

    return v0

    .line 349
    :cond_8
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .end local p0    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local p3    # "flags":I
    .end local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p5    # "reason":I
    .end local p6    # "async":Z
    .local v2, "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .local v3, "windowToken":Landroid/os/IBinder;
    .local v4, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v5, "flags":I
    .local v6, "resultReceiver":Landroid/os/ResultReceiver;
    .local v7, "reason":I
    .local v8, "async":Z
    :try_start_f
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    move-result p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return p0

    .line 351
    :catch_14
    move-exception v0

    move-object p0, v0

    .line 352
    .local p0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method static blacklist hideSoftInputFromServerForTest()V
    .registers 3

    .line 360
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 361
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 362
    return-void

    .line 365
    :cond_7
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputFromServerForTest()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 368
    nop

    .line 369
    return-void

    .line 366
    :catch_c
    move-exception v1

    .line 367
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist isAvailable()Z
    .registers 1

    .line 84
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static blacklist isImeTraceEnabled()Z
    .registers 3

    .line 186
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 187
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_8

    .line 188
    const/4 v1, 0x0

    return v1

    .line 191
    :cond_8
    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isImeTraceEnabled()Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 192
    :catch_d
    move-exception v1

    .line 193
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist isInputMethodPickerShownForTest()Z
    .registers 3

    .line 467
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 468
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_8

    .line 469
    const/4 v1, 0x0

    return v1

    .line 472
    :cond_8
    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isInputMethodPickerShownForTest()Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 473
    :catch_d
    move-exception v1

    .line 474
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist isStylusHandwritingAvailableAsUser(IZ)Z
    .registers 5
    .param p0, "userId"    # I
    .param p1, "connectionless"    # Z

    .line 689
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 690
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_8

    .line 691
    const/4 v1, 0x0

    return v1

    .line 694
    :cond_8
    :try_start_8
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 695
    :catch_d
    move-exception v1

    .line 696
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 5
    .param p0, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p1, "phase"    # I

    .line 777
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 778
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_7

    .line 779
    return-void

    .line 782
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/android/internal/inputmethod/IImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 785
    nop

    .line 786
    return-void

    .line 783
    :catch_c
    move-exception v1

    .line 784
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4
    .param p0, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 818
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 819
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_7

    .line 820
    return-void

    .line 823
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IImeTracker;->onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 826
    nop

    .line 827
    return-void

    .line 824
    :catch_c
    move-exception v1

    .line 825
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 5
    .param p0, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p1, "phase"    # I

    .line 763
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 764
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_7

    .line 765
    return-void

    .line 768
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/android/internal/inputmethod/IImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 771
    nop

    .line 772
    return-void

    .line 769
    :catch_c
    move-exception v1

    .line 770
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4
    .param p0, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 805
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 806
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_7

    .line 807
    return-void

    .line 810
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IImeTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 813
    nop

    .line 814
    return-void

    .line 811
    :catch_c
    move-exception v1

    .line 812
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onImeSwitchButtonClickFromSystem(I)V
    .registers 4
    .param p0, "displayId"    # I

    .line 483
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 484
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 485
    return-void

    .line 488
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->onImeSwitchButtonClickFromSystem(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 491
    nop

    .line 492
    return-void

    .line 489
    :catch_c
    move-exception v1

    .line 490
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onProgress(Landroid/os/IBinder;I)V
    .registers 5
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "phase"    # I

    .line 749
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 750
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_7

    .line 751
    return-void

    .line 754
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/android/internal/inputmethod/IImeTracker;->onProgress(Landroid/os/IBinder;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 757
    nop

    .line 758
    return-void

    .line 755
    :catch_c
    move-exception v1

    .line 756
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4
    .param p0, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 791
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 792
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_7

    .line 793
    return-void

    .line 796
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IImeTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 799
    nop

    .line 800
    return-void

    .line 797
    :catch_c
    move-exception v1

    .line 798
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 14
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "type"    # I
    .param p3, "origin"    # I
    .param p4, "reason"    # I
    .param p5, "fromUser"    # Z

    .line 734
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v1

    .line 735
    .local v1, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v1, :cond_b

    .line 737
    invoke-static {p0}, Landroid/view/inputmethod/ImeTracker$Token;->empty(Ljava/lang/String;)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    return-object v0

    .line 740
    :cond_b
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p0    # "tag":Ljava/lang/String;
    .end local p1    # "uid":I
    .end local p2    # "type":I
    .end local p3    # "origin":I
    .end local p4    # "reason":I
    .end local p5    # "fromUser":Z
    .local v2, "tag":Ljava/lang/String;
    .local v3, "uid":I
    .local v4, "type":I
    .local v5, "origin":I
    .local v6, "reason":I
    .local v7, "fromUser":Z
    :try_start_11
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/inputmethod/IImeTracker;->onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return-object p0

    .line 741
    :catch_16
    move-exception v0

    move-object p0, v0

    .line 742
    .local p0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method static blacklist prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "userId"    # I
    .param p2, "delegatePackageName"    # Ljava/lang/String;
    .param p3, "delegatorPackageName"    # Ljava/lang/String;

    .line 632
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 633
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 634
    return-void

    .line 637
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 641
    nop

    .line 642
    return-void

    .line 639
    :catch_c
    move-exception v1

    .line 640
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist removeImeSurface(ILjava/util/function/Consumer;)V
    .registers 4
    .param p0, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p1, "exceptionHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/RemoteException;>;"
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 210
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 211
    return-void

    .line 214
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->removeImeSurface(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 217
    goto :goto_f

    .line 215
    :catch_b
    move-exception v1

    .line 216
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1, p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    .line 218
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method static blacklist removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    .registers 4
    .param p0, "windowToken"    # Landroid/os/IBinder;

    .line 581
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 582
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 583
    return-void

    .line 586
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 589
    nop

    .line 590
    return-void

    .line 587
    :catch_c
    move-exception v1

    .line 588
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    .registers 5
    .param p0, "windowToken"    # Landroid/os/IBinder;
    .param p1, "perceptible"    # Z

    .line 568
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 569
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 570
    return-void

    .line 573
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 576
    nop

    .line 577
    return-void

    .line 574
    :catch_c
    move-exception v1

    .line 575
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .registers 6
    .param p0, "imeId"    # Ljava/lang/String;
    .param p1, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;
    .param p2, "userId"    # I

    .line 527
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 528
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 529
    return-void

    .line 532
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 535
    nop

    .line 536
    return-void

    .line 533
    :catch_c
    move-exception v1

    .line 534
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .registers 6
    .param p0, "imeId"    # Ljava/lang/String;
    .param p1, "subtypeHashCodes"    # [I
    .param p2, "userId"    # I

    .line 542
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 543
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 544
    return-void

    .line 547
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 550
    nop

    .line 551
    return-void

    .line 548
    :catch_c
    move-exception v1

    .line 549
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .registers 6
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "timeout"    # J

    .line 718
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 719
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 720
    return-void

    .line 723
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 726
    nop

    .line 727
    return-void

    .line 724
    :catch_c
    move-exception v1

    .line 725
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist shouldShowImeSwitcherButtonForTest()Z
    .registers 3

    .line 497
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 498
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_8

    .line 499
    const/4 v1, 0x0

    return v1

    .line 502
    :cond_8
    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->shouldShowImeSwitcherButtonForTest()Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 503
    :catch_d
    move-exception v1

    .line 504
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .registers 5
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "auxiliarySubtypeMode"    # I

    .line 437
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 438
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 439
    return-void

    .line 442
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 445
    nop

    .line 446
    return-void

    .line 443
    :catch_c
    move-exception v1

    .line 444
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist showInputMethodPickerFromSystem(II)V
    .registers 5
    .param p0, "auxiliarySubtypeMode"    # I
    .param p1, "displayId"    # I

    .line 453
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 454
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 455
    return-void

    .line 458
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromSystem(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 461
    nop

    .line 462
    return-void

    .line 459
    :catch_c
    move-exception v1

    .line 460
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z
    .registers 18
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "flags"    # I
    .param p4, "lastClickToolType"    # I
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p6, "reason"    # I
    .param p7, "async"    # Z

    .line 327
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 328
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_8

    .line 329
    const/4 v0, 0x0

    return v0

    .line 332
    :cond_8
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    :try_start_12
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_17

    return v0

    .line 334
    :catch_17
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)Z
    .registers 14
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "userId"    # I
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p3, "delegatePackageName"    # Ljava/lang/String;
    .param p4, "delegatorPackageName"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    .line 613
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 614
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_8

    .line 615
    const/4 v0, 0x0

    return v0

    .line 618
    :cond_8
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p0    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p1    # "userId":I
    .end local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p3    # "delegatePackageName":Ljava/lang/String;
    .end local p4    # "delegatorPackageName":Ljava/lang/String;
    .end local p5    # "callback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .local v2, "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .local v3, "userId":I
    .local v4, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local v5, "delegatePackageName":Ljava/lang/String;
    .local v6, "delegatorPackageName":Ljava/lang/String;
    .local v7, "callback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    :try_start_e
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/view/IInputMethodManager;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_14

    .line 622
    nop

    .line 623
    const/4 p0, 0x1

    return p0

    .line 620
    :catch_14
    move-exception v0

    move-object p0, v0

    .line 621
    .local p0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method static blacklist startImeTrace(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p0, "exceptionHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/RemoteException;>;"
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 149
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 150
    return-void

    .line 153
    :cond_7
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->startImeTrace()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 156
    goto :goto_f

    .line 154
    :catch_b
    move-exception v1

    .line 155
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1, p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    .line 157
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method static blacklist startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 28
    .param p0, "startInputReason"    # I
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I
    .param p6, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p7, "remoteInputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p8, "remoteAccessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p9, "unverifiedTargetSdkVersion"    # I
    .param p10, "userId"    # I
    .param p11, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;
    .param p12, "imeRequestedVisible"    # Z

    .line 383
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 384
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_9

    .line 385
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 388
    :cond_9
    move v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    :try_start_22
    invoke-interface/range {v1 .. v14}, Lcom/android/internal/view/IInputMethodManager;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_26} :catch_27

    return-object v0

    .line 392
    :catch_27
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZZ)I
    .registers 31
    .param p0, "startInputReason"    # I
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I
    .param p6, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p7, "remoteInputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p8, "remoteAccessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p9, "unverifiedTargetSdkVersion"    # I
    .param p10, "userId"    # I
    .param p11, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;
    .param p12, "imeRequestedVisible"    # Z
    .param p13, "useAsyncShowHideMethod"    # Z

    .line 413
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 414
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_8

    .line 415
    const/4 v0, -0x1

    return v0

    .line 418
    :cond_8
    nop

    .line 421
    :try_start_9
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->advanceAngGetStartInputSequenceNumber()I

    move-result v15

    .line 418
    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v16, p13

    invoke-interface/range {v1 .. v16}, Lcom/android/internal/view/IInputMethodManager;->startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZIZ)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2c} :catch_30

    .line 425
    nop

    .line 426
    sget v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    return v0

    .line 423
    :catch_30
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist startProtoDump([BILjava/lang/String;Ljava/util/function/Consumer;)V
    .registers 6
    .param p0, "protoDump"    # [B
    .param p1, "source"    # I
    .param p2, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p3, "exceptionHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/RemoteException;>;"
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 130
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 131
    return-void

    .line 134
    :cond_7
    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->startProtoDump([BILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 137
    goto :goto_f

    .line 135
    :catch_b
    move-exception v1

    .line 136
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1, p3}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    .line 138
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method static blacklist startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .registers 4
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 594
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 595
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 596
    return-void

    .line 599
    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 602
    nop

    .line 603
    return-void

    .line 600
    :catch_c
    move-exception v1

    .line 601
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist stopImeTrace(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p0, "exceptionHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/RemoteException;>;"
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 168
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_7

    .line 169
    return-void

    .line 172
    :cond_7
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->stopImeTrace()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 175
    goto :goto_f

    .line 173
    :catch_b
    move-exception v1

    .line 174
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1, p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    .line 176
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method
