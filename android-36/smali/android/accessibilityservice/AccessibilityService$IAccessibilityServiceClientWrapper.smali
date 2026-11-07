.class public Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;
.super Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IAccessibilityServiceClientWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

.field blacklist mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field private greylist-max-o mConnectionId:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$-HFXTC8zgOUh2cwD2xU2Qq2cfsU(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onGesture$3(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$0EMg6AlBBLQoSaqaUqG-rcRzW3Y(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onMagnificationChanged$6(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BK9U4O9uTvtOrxe1k6nU74w4nWg(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onAccessibilityEvent$2(Landroid/view/accessibility/AccessibilityEvent;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GvgAtE-HWwgNS1AkdgkWZdAIv7k(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onFingerprintCapturingGesturesChanged$9(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IXKYfPr3TMC6dAUB0YeaTFDCleg(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;ILandroid/accessibilityservice/IAccessibilityServiceConnection;Landroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$init$0(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$K_6Q5INFXIDZBXjGU7XTVWgTeWE(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$createImeSession$14(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KgBTzj4TFYbJpclN8nrF0pL2YIc(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onSoftKeyboardShowModeChanged$7(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Kz5FgCsDilOYaIe4pXiCgx79mOQ(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onFingerprintGesture$10(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OYlboLvOtZ0y4ApvbWmvlkhnwYE(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$clearAccessibilityCache$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QSF0qKt-KBsI6tip5_48zAGIuRc(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onAccessibilityButtonClicked$11(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SwSdAdsZfeBSj5hLIDVbJbt1dh4(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onAccessibilityButtonAvailabilityChanged$12(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W53B7rFLAMfQaMfr7hMLJNy99eo(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/accessibilityservice/AccessibilityInputMethodSession;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$setImeSessionEnabled$15(Landroid/accessibilityservice/AccessibilityInputMethodSession;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YEsnsFn0WdkVBoBjQF7Ra1MF8TE(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onTouchStateChanged$18(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_exiZxxmLUR-eiAmxh57ePNu0NE(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onPerformGestureResult$8(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$i0f-uTvDMLKO2vf_5jjAZRDxmaE(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onInterrupt$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$n9Hm9TSr4tOpOh7WX4knH2SgaMU(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onMotionEvent$17(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$r0ACsNPOC_-7NXAK_zzHgcgM7Ko(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onSystemActionsChanged$13()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vCy_V5kFKdbucHrZ9zm97oID030(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/KeyEvent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$onKeyEvent$5(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ykY7WWeT272q3v5fyI7WHf08f3E(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->lambda$startInput$16(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$Callbacks;

    .line 2949
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    .line 2950
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$Callbacks;

    .line 2941
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;-><init>()V

    .line 2923
    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 2937
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 2942
    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    .line 2943
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    .line 2944
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2945
    return-void
.end method

.method private synthetic blacklist lambda$clearAccessibilityCache$4()V
    .registers 3

    .line 3017
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V

    .line 3018
    return-void
.end method

.method private synthetic blacklist lambda$createImeSession$14(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    .line 3127
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 3128
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    .line 3130
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$init$0(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "connectionId"    # I
    .param p2, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p3, "windowToken"    # Landroid/os/IBinder;

    .line 2955
    iput p1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 2956
    if-eqz p2, :cond_35

    .line 2957
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Z)V

    .line 2959
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_28

    .line 2961
    :try_start_13
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setAttributionTag(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    .line 2965
    goto :goto_28

    .line 2962
    :catch_1d
    move-exception v0

    .line 2963
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityService"

    const-string v2, "Error while setting attributionTag"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2964
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2967
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-interface {v0, v1, p3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    .line 2968
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onServiceConnected()V

    goto :goto_53

    .line 2970
    :cond_35
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 2971
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V

    .line 2972
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    .line 2974
    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 2975
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    .line 2977
    :goto_53
    return-void
.end method

.method private synthetic blacklist lambda$onAccessibilityButtonAvailabilityChanged$12(Z)V
    .registers 4
    .param p1, "available"    # Z

    .line 3107
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 3108
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityButtonAvailabilityChanged(Z)V

    .line 3110
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$onAccessibilityButtonClicked$11(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 3098
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 3099
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityButtonClicked(I)V

    .line 3101
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$onAccessibilityEvent$2(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "serviceWantsEvent"    # Z

    .line 2991
    if-eqz p1, :cond_19

    .line 2993
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2995
    if-eqz p2, :cond_19

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 2998
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3001
    :cond_19
    return-void
.end method

.method private synthetic blacklist lambda$onFingerprintCapturingGesturesChanged$9(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 3079
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 3080
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onFingerprintCapturingGesturesChanged(Z)V

    .line 3082
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$onFingerprintGesture$10(I)V
    .registers 4
    .param p1, "gesture"    # I

    .line 3088
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 3089
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onFingerprintGesture(I)V

    .line 3091
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$onGesture$3(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 4
    .param p1, "gestureInfo"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 3008
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 3009
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    .line 3011
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$onInterrupt$1()V
    .registers 3

    .line 2983
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 2984
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onInterrupt()V

    .line 2986
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$onKeyEvent$5(Landroid/view/KeyEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sequence"    # I

    .line 3026
    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    .line 3027
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 3028
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_18

    .line 3029
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_1f

    .line 3031
    .local v1, "result":Z
    :try_start_13
    invoke-interface {v0, v1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setOnKeyEventResult(ZI)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_1f

    .line 3034
    goto :goto_18

    .line 3032
    :catch_17
    move-exception v2

    .line 3039
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v1    # "result":Z
    :cond_18
    :goto_18
    :try_start_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 3042
    goto :goto_1e

    .line 3040
    :catch_1c
    move-exception v0

    .line 3043
    nop

    .line 3044
    :goto_1e
    return-void

    .line 3038
    :catchall_1f
    move-exception v0

    .line 3039
    :try_start_20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_23} :catch_24

    .line 3042
    goto :goto_25

    .line 3040
    :catch_24
    move-exception v1

    .line 3043
    :goto_25
    throw v0
.end method

.method private synthetic blacklist lambda$onMagnificationChanged$6(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 3052
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 3053
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 3055
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$onMotionEvent$17(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3197
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 3198
    return-void
.end method

.method private synthetic blacklist lambda$onPerformGestureResult$8(IZ)V
    .registers 5
    .param p1, "sequence"    # I
    .param p2, "successfully"    # Z

    .line 3070
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 3071
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onPerformGestureResult(IZ)V

    .line 3073
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$onSoftKeyboardShowModeChanged$7(I)V
    .registers 4
    .param p1, "showMode"    # I

    .line 3061
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 3062
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onSoftKeyboardShowModeChanged(I)V

    .line 3064
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$onSystemActionsChanged$13()V
    .registers 3

    .line 3117
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 3118
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onSystemActionsChanged()V

    .line 3120
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$onTouchStateChanged$18(II)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .line 3204
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onTouchStateChanged(II)V

    .line 3205
    return-void
.end method

.method private synthetic blacklist lambda$setImeSessionEnabled$15(Landroid/accessibilityservice/AccessibilityInputMethodSession;Z)V
    .registers 5
    .param p1, "ls"    # Landroid/accessibilityservice/AccessibilityInputMethodSession;
    .param p2, "enabled"    # Z

    .line 3147
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 3148
    invoke-interface {p1, p2}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->setEnabled(Z)V

    .line 3150
    :cond_8
    return-void
.end method

.method private synthetic blacklist lambda$startInput$16(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6
    .param p1, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 3184
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 3185
    if-nez p1, :cond_9

    const/4 v0, 0x0

    goto :goto_10

    .line 3186
    :cond_9
    new-instance v0, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;-><init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V

    :goto_10
    nop

    .line 3188
    .local v0, "ic":Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p2, v1}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 3189
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1, v0, p2, p3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3191
    .end local v0    # "ic":Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    :cond_21
    return-void
.end method


# virtual methods
.method public blacklist bindInput()V
    .registers 3

    .line 3159
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_b

    .line 3160
    const-string v0, "AccessibilityService"

    const-string v1, "bindInput must be paired with unbindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    :cond_b
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 3163
    return-void
.end method

.method public greylist-max-o clearAccessibilityCache()V
    .registers 3

    .line 3016
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda15;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3020
    return-void
.end method

.method public blacklist createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    .line 3126
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda16;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3131
    return-void
.end method

.method public greylist-max-o init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "connectionId"    # I
    .param p3, "windowToken"    # Landroid/os/IBinder;

    .line 2954
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2, p1, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda12;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;ILandroid/accessibilityservice/IAccessibilityServiceConnection;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2979
    return-void
.end method

.method public greylist-max-o onAccessibilityButtonAvailabilityChanged(Z)V
    .registers 4
    .param p1, "available"    # Z

    .line 3106
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda14;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3112
    return-void
.end method

.method public blacklist onAccessibilityButtonClicked(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 3097
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3103
    return-void
.end method

.method public greylist-max-o onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "serviceWantsEvent"    # Z

    .line 2990
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda8;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/accessibility/AccessibilityEvent;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3003
    return-void
.end method

.method public greylist-max-o onFingerprintCapturingGesturesChanged(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 3078
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda9;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3084
    return-void
.end method

.method public greylist-max-o onFingerprintGesture(I)V
    .registers 4
    .param p1, "gesture"    # I

    .line 3087
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3093
    return-void
.end method

.method public blacklist onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 4
    .param p1, "gestureInfo"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 3007
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda7;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3013
    return-void
.end method

.method public greylist-max-o onInterrupt()V
    .registers 3

    .line 2982
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda10;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2987
    return-void
.end method

.method public greylist-max-o onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sequence"    # I

    .line 3024
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda5;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/KeyEvent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3046
    return-void
.end method

.method public blacklist onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 3051
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda17;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3057
    return-void
.end method

.method public blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3196
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda6;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/view/MotionEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3199
    return-void
.end method

.method public greylist-max-o onPerformGestureResult(IZ)V
    .registers 5
    .param p1, "sequence"    # I
    .param p2, "successfully"    # Z

    .line 3069
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3075
    return-void
.end method

.method public greylist-max-o onSoftKeyboardShowModeChanged(I)V
    .registers 4
    .param p1, "showMode"    # I

    .line 3060
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3066
    return-void
.end method

.method public blacklist onSystemActionsChanged()V
    .registers 3

    .line 3116
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda18;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3122
    return-void
.end method

.method public blacklist onTouchStateChanged(II)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .line 3203
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3206
    return-void
.end method

.method public blacklist setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 7
    .param p1, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .param p2, "enabled"    # Z

    .line 3140
    const-string v0, "AccessibilityService"

    :try_start_2
    move-object v1, p1

    check-cast v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;

    .line 3141
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->getSession()Landroid/accessibilityservice/AccessibilityInputMethodSession;

    move-result-object v1

    .line 3142
    .local v1, "ls":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    if-nez v1, :cond_22

    .line 3143
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

    .line 3144
    return-void

    .line 3146
    :cond_22
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v1, p2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda11;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Landroid/accessibilityservice/AccessibilityInputMethodSession;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2c
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2c} :catch_2d

    .line 3154
    .end local v1    # "ls":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    goto :goto_44

    .line 3152
    :catch_2d
    move-exception v1

    .line 3153
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

    .line 3155
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_44
    return-void
.end method

.method public blacklist startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6
    .param p1, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 3179
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-nez v0, :cond_13

    .line 3180
    const-string v0, "AccessibilityService"

    const-string/jumbo v1, "startInput must be called after bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 3183
    :cond_13
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda13;-><init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3192
    return-void
.end method

.method public blacklist unbindInput()V
    .registers 3

    .line 3167
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_d

    .line 3169
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->cancelAll()V

    .line 3170
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    goto :goto_15

    .line 3172
    :cond_d
    const-string v0, "AccessibilityService"

    const-string/jumbo v1, "unbindInput must be paired with bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    :goto_15
    return-void
.end method
