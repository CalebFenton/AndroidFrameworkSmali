.class public Landroid/service/voice/VoiceInteractionSession;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionSession$Insets;,
        Landroid/service/voice/VoiceInteractionSession$MyCallbacks;,
        Landroid/service/voice/VoiceInteractionSession$Request;,
        Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;,
        Landroid/service/voice/VoiceInteractionSession$ActivityId;,
        Landroid/service/voice/VoiceInteractionSession$SafeResultListener;,
        Landroid/service/voice/VoiceInteractionSession$AssistState;,
        Landroid/service/voice/VoiceInteractionSession$CommandRequest;,
        Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;,
        Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;,
        Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;,
        Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;,
        Landroid/service/voice/VoiceInteractionSession$VoiceInteractionActivityEventType;
    }
.end annotation


# static fields
.field static final greylist-max-o DEBUG:Z = false

.field public static final whitelist KEY_FOREGROUND_ACTIVITIES:Ljava/lang/String; = "android.service.voice.FOREGROUND_ACTIVITIES"

.field public static final whitelist KEY_SHOW_SESSION_ID:Ljava/lang/String; = "android.service.voice.SHOW_SESSION_ID"

.field static final greylist-max-o MSG_CANCEL:I = 0x7

.field static final greylist-max-o MSG_CLOSE_SYSTEM_DIALOGS:I = 0x66

.field static final greylist-max-o MSG_DESTROY:I = 0x67

.field static final greylist-max-o MSG_HANDLE_ASSIST:I = 0x68

.field static final greylist-max-o MSG_HANDLE_SCREENSHOT:I = 0x69

.field static final greylist-max-o MSG_HIDE:I = 0x6b

.field static final blacklist MSG_NOTIFY_VISIBLE_ACTIVITY_INFO_CHANGED:I = 0x6d

.field static final greylist-max-o MSG_ON_LOCKSCREEN_SHOWN:I = 0x6c

.field static final blacklist MSG_REGISTER_VISIBLE_ACTIVITY_CALLBACK:I = 0x6e

.field static final greylist-max-o MSG_SHOW:I = 0x6a

.field static final greylist-max-o MSG_START_ABORT_VOICE:I = 0x4

.field static final greylist-max-o MSG_START_COMMAND:I = 0x5

.field static final greylist-max-o MSG_START_COMPLETE_VOICE:I = 0x3

.field static final greylist-max-o MSG_START_CONFIRMATION:I = 0x1

.field static final greylist-max-o MSG_START_PICK_OPTION:I = 0x2

.field static final greylist-max-o MSG_SUPPORTS_COMMANDS:I = 0x6

.field static final greylist-max-o MSG_TASK_FINISHED:I = 0x65

.field static final greylist-max-o MSG_TASK_STARTED:I = 0x64

.field static final blacklist MSG_UNREGISTER_VISIBLE_ACTIVITY_CALLBACK:I = 0x6f

.field public static final whitelist SHOW_SOURCE_ACTIVITY:I = 0x10

.field public static final whitelist SHOW_SOURCE_APPLICATION:I = 0x8

.field public static final whitelist SHOW_SOURCE_ASSIST_GESTURE:I = 0x4

.field public static final whitelist SHOW_SOURCE_AUTOMOTIVE_SYSTEM_UI:I = 0x80

.field public static final whitelist SHOW_SOURCE_NOTIFICATION:I = 0x40

.field public static final whitelist SHOW_SOURCE_PUSH_TO_TALK:I = 0x20

.field public static final whitelist SHOW_WITH_ASSIST:I = 0x1

.field public static final whitelist SHOW_WITH_SCREENSHOT:I = 0x2

.field static final greylist-max-o TAG:Ljava/lang/String; = "VoiceInteractionSession"

.field public static final blacklist VOICE_INTERACTION_ACTIVITY_EVENT_PAUSE:I = 0x3

.field public static final blacklist VOICE_INTERACTION_ACTIVITY_EVENT_RESUME:I = 0x2

.field public static final blacklist VOICE_INTERACTION_ACTIVITY_EVENT_START:I = 0x1

.field public static final blacklist VOICE_INTERACTION_ACTIVITY_EVENT_STOP:I = 0x4


# instance fields
.field final greylist-max-o mActiveRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/service/voice/VoiceInteractionSession$Request;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

.field greylist-max-o mContentFrame:Landroid/widget/FrameLayout;

.field final greylist-max-o mContext:Landroid/content/Context;

.field final greylist-max-o mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final greylist-max-o mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field greylist-max-o mInShowWindow:Z

.field greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field greylist-max-o mInitialized:Z

.field final greylist-max-o mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field final greylist-max-o mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field blacklist mKillCallback:Landroid/os/ICancellationSignal;

.field final blacklist mRemoteCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/voice/VoiceInteractionSession$SafeResultListener;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field greylist-max-o mRootView:Landroid/view/View;

.field final greylist-max-o mSession:Landroid/service/voice/IVoiceInteractionSession;

.field greylist-max-o mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field greylist-max-o mTheme:I

.field greylist-max-o mThemeAttrs:Landroid/content/res/TypedArray;

.field final greylist-max-o mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

.field greylist-max-o mToken:Landroid/os/IBinder;

.field greylist-max-o mUiEnabled:Z

.field private final blacklist mVisibleActivityCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVisibleActivityInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/voice/VisibleActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/voice/VoiceInteractionSession;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mWindow:Landroid/service/voice/VoiceInteractionWindow;

.field greylist-max-o mWindowAdded:Z

.field greylist-max-o mWindowVisible:Z

.field greylist-max-o mWindowWasVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdoNotifyVisibleActivityInfoChanged(Landroid/service/voice/VoiceInteractionSession;Landroid/service/voice/VisibleActivityInfo;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionSession;->doNotifyVisibleActivityInfoChanged(Landroid/service/voice/VisibleActivityInfo;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRegisterVisibleActivityCallback(Landroid/service/voice/VoiceInteractionSession;Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionSession;->doRegisterVisibleActivityCallback(Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoUnregisterVisibleActivityCallback(Landroid/service/voice/VoiceInteractionSession;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VoiceInteractionSession;->doUnregisterVisibleActivityCallback(Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveSafeResultListener(Landroid/service/voice/VoiceInteractionSession;Landroid/service/voice/VoiceInteractionSession$SafeResultListener;)Ljava/util/function/Consumer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VoiceInteractionSession;->removeSafeResultListener(Landroid/service/voice/VoiceInteractionSession$SafeResultListener;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1098
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionSession;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1099
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    .line 222
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    .line 224
    new-instance v1, Landroid/service/voice/VoiceInteractionSession$Insets;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionSession$Insets;-><init>()V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    .line 226
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 230
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mRemoteCallbacks:Ljava/util/Map;

    .line 234
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityCallbacks:Ljava/util/Map;

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityInfos:Ljava/util/List;

    .line 238
    new-instance v1, Landroid/service/voice/VoiceInteractionSession$1;

    invoke-direct {v1, p0}, Landroid/service/voice/VoiceInteractionSession$1;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 327
    new-instance v1, Landroid/service/voice/VoiceInteractionSession$2;

    invoke-direct {v1, p0}, Landroid/service/voice/VoiceInteractionSession$2;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1034
    new-instance v1, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    invoke-direct {v1, p0}, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    .line 1086
    new-instance v1, Landroid/service/voice/VoiceInteractionSession$3;

    invoke-direct {v1, p0}, Landroid/service/voice/VoiceInteractionSession$3;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 1102
    new-instance v1, Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1104
    invoke-direct {p0, p1}, Landroid/service/voice/VoiceInteractionSession;->createWindowContextIfNeeded(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 1105
    return-void
.end method

.method private blacklist createSafeResultListener(Ljava/util/function/Consumer;)Landroid/service/voice/VoiceInteractionSession$SafeResultListener;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/service/voice/VoiceInteractionSession$SafeResultListener;"
        }
    .end annotation

    .line 2270
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    monitor-enter p0

    .line 2271
    :try_start_1
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$SafeResultListener;

    invoke-direct {v0, p1, p0}, Landroid/service/voice/VoiceInteractionSession$SafeResultListener;-><init>(Ljava/util/function/Consumer;Landroid/service/voice/VoiceInteractionSession;)V

    .line 2272
    .local v0, "listener":Landroid/service/voice/VoiceInteractionSession$SafeResultListener;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mRemoteCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    monitor-exit p0

    return-object v0

    .line 2274
    .end local v0    # "listener":Landroid/service/voice/VoiceInteractionSession$SafeResultListener;
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private blacklist createWindowContextIfNeeded(Landroid/content/Context;)Landroid/content/Context;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1113
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1114
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1115
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_1e

    .line 1116
    nop

    .line 1117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1116
    const/16 v2, 0x7ef

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1d} :catch_1f

    return-object v1

    .line 1122
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_1e
    return-object p1

    .line 1123
    :catch_1f
    move-exception v0

    .line 1124
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to createWindowContext, Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceInteractionSession"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-object p1
.end method

.method private blacklist doNotifyVisibleActivityInfoChanged(Landroid/service/voice/VisibleActivityInfo;I)V
    .registers 4
    .param p1, "visibleActivityInfo"    # Landroid/service/voice/VisibleActivityInfo;
    .param p2, "type"    # I

    .line 1237
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1238
    return-void

    .line 1241
    :cond_9
    packed-switch p2, :pswitch_data_20

    goto :goto_1f

    .line 1247
    :pswitch_d
    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionSession;->notifyVisibleActivityChanged(Landroid/service/voice/VisibleActivityInfo;I)V

    .line 1248
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 1243
    :pswitch_16
    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionSession;->notifyVisibleActivityChanged(Landroid/service/voice/VisibleActivityInfo;I)V

    .line 1244
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    nop

    .line 1251
    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_16
        :pswitch_d
    .end packed-switch
.end method

.method private greylist-max-o doOnCreate()V
    .registers 2

    .line 1795
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    goto :goto_a

    .line 1796
    :cond_7
    const v0, 0x1030429

    :goto_a
    iput v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    .line 1797
    return-void
.end method

.method private blacklist doRegisterVisibleActivityCallback(Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    .line 1255
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityCallbacks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1259
    return-void

    .line 1262
    :cond_9
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 1263
    .local v0, "preCallbackCount":I
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    if-nez v0, :cond_23

    .line 1267
    :try_start_16
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startListeningVisibleActivityChanged(Landroid/os/IBinder;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1e

    goto :goto_22

    .line 1268
    :catch_1e
    move-exception v1

    .line 1269
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1270
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_22
    goto :goto_3f

    .line 1272
    :cond_23
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 1273
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VisibleActivityInfo;

    .line 1274
    .local v2, "visibleActivityInfo":Landroid/service/voice/VisibleActivityInfo;
    new-instance v3, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2, v2}, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda5;-><init>(Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1272
    .end local v2    # "visibleActivityInfo":Landroid/service/voice/VisibleActivityInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 1277
    .end local v1    # "i":I
    :cond_3f
    :goto_3f
    return-void
.end method

.method private blacklist doUnregisterVisibleActivityCallback(Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    .line 1280
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1283
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1285
    :try_start_12
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->stopListeningVisibleActivityChanged(Landroid/os/IBinder;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 1288
    goto :goto_1e

    .line 1286
    :catch_1a
    move-exception v0

    .line 1287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1290
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    return-void
.end method

.method static synthetic blacklist lambda$doRegisterVisibleActivityCallback$0(Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V
    .registers 2
    .param p0, "callback"    # Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;
    .param p1, "visibleActivityInfo"    # Landroid/service/voice/VisibleActivityInfo;

    .line 1274
    invoke-interface {p0, p1}, Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;->onVisible(Landroid/service/voice/VisibleActivityInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyVisibleActivityChanged$1(Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V
    .registers 2
    .param p0, "visibleActivityCallback"    # Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;
    .param p1, "visibleActivityInfo"    # Landroid/service/voice/VisibleActivityInfo;

    .line 1302
    invoke-interface {p0, p1}, Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;->onVisible(Landroid/service/voice/VisibleActivityInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyVisibleActivityChanged$2(Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "visibleActivityCallback"    # Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;
    .param p2, "visibleActivityInfo"    # Landroid/service/voice/VisibleActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1301
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1303
    return-void
.end method

.method static synthetic blacklist lambda$notifyVisibleActivityChanged$3(Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V
    .registers 3
    .param p0, "visibleActivityCallback"    # Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;
    .param p1, "visibleActivityInfo"    # Landroid/service/voice/VisibleActivityInfo;

    .line 1307
    nop

    .line 1308
    invoke-virtual {p1}, Landroid/service/voice/VisibleActivityInfo;->getActivityId()Landroid/service/voice/VoiceInteractionSession$ActivityId;

    move-result-object v0

    .line 1307
    invoke-interface {p0, v0}, Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;->onInvisible(Landroid/service/voice/VoiceInteractionSession$ActivityId;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyVisibleActivityChanged$4(Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "visibleActivityCallback"    # Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;
    .param p2, "visibleActivityInfo"    # Landroid/service/voice/VisibleActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1307
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda2;-><init>(Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1309
    return-void
.end method

.method static synthetic blacklist lambda$performDirectAction$10(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 1704
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$performDirectAction$11(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "resultExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "resultListener"    # Ljava/util/function/Consumer;
    .param p2, "b"    # Landroid/os/Bundle;

    .line 1701
    if-eqz p2, :cond_b

    .line 1702
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 1704
    :cond_b
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1706
    :goto_13
    return-void
.end method

.method static synthetic blacklist lambda$performDirectAction$8(Landroid/os/CancellationSignal;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 1689
    if-eqz p1, :cond_12

    .line 1690
    const-string/jumbo v0, "key_cancellation_signal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1692
    .local v0, "cancellation":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 1693
    invoke-static {v0}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1697
    .end local v0    # "cancellation":Landroid/os/IBinder;
    :cond_12
    return-void
.end method

.method static synthetic blacklist lambda$performDirectAction$9(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 1702
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestDirectActions$5(Landroid/os/CancellationSignal;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 1612
    if-eqz p1, :cond_12

    .line 1613
    const-string/jumbo v0, "key_cancellation_signal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1615
    .local v0, "cancellation":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 1616
    invoke-static {v0}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1620
    .end local v0    # "cancellation":Landroid/os/IBinder;
    :cond_12
    return-void
.end method

.method static synthetic blacklist lambda$requestDirectActions$6(Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "list"    # Ljava/util/List;

    .line 1640
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestDirectActions$7(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "resultExecutor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 1628
    if-nez p2, :cond_7

    .line 1629
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/DirectAction;>;"
    goto :goto_26

    .line 1631
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/DirectAction;>;"
    :cond_7
    const-string v0, "actions_list"

    const-class v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 1633
    .local v0, "pls":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/DirectAction;>;"
    if-eqz v0, :cond_21

    .line 1634
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 1635
    .local v1, "receivedList":Ljava/util/List;, "Ljava/util/List<Landroid/app/DirectAction;>;"
    if-eqz v1, :cond_1b

    move-object v2, v1

    goto :goto_1f

    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1636
    .end local v1    # "receivedList":Ljava/util/List;, "Ljava/util/List<Landroid/app/DirectAction;>;"
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/DirectAction;>;"
    :goto_1f
    move-object v0, v2

    goto :goto_26

    .line 1637
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/DirectAction;>;"
    :cond_21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 1640
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/DirectAction;>;"
    :goto_26
    new-instance v1, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0}, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1641
    return-void
.end method

.method private blacklist notifyVisibleActivityChanged(Landroid/service/voice/VisibleActivityInfo;I)V
    .registers 8
    .param p1, "visibleActivityInfo"    # Landroid/service/voice/VisibleActivityInfo;
    .param p2, "type"    # I

    .line 1294
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mVisibleActivityCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1295
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 1296
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    .line 1298
    .local v3, "visibleActivityCallback":Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;
    packed-switch p2, :pswitch_data_3a

    goto :goto_38

    .line 1306
    :pswitch_26
    new-instance v4, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2, v3, p1}, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_38

    .line 1300
    :pswitch_2f
    new-instance v4, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2, v3, p1}, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1304
    nop

    .line 1312
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "visibleActivityCallback":Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;
    :goto_38
    goto :goto_a

    .line 1313
    :cond_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_26
    .end packed-switch
.end method

.method private blacklist removeSafeResultListener(Landroid/service/voice/VoiceInteractionSession$SafeResultListener;)Ljava/util/function/Consumer;
    .registers 3
    .param p1, "listener"    # Landroid/service/voice/VoiceInteractionSession$SafeResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/voice/VoiceInteractionSession$SafeResultListener;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2278
    monitor-enter p0

    .line 2279
    :try_start_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRemoteCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    monitor-exit p0

    return-object v0

    .line 2280
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method


# virtual methods
.method greylist-max-o addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .registers 4
    .param p1, "req"    # Landroid/service/voice/VoiceInteractionSession$Request;

    .line 1130
    monitor-enter p0

    .line 1131
    :try_start_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    monitor-exit p0

    .line 1133
    return-void

    .line 1132
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public whitelist closeSystemDialogs()V
    .registers 3

    .line 1746
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_e

    .line 1750
    :try_start_4
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->closeSystemDialogs(Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 1752
    goto :goto_d

    .line 1751
    :catch_c
    move-exception v0

    .line 1753
    :goto_d
    return-void

    .line 1747
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o doCreate(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Lcom/android/internal/app/IVoiceInteractionManagerService;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1148
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 1149
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 1150
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onCreate()V

    .line 1151
    return-void
.end method

.method greylist-max-o doDestroy()V
    .registers 3

    .line 1214
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onDestroy()V

    .line 1215
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mKillCallback:Landroid/os/ICancellationSignal;

    if-eqz v0, :cond_11

    .line 1217
    :try_start_7
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mKillCallback:Landroid/os/ICancellationSignal;

    invoke-interface {v0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 1220
    goto :goto_e

    .line 1218
    :catch_d
    move-exception v0

    .line 1221
    :goto_e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mKillCallback:Landroid/os/ICancellationSignal;

    .line 1223
    :cond_11
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    if-eqz v0, :cond_2e

    .line 1224
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1226
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 1227
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/service/voice/VoiceInteractionWindow;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionWindow;->dismiss()V

    .line 1228
    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    .line 1230
    :cond_2c
    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    .line 1232
    :cond_2e
    return-void
.end method

.method greylist-max-o doHide()V
    .registers 2

    .line 1206
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    if-eqz v0, :cond_d

    .line 1207
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowHidden()V

    .line 1208
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    .line 1209
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onHide()V

    .line 1211
    :cond_d
    return-void
.end method

.method blacklist doOnHandleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;II)V
    .registers 16
    .param p1, "taskId"    # I
    .param p2, "assistToken"    # Landroid/os/IBinder;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "structure"    # Landroid/app/assist/AssistStructure;
    .param p5, "failure"    # Ljava/lang/Throwable;
    .param p6, "content"    # Landroid/app/assist/AssistContent;
    .param p7, "index"    # I
    .param p8, "count"    # I

    .line 1886
    if-eqz p5, :cond_5

    .line 1887
    invoke-virtual {p0, p5}, Landroid/service/voice/VoiceInteractionSession;->onAssistStructureFailure(Ljava/lang/Throwable;)V

    .line 1889
    :cond_5
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$AssistState;

    new-instance v1, Landroid/service/voice/VoiceInteractionSession$ActivityId;

    invoke-direct {v1, p1, p2}, Landroid/service/voice/VoiceInteractionSession$ActivityId;-><init>(ILandroid/os/IBinder;)V

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move v5, p7

    move v6, p8

    .end local p3    # "data":Landroid/os/Bundle;
    .end local p4    # "structure":Landroid/app/assist/AssistStructure;
    .end local p6    # "content":Landroid/app/assist/AssistContent;
    .end local p7    # "index":I
    .end local p8    # "count":I
    .local v2, "data":Landroid/os/Bundle;
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    .local v4, "content":Landroid/app/assist/AssistContent;
    .local v5, "index":I
    .local v6, "count":I
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$AssistState;-><init>(Landroid/service/voice/VoiceInteractionSession$ActivityId;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V

    .line 1891
    .local v0, "assistState":Landroid/service/voice/VoiceInteractionSession$AssistState;
    invoke-virtual {p0, v0}, Landroid/service/voice/VoiceInteractionSession;->onHandleAssist(Landroid/service/voice/VoiceInteractionSession$AssistState;)V

    .line 1892
    return-void
.end method

.method greylist-max-o doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
    .registers 9
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 1157
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    const-string v1, "VoiceInteractionSession"

    if-eqz v0, :cond_c

    .line 1158
    const-string v0, "Re-entrance in to showWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    return-void

    .line 1163
    :cond_c
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_e
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    .line 1164
    invoke-virtual {p0, p1, p2}, Landroid/service/voice/VoiceInteractionSession;->onPrepareShow(Landroid/os/Bundle;I)V

    .line 1165
    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    if-nez v3, :cond_1a

    .line 1166
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowAdded()V

    .line 1168
    :cond_1a
    invoke-virtual {p0, p1, p2}, Landroid/service/voice/VoiceInteractionSession;->onShow(Landroid/os/Bundle;I)V

    .line 1169
    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    if-nez v3, :cond_2a

    .line 1170
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    .line 1171
    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    if-eqz v3, :cond_2a

    .line 1172
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->showWindow()V

    .line 1175
    :cond_2a
    if-eqz p3, :cond_4e

    .line 1176
    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    if-eqz v3, :cond_44

    .line 1177
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1178
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v3, Landroid/service/voice/VoiceInteractionSession$4;

    invoke-direct {v3, p0, p3}, Landroid/service/voice/VoiceInteractionSession$4;-><init>(Landroid/service/voice/VoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_54

    goto :goto_4e

    .line 1193
    :cond_44
    :try_start_44
    invoke-interface {p3}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_54

    .line 1196
    goto :goto_4e

    .line 1194
    :catch_48
    move-exception v3

    .line 1195
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_49
    const-string v4, "Error calling onShown"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_54

    .line 1200
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4e
    :goto_4e
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    .line 1201
    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    .line 1202
    nop

    .line 1203
    return-void

    .line 1200
    :catchall_54
    move-exception v1

    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    .line 1201
    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    .line 1202
    throw v1
.end method

.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 2246
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mToken="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2247
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTheme=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2248
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUiEnabled="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2249
    const-string v0, " mInitialized="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2250
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindowAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2251
    const-string v0, " mWindowVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2252
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindowWasVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2253
    const-string v0, " mInShowWindow="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2254
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_b5

    .line 2255
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active requests:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2257
    .local v0, "innerPrefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8c
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_b5

    .line 2258
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$Request;

    .line 2259
    .local v2, "req":Landroid/service/voice/VoiceInteractionSession$Request;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2260
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2261
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2262
    invoke-virtual {v2, v0, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2257
    .end local v2    # "req":Landroid/service/voice/VoiceInteractionSession$Request;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 2266
    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_b5
    return-void
.end method

.method greylist-max-o ensureWindowAdded()V
    .registers 2

    .line 1352
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    if-nez v0, :cond_17

    .line 1353
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    .line 1354
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowCreated()V

    .line 1355
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onCreateContentView()Landroid/view/View;

    move-result-object v0

    .line 1356
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_17

    .line 1357
    invoke-virtual {p0, v0}, Landroid/service/voice/VoiceInteractionSession;->setContentView(Landroid/view/View;)V

    .line 1360
    .end local v0    # "v":Landroid/view/View;
    :cond_17
    return-void
.end method

.method greylist-max-o ensureWindowCreated()V
    .registers 12

    .line 1316
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    if-eqz v0, :cond_5

    .line 1317
    return-void

    .line 1320
    :cond_5
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    if-eqz v0, :cond_98

    .line 1324
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    .line 1325
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    .line 1327
    new-instance v1, Landroid/service/voice/VoiceInteractionWindow;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    iget-object v5, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    iget-object v7, p0, Landroid/service/voice/VoiceInteractionSession;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    const/16 v9, 0x50

    const/4 v10, 0x1

    const-string v3, "VoiceInteractionSession"

    const/16 v8, 0x7ef

    move-object v6, p0

    invoke-direct/range {v1 .. v10}, Landroid/service/voice/VoiceInteractionWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/voice/VoiceInteractionWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    iput-object v1, v6, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/service/voice/VoiceInteractionWindow;

    .line 1330
    iget-object v0, v6, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/service/voice/VoiceInteractionWindow;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1331
    iget-object v0, v6, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/service/voice/VoiceInteractionWindow;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1010100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1336
    iget-object v0, v6, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/R$styleable;->VoiceInteractionSession:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, v6, Landroid/service/voice/VoiceInteractionSession;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 1337
    iget-object v0, v6, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109017b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    .line 1339
    iget-object v0, v6, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1342
    iget-object v0, v6, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/service/voice/VoiceInteractionWindow;

    iget-object v1, v6, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionWindow;->setContentView(Landroid/view/View;)V

    .line 1343
    iget-object v0, v6, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, v6, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1345
    iget-object v0, v6, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v6, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    .line 1347
    iget-object v0, v6, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/service/voice/VoiceInteractionWindow;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 1348
    iget-object v0, v6, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/service/voice/VoiceInteractionWindow;

    iget-object v1, v6, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionWindow;->setToken(Landroid/os/IBinder;)V

    .line 1349
    return-void

    .line 1321
    :cond_98
    move-object v6, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setUiEnabled is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o ensureWindowHidden()V
    .registers 4

    .line 1374
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/service/voice/VoiceInteractionWindow;

    if-eqz v0, :cond_1a

    .line 1375
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/service/voice/VoiceInteractionWindow;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionWindow;->hide()V

    .line 1377
    :try_start_9
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setSessionWindowVisible(Landroid/os/IBinder;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    .line 1380
    goto :goto_1a

    .line 1378
    :catch_12
    move-exception v0

    .line 1379
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractionSession"

    const-string v2, "Failed to notify session window hidden"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1382
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method public whitelist finish()V
    .registers 3

    .line 1777
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_e

    .line 1781
    :try_start_4
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->finish(Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 1783
    goto :goto_d

    .line 1782
    :catch_c
    move-exception v0

    .line 1784
    :goto_d
    return-void

    .line 1778
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 1108
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getDisabledShowContext()I
    .registers 3

    .line 1401
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDisabledShowContext()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1402
    :catch_7
    move-exception v0

    .line 1403
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 1759
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowCreated()V

    .line 1760
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public whitelist getUserDisabledShowContext()I
    .registers 3

    .line 1418
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getUserDisabledShowContext()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1419
    :catch_7
    move-exception v0

    .line 1420
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getWindow()Landroid/app/Dialog;
    .registers 2

    .line 1767
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowCreated()V

    .line 1768
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/service/voice/VoiceInteractionWindow;

    return-object v0
.end method

.method public whitelist hide()V
    .registers 3

    .line 1453
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_e

    .line 1457
    :try_start_4
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->hideSessionFromSession(Landroid/os/IBinder;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 1459
    goto :goto_d

    .line 1458
    :catch_c
    move-exception v0

    .line 1460
    :goto_d
    return-void

    .line 1454
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o isRequestActive(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "reqInterface"    # Landroid/os/IBinder;

    .line 1136
    monitor-enter p0

    .line 1137
    :try_start_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1138
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist onAssistStructureFailure(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "failure"    # Ljava/lang/Throwable;

    .line 1906
    return-void
.end method

.method public whitelist onBackPressed()V
    .registers 1

    .line 2038
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    .line 2039
    return-void
.end method

.method public whitelist onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .registers 2
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$Request;

    .line 2189
    return-void
.end method

.method public whitelist onCloseSystemDialogs()V
    .registers 1

    .line 2047
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    .line 2048
    return-void
.end method

.method public whitelist onComputeInsets(Landroid/service/voice/VoiceInteractionSession$Insets;)V
    .registers 6
    .param p1, "outInsets"    # Landroid/service/voice/VoiceInteractionSession$Insets;

    .line 2079
    iget-object v0, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2080
    iget-object v0, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2081
    iget-object v0, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2082
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2083
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2084
    iput v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableInsets:I

    .line 2085
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 2086
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2059
    return-void
.end method

.method public whitelist onCreate()V
    .registers 1

    .line 1791
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionSession;->doOnCreate()V

    .line 1792
    return-void
.end method

.method public whitelist onCreateContentView()Landroid/view/View;
    .registers 2

    .line 1874
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDestroy()V
    .registers 1

    .line 1868
    return-void
.end method

.method public whitelist onDirectActionsInvalidated(Landroid/service/voice/VoiceInteractionSession$ActivityId;)V
    .registers 2
    .param p1, "activityId"    # Landroid/service/voice/VoiceInteractionSession$ActivityId;

    .line 1652
    return-void
.end method

.method public whitelist onGetSupportedCommands([Ljava/lang/String;)[Z
    .registers 3
    .param p1, "commands"    # [Ljava/lang/String;

    .line 2124
    array-length v0, p1

    new-array v0, v0, [Z

    return-object v0
.end method

.method public whitelist onHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
    .registers 4
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;
    .param p3, "content"    # Landroid/app/assist/AssistContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1931
    return-void
.end method

.method public whitelist onHandleAssist(Landroid/service/voice/VoiceInteractionSession$AssistState;)V
    .registers 11
    .param p1, "state"    # Landroid/service/voice/VoiceInteractionSession$AssistState;

    .line 1952
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$AssistState;->getAssistData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$AssistState;->getAssistStructure()Landroid/app/assist/AssistStructure;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1953
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$AssistState;->getAssistContent()Landroid/app/assist/AssistContent;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1954
    return-void

    .line 1955
    :cond_13
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$AssistState;->getIndex()I

    move-result v0

    if-nez v0, :cond_29

    .line 1956
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$AssistState;->getAssistData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$AssistState;->getAssistStructure()Landroid/app/assist/AssistStructure;

    move-result-object v1

    .line 1957
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$AssistState;->getAssistContent()Landroid/app/assist/AssistContent;

    move-result-object v2

    .line 1956
    invoke-virtual {p0, v0, v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V

    goto :goto_41

    .line 1959
    :cond_29
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$AssistState;->getAssistData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$AssistState;->getAssistStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    .line 1960
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$AssistState;->getAssistContent()Landroid/app/assist/AssistContent;

    move-result-object v6

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$AssistState;->getIndex()I

    move-result v7

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$AssistState;->getCount()I

    move-result v8

    .line 1959
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/service/voice/VoiceInteractionSession;->onHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V

    .line 1962
    :goto_41
    return-void
.end method

.method public whitelist onHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    .registers 6
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;
    .param p3, "content"    # Landroid/app/assist/AssistContent;
    .param p4, "index"    # I
    .param p5, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2004
    return-void
.end method

.method public whitelist onHandleScreenshot(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 2013
    return-void
.end method

.method public whitelist onHide()V
    .registers 1

    .line 1862
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2016
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2020
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2028
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2024
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onLockscreenShown()V
    .registers 1

    .line 2054
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    .line 2055
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 1

    .line 2063
    return-void
.end method

.method public whitelist onPrepareShow(Landroid/os/Bundle;I)V
    .registers 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "showFlags"    # I

    .line 1808
    return-void
.end method

.method public whitelist onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    .line 2168
    return-void
.end method

.method public whitelist onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    .line 2178
    return-void
.end method

.method public whitelist onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    .line 2156
    return-void
.end method

.method public whitelist onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    .line 2135
    return-void
.end method

.method public whitelist onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    .line 2144
    return-void
.end method

.method public whitelist onShow(Landroid/os/Bundle;I)V
    .registers 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "showFlags"    # I

    .line 1856
    return-void
.end method

.method public whitelist onTaskFinished(Landroid/content/Intent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I

    .line 2111
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    .line 2112
    return-void
.end method

.method public whitelist onTaskStarted(Landroid/content/Intent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I

    .line 2097
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 2
    .param p1, "level"    # I

    .line 2067
    return-void
.end method

.method public final whitelist performDirectAction(Landroid/app/DirectAction;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 15
    .param p1, "action"    # Landroid/app/DirectAction;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "resultExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/DirectAction;",
            "Landroid/os/Bundle;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1677
    .local p5, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_4f

    .line 1680
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    if-eqz p3, :cond_f

    .line 1684
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1687
    :cond_f
    if-eqz p3, :cond_20

    .line 1688
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda10;

    invoke-direct {v1, p3}, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda10;-><init>(Landroid/os/CancellationSignal;)V

    invoke-direct {p0, v1}, Landroid/service/voice/VoiceInteractionSession;->createSafeResultListener(Ljava/util/function/Consumer;)Landroid/service/voice/VoiceInteractionSession$SafeResultListener;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    goto :goto_21

    .line 1698
    :cond_20
    const/4 v0, 0x0

    :goto_21
    move-object v7, v0

    .line 1700
    .local v7, "cancellationCallback":Landroid/os/RemoteCallback;
    new-instance v8, Landroid/os/RemoteCallback;

    new-instance v0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda11;

    invoke-direct {v0, p4, p5}, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda11;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionSession;->createSafeResultListener(Ljava/util/function/Consumer;)Landroid/service/voice/VoiceInteractionSession$SafeResultListener;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 1709
    .local v8, "resultCallback":Landroid/os/RemoteCallback;
    :try_start_30
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/app/DirectAction;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1710
    invoke-virtual {p1}, Landroid/app/DirectAction;->getTaskId()I

    move-result v5

    invoke-virtual {p1}, Landroid/app/DirectAction;->getActivityId()Landroid/os/IBinder;

    move-result-object v6
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_40} :catch_48

    .line 1709
    move-object v4, p2

    .end local p2    # "extras":Landroid/os/Bundle;
    .local v4, "extras":Landroid/os/Bundle;
    :try_start_41
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/app/IVoiceInteractionManagerService;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_45

    .line 1714
    goto :goto_4e

    .line 1712
    :catch_45
    move-exception v0

    move-object p2, v0

    goto :goto_4b

    .end local v4    # "extras":Landroid/os/Bundle;
    .restart local p2    # "extras":Landroid/os/Bundle;
    :catch_48
    move-exception v0

    move-object v4, p2

    move-object p2, v0

    .line 1713
    .restart local v4    # "extras":Landroid/os/Bundle;
    .local p2, "e":Landroid/os/RemoteException;
    :goto_4b
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1715
    .end local p2    # "e":Landroid/os/RemoteException;
    :goto_4e
    return-void

    .line 1678
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v7    # "cancellationCallback":Landroid/os/RemoteCallback;
    .end local v8    # "resultCallback":Landroid/os/RemoteCallback;
    .local p2, "extras":Landroid/os/Bundle;
    :cond_4f
    move-object v4, p2

    .end local p2    # "extras":Landroid/os/Bundle;
    .restart local v4    # "extras":Landroid/os/Bundle;
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t call before onCreate()"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final whitelist registerVisibleActivityCallback(Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    .line 2208
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_18

    .line 2211
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2215
    const/16 v2, 0x6e

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2214
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2217
    return-void

    .line 2209
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o removeRequest(Landroid/os/IBinder;)Landroid/service/voice/VoiceInteractionSession$Request;
    .registers 3
    .param p1, "reqInterface"    # Landroid/os/IBinder;

    .line 1142
    monitor-enter p0

    .line 1143
    :try_start_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession$Request;

    monitor-exit p0

    return-object v0

    .line 1144
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final whitelist requestDirectActions(Landroid/service/voice/VoiceInteractionSession$ActivityId;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 12
    .param p1, "activityId"    # Landroid/service/voice/VoiceInteractionSession$ActivityId;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "resultExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/voice/VoiceInteractionSession$ActivityId;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/DirectAction;",
            ">;>;)V"
        }
    .end annotation

    .line 1599
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/DirectAction;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_44

    .line 1606
    if-eqz p2, :cond_12

    .line 1607
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1610
    :cond_12
    if-eqz p2, :cond_1f

    .line 1611
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2}, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda8;-><init>(Landroid/os/CancellationSignal;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    goto :goto_20

    .line 1621
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    move-object v5, v0

    .line 1624
    .local v5, "cancellationCallback":Landroid/os/RemoteCallback;
    :try_start_21
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$ActivityId;->getTaskId()I

    move-result v3

    .line 1625
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionSession$ActivityId;->getAssistToken()Landroid/os/IBinder;

    move-result-object v4

    new-instance v6, Landroid/os/RemoteCallback;

    new-instance v0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda9;

    invoke-direct {v0, p3, p4}, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda9;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1626
    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionSession;->createSafeResultListener(Ljava/util/function/Consumer;)Landroid/service/voice/VoiceInteractionSession$SafeResultListener;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 1624
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IVoiceInteractionManagerService;->requestDirectActions(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3e} :catch_3f

    .line 1644
    goto :goto_43

    .line 1642
    :catch_3f
    move-exception v0

    .line 1643
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1645
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_43
    return-void

    .line 1603
    .end local v5    # "cancellationCallback":Landroid/os/RemoteCallback;
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 1878
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowCreated()V

    .line 1879
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1880
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1881
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 1882
    return-void
.end method

.method public whitelist setDisabledShowContext(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 1390
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabledShowContext(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1392
    goto :goto_7

    .line 1391
    :catch_6
    move-exception v0

    .line 1393
    :goto_7
    return-void
.end method

.method public whitelist setKeepAwake(Z)V
    .registers 4
    .param p1, "keepAwake"    # Z

    .line 1731
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_e

    .line 1735
    :try_start_4
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setKeepAwake(Landroid/os/IBinder;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 1737
    goto :goto_d

    .line 1736
    :catch_c
    move-exception v0

    .line 1738
    :goto_d
    return-void

    .line 1732
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTheme(I)V
    .registers 4
    .param p1, "theme"    # I

    .line 1487
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/service/voice/VoiceInteractionWindow;

    if-nez v0, :cond_7

    .line 1490
    iput p1, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    .line 1491
    return-void

    .line 1488
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUiEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1467
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    if-eq v0, p1, :cond_16

    .line 1468
    iput-boolean p1, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    .line 1469
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    if-eqz v0, :cond_16

    .line 1470
    if-eqz p1, :cond_13

    .line 1471
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowAdded()V

    .line 1472
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->showWindow()V

    goto :goto_16

    .line 1474
    :cond_13
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowHidden()V

    .line 1478
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist show(Landroid/os/Bundle;I)V
    .registers 6
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I

    .line 1438
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_14

    .line 1442
    :try_start_4
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 1443
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1442
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;ILjava/lang/String;)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 1445
    goto :goto_13

    .line 1444
    :catch_12
    move-exception v0

    .line 1446
    :goto_13
    return-void

    .line 1439
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist showWindow()V
    .registers 4

    .line 1363
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/service/voice/VoiceInteractionWindow;

    if-eqz v0, :cond_1a

    .line 1364
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/service/voice/VoiceInteractionWindow;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionWindow;->show()V

    .line 1366
    :try_start_9
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setSessionWindowVisible(Landroid/os/IBinder;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    .line 1369
    goto :goto_1a

    .line 1367
    :catch_12
    move-exception v0

    .line 1368
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractionSession"

    const-string v2, "Failed to notify session window shown"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1371
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method public whitelist startAssistantActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1549
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/service/voice/VoiceInteractionSession;->startAssistantActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1550
    return-void
.end method

.method public whitelist startAssistantActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 1571
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_35

    .line 1576
    :try_start_7
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 1577
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1578
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 1579
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 1580
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_25} :catch_31

    .line 1578
    move-object v3, p1

    move-object v6, p2

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "bundle":Landroid/os/Bundle;
    .local v3, "intent":Landroid/content/Intent;
    .local v6, "bundle":Landroid/os/Bundle;
    :try_start_27
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startAssistantActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    .line 1581
    .local p1, "res":I
    invoke-static {p1, v3}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f

    .line 1583
    .end local p1    # "res":I
    goto :goto_34

    .line 1582
    :catch_2f
    move-exception v0

    goto :goto_34

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .local p1, "intent":Landroid/content/Intent;
    .restart local p2    # "bundle":Landroid/os/Bundle;
    :catch_31
    move-exception v0

    move-object v3, p1

    move-object v6, p2

    .line 1584
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v6    # "bundle":Landroid/os/Bundle;
    :goto_34
    return-void

    .line 1573
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "bundle":Landroid/os/Bundle;
    :cond_35
    move-object v3, p1

    move-object v6, p2

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v6    # "bundle":Landroid/os/Bundle;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t call before onCreate()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist startVoiceActivity(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1517
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_2c

    .line 1521
    :try_start_4
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 1522
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1523
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 1524
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 1525
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1523
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1526
    .local v0, "res":I
    invoke-static {v0, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_2a

    .line 1528
    .end local v0    # "res":I
    goto :goto_2b

    .line 1527
    :catch_2a
    move-exception v0

    .line 1529
    :goto_2b
    return-void

    .line 1518
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist unregisterVisibleActivityCallback(Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    .line 2228
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2231
    const/16 v2, 0x6f

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2230
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2232
    return-void
.end method
