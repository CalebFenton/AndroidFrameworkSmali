.class public Landroid/service/voice/VoiceInteractionSession;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionSession$Request;,
        Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;,
        Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;,
        Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;,
        Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;,
        Landroid/service/voice/VoiceInteractionSession$CommandRequest;,
        Landroid/service/voice/VoiceInteractionSession$MyCallbacks;,
        Landroid/service/voice/VoiceInteractionSession$Insets;,
        Landroid/service/voice/VoiceInteractionSession$1;,
        Landroid/service/voice/VoiceInteractionSession$2;,
        Landroid/service/voice/VoiceInteractionSession$3;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MSG_CANCEL:I = 0x7

.field static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0x66

.field static final MSG_DESTROY:I = 0x67

.field static final MSG_HANDLE_ASSIST:I = 0x68

.field static final MSG_HANDLE_SCREENSHOT:I = 0x69

.field static final MSG_HIDE:I = 0x6b

.field static final MSG_ON_LOCKSCREEN_SHOWN:I = 0x6c

.field static final MSG_SHOW:I = 0x6a

.field static final MSG_START_ABORT_VOICE:I = 0x4

.field static final MSG_START_COMMAND:I = 0x5

.field static final MSG_START_COMPLETE_VOICE:I = 0x3

.field static final MSG_START_CONFIRMATION:I = 0x1

.field static final MSG_START_PICK_OPTION:I = 0x2

.field static final MSG_SUPPORTS_COMMANDS:I = 0x6

.field static final MSG_TASK_FINISHED:I = 0x65

.field static final MSG_TASK_STARTED:I = 0x64

.field public static final SHOW_SOURCE_APPLICATION:I = 0x8

.field public static final SHOW_SOURCE_ASSIST_GESTURE:I = 0x4

.field public static final SHOW_WITH_ASSIST:I = 0x1

.field public static final SHOW_WITH_SCREENSHOT:I = 0x2

.field static final TAG:Ljava/lang/String; = "VoiceInteractionSession"


# instance fields
.field final mActiveRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/voice/VoiceInteractionSession$Request;",
            ">;"
        }
    .end annotation
.end field

.field final mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

.field mContentFrame:Landroid/widget/FrameLayout;

.field final mContext:Landroid/content/Context;

.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field final mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field mRootView:Landroid/view/View;

.field final mSession:Landroid/service/voice/IVoiceInteractionSession;

.field mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

.field mToken:Landroid/os/IBinder;

.field final mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/service/voice/VoiceInteractionSession;",
            ">;"
        }
    .end annotation
.end field

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 925
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionSession;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@8
    .line 924
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 107
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    #@5
    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    #@8
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    #@a
    .line 112
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    #@d
    .line 125
    new-instance v0, Landroid/util/ArrayMap;

    #@f
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@12
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    #@14
    .line 127
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$Insets;

    #@16
    invoke-direct {v0}, Landroid/service/voice/VoiceInteractionSession$Insets;-><init>()V

    #@19
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    #@1b
    .line 130
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@1d
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@20
    .line 129
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWeakRef:Ljava/lang/ref/WeakReference;

    #@22
    .line 132
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$1;

    #@24
    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$1;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    #@27
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@29
    .line 208
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$2;

    #@2b
    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$2;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    #@2e
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@30
    .line 861
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    #@32
    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    #@35
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    #@37
    .line 914
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$3;

    #@39
    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$3;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    #@3c
    .line 913
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@3e
    .line 929
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    #@40
    .line 930
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    #@42
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@45
    move-result-object v1

    #@46
    .line 931
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    #@48
    const/4 v3, 0x1

    #@49
    .line 930
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@4c
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@4e
    .line 928
    return-void
.end method

.method private doOnCreate()V
    .locals 11

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 1248
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    #@7
    :goto_0
    iput v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    #@9
    .line 1250
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    #@b
    .line 1251
    const-string/jumbo v1, "layout_inflater"

    #@e
    .line 1250
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/LayoutInflater;

    #@14
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    #@16
    .line 1252
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    #@18
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    #@1a
    const-string/jumbo v2, "VoiceInteractionSession"

    #@1d
    iget v3, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    #@1f
    .line 1253
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    #@21
    iget-object v6, p0, Landroid/service/voice/VoiceInteractionSession;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    #@23
    .line 1254
    const/16 v7, 0x7ef

    #@25
    const/16 v8, 0x50

    #@27
    const/4 v9, 0x1

    #@28
    move-object v5, p0

    #@29
    .line 1252
    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    #@2c
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@2e
    .line 1255
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@30
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@33
    move-result-object v0

    #@34
    .line 1256
    const v1, 0x1010100

    #@37
    .line 1255
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    #@3a
    .line 1259
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->initViews()V

    #@3d
    .line 1260
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@3f
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0, v10, v10}, Landroid/view/Window;->setLayout(II)V

    #@46
    .line 1261
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@48
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@4a
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setToken(Landroid/os/IBinder;)V

    #@4d
    .line 1247
    return-void

    #@4e
    .line 1249
    :cond_0
    const v0, 0x1030482

    #@51
    goto :goto_0
.end method


# virtual methods
.method addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .locals 2
    .param p1, "req"    # Landroid/service/voice/VoiceInteractionSession$Request;

    #@0
    .prologue
    .line 939
    monitor-enter p0

    #@1
    .line 940
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    #@3
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@5
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 938
    return-void

    #@e
    .line 939
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public closeSystemDialogs()V
    .locals 3

    #@0
    .prologue
    .line 1201
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1202
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Can\'t call before onCreate()"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 1205
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@f
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@11
    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->closeSystemDialogs(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1200
    :goto_0
    return-void

    #@15
    .line 1206
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method doCreate(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "service"    # Lcom/android/internal/app/IVoiceInteractionManagerService;
    .param p2, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 957
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@2
    .line 958
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@4
    .line 959
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onCreate()V

    #@7
    .line 956
    return-void
.end method

.method doDestroy()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1018
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onDestroy()V

    #@4
    .line 1019
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1020
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    #@a
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@d
    move-result-object v0

    #@e
    .line 1021
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@10
    .line 1020
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    #@13
    .line 1022
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 1023
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@19
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    #@1c
    .line 1024
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    #@1e
    .line 1026
    :cond_0
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    #@20
    .line 1017
    :cond_1
    return-void
.end method

.method doHide()V
    .locals 1

    #@0
    .prologue
    .line 1010
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1011
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@6
    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    #@9
    .line 1012
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    #@c
    .line 1013
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onHide()V

    #@f
    .line 1009
    :cond_0
    return-void
.end method

.method doOnHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;
    .param p3, "failure"    # Ljava/lang/Throwable;
    .param p4, "content"    # Landroid/app/assist/AssistContent;

    #@0
    .prologue
    .line 1308
    if-eqz p3, :cond_0

    #@2
    .line 1309
    invoke-virtual {p0, p3}, Landroid/service/voice/VoiceInteractionSession;->onAssistStructureFailure(Ljava/lang/Throwable;)V

    #@5
    .line 1311
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Landroid/service/voice/VoiceInteractionSession;->onHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V

    #@8
    .line 1307
    return-void
.end method

.method doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
    .locals 5
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 966
    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 967
    const-string/jumbo v1, "VoiceInteractionSession"

    #@9
    const-string/jumbo v2, "Re-entrance in to showWindow"

    #@c
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 968
    return-void

    #@10
    .line 972
    :cond_0
    const/4 v1, 0x1

    #@11
    :try_start_0
    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    #@13
    .line 973
    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    #@15
    if-nez v1, :cond_1

    #@17
    .line 974
    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 975
    const/4 v1, 0x1

    #@1c
    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    #@1e
    .line 976
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onCreateContentView()Landroid/view/View;

    #@21
    move-result-object v0

    #@22
    .line 977
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    #@24
    .line 978
    invoke-virtual {p0, v0}, Landroid/service/voice/VoiceInteractionSession;->setContentView(Landroid/view/View;)V

    #@27
    .line 982
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/service/voice/VoiceInteractionSession;->onShow(Landroid/os/Bundle;I)V

    #@2a
    .line 983
    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    #@2c
    if-nez v1, :cond_2

    #@2e
    .line 984
    const/4 v1, 0x1

    #@2f
    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    #@31
    .line 985
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@33
    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    #@36
    .line 987
    :cond_2
    if-eqz p3, :cond_3

    #@38
    .line 988
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    #@3a
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    #@3d
    .line 989
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    #@3f
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@42
    move-result-object v1

    #@43
    .line 990
    new-instance v2, Landroid/service/voice/VoiceInteractionSession$4;

    #@45
    invoke-direct {v2, p0, p3}, Landroid/service/voice/VoiceInteractionSession$4;-><init>(Landroid/service/voice/VoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    #@48
    .line 989
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 1004
    :cond_3
    iput-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    #@4d
    .line 1005
    iput-boolean v4, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    #@4f
    .line 962
    return-void

    #@50
    .line 1003
    :catchall_0
    move-exception v1

    #@51
    .line 1004
    iput-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    #@53
    .line 1005
    iput-boolean v4, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    #@55
    .line 1003
    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1546
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v3, "mToken="

    #@6
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@b
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e
    .line 1547
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    const-string/jumbo v3, "mTheme=#"

    #@14
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    iget v3, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    #@19
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20
    .line 1548
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    const-string/jumbo v3, "mInitialized="

    #@26
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    #@2b
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    #@2e
    .line 1549
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    const-string/jumbo v3, "mWindowAdded="

    #@34
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    #@39
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@3c
    .line 1550
    const-string/jumbo v3, " mWindowVisible="

    #@3f
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    #@44
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    #@47
    .line 1551
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    const-string/jumbo v3, "mWindowWasVisible="

    #@4d
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    #@52
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@55
    .line 1552
    const-string/jumbo v3, " mInShowWindow="

    #@58
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    #@5d
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    #@60
    .line 1553
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    #@62
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@65
    move-result v3

    #@66
    if-lez v3, :cond_0

    #@68
    .line 1554
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    const-string/jumbo v3, "Active requests:"

    #@6e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71
    .line 1555
    new-instance v3, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    const-string/jumbo v4, "    "

    #@7d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v1

    #@85
    .line 1556
    .local v1, "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    #@86
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    #@88
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@8b
    move-result v3

    #@8c
    if-ge v0, v3, :cond_0

    #@8e
    .line 1557
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    #@90
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@93
    move-result-object v2

    #@94
    check-cast v2, Landroid/service/voice/VoiceInteractionSession$Request;

    #@96
    .line 1558
    .local v2, "req":Landroid/service/voice/VoiceInteractionSession$Request;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@99
    const-string/jumbo v3, "  #"

    #@9c
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@a2
    .line 1559
    const-string/jumbo v3, ": "

    #@a5
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    .line 1560
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@ab
    .line 1561
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@ae
    .line 1556
    add-int/lit8 v0, v0, 0x1

    #@b0
    goto :goto_0

    #@b1
    .line 1545
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "req":Landroid/service/voice/VoiceInteractionSession$Request;
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    #@0
    .prologue
    .line 1230
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1231
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Can\'t call before onCreate()"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 1234
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@f
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@11
    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->finish(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1229
    :goto_0
    return-void

    #@15
    .line 1235
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 935
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getDisabledShowContext()I
    .locals 2

    #@0
    .prologue
    .line 1062
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDisabledShowContext()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1063
    :catch_0
    move-exception v0

    #@8
    .line 1064
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    #@0
    .prologue
    .line 1214
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    #@2
    return-object v0
.end method

.method public getUserDisabledShowContext()I
    .locals 2

    #@0
    .prologue
    .line 1079
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getUserDisabledShowContext()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1080
    :catch_0
    move-exception v0

    #@8
    .line 1081
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    #@0
    .prologue
    .line 1221
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@2
    return-object v0
.end method

.method public hide()V
    .locals 3

    #@0
    .prologue
    .line 1113
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1114
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Can\'t call before onCreate()"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 1117
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@f
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@11
    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->hideSessionFromSession(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1112
    :goto_0
    return-void

    #@15
    .line 1118
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method initViews()V
    .locals 3

    #@0
    .prologue
    .line 1031
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    #@3
    .line 1033
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    #@5
    sget-object v1, Landroid/R$styleable;->VoiceInteractionSession:[I

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mThemeAttrs:Landroid/content/res/TypedArray;

    #@d
    .line 1034
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    #@f
    .line 1035
    const v1, 0x10900fa

    #@12
    const/4 v2, 0x0

    #@13
    .line 1034
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    #@19
    .line 1036
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    #@1b
    .line 1037
    const/16 v1, 0x700

    #@1d
    .line 1036
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@20
    .line 1039
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@22
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    #@24
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    #@27
    .line 1040
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    #@29
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@2c
    move-result-object v0

    #@2d
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@2f
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    #@32
    .line 1042
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    #@34
    const v1, 0x1020002

    #@37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/widget/FrameLayout;

    #@3d
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    #@3f
    .line 1030
    return-void
.end method

.method isRequestActive(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "reqInterface"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 945
    monitor-enter p0

    #@1
    .line 946
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    .line 945
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public onAssistStructureFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "failure"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1324
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    #@0
    .prologue
    .line 1381
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    #@3
    .line 1380
    return-void
.end method

.method public onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .locals 0
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$Request;

    #@0
    .prologue
    .line 1531
    return-void
.end method

.method public onCloseSystemDialogs()V
    .locals 0

    #@0
    .prologue
    .line 1390
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    #@3
    .line 1389
    return-void
.end method

.method public onComputeInsets(Landroid/service/voice/VoiceInteractionSession$Insets;)V
    .locals 4
    .param p1, "outInsets"    # Landroid/service/voice/VoiceInteractionSession$Insets;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1422
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    #@3
    iput v3, v1, Landroid/graphics/Rect;->left:I

    #@5
    .line 1423
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    #@7
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    #@9
    .line 1424
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    #@b
    iput v3, v1, Landroid/graphics/Rect;->right:I

    #@d
    .line 1425
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->getWindow()Landroid/app/Dialog;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    .line 1426
    .local v0, "decor":Landroid/view/View;
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    #@1b
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@1e
    move-result v2

    #@1f
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@21
    .line 1427
    iput v3, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableInsets:I

    #@23
    .line 1428
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableRegion:Landroid/graphics/Region;

    #@25
    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    #@28
    .line 1421
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1401
    return-void
.end method

.method public onCreate()V
    .locals 0

    #@0
    .prologue
    .line 1244
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionSession;->doOnCreate()V

    #@3
    .line 1243
    return-void
.end method

.method public onCreateContentView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1295
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 1288
    return-void
.end method

.method public onGetSupportedCommands([Ljava/lang/String;)[Z
    .locals 1
    .param p1, "commands"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1467
    array-length v0, p1

    #@1
    new-array v0, v0, [Z

    #@3
    return-object v0
.end method

.method public onHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;
    .param p3, "content"    # Landroid/app/assist/AssistContent;

    #@0
    .prologue
    .line 1346
    return-void
.end method

.method public onHandleScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1355
    return-void
.end method

.method public onHide()V
    .locals 0

    #@0
    .prologue
    .line 1282
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1359
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1363
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1371
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1367
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onLockscreenShown()V
    .locals 0

    #@0
    .prologue
    .line 1397
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    #@3
    .line 1396
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    #@0
    .prologue
    .line 1405
    return-void
.end method

.method public onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    #@0
    .prologue
    .line 1510
    return-void
.end method

.method public onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    #@0
    .prologue
    .line 1520
    return-void
.end method

.method public onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    #@0
    .prologue
    .line 1498
    return-void
.end method

.method public onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    #@0
    .prologue
    .line 1477
    return-void
.end method

.method public onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    #@0
    .prologue
    .line 1486
    return-void
.end method

.method public onShow(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "showFlags"    # I

    #@0
    .prologue
    .line 1276
    return-void
.end method

.method public onTaskFinished(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I

    #@0
    .prologue
    .line 1454
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    #@3
    .line 1453
    return-void
.end method

.method public onTaskStarted(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I

    #@0
    .prologue
    .line 1439
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    #@0
    .prologue
    .line 1409
    return-void
.end method

.method removeRequest(Landroid/os/IBinder;)Landroid/service/voice/VoiceInteractionSession$Request;
    .locals 1
    .param p1, "reqInterface"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 951
    monitor-enter p0

    #@1
    .line 952
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/service/voice/VoiceInteractionSession$Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    .line 951
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 1299
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    #@3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@6
    .line 1300
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    #@8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@a
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@d
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@10
    .line 1303
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    #@12
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    #@15
    .line 1298
    return-void
.end method

.method public setDisabledShowContext(I)V
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1051
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabledShowContext(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1049
    :goto_0
    return-void

    #@6
    .line 1052
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setKeepAwake(Z)V
    .locals 3
    .param p1, "keepAwake"    # Z

    #@0
    .prologue
    .line 1186
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1187
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Can\'t call before onCreate()"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 1190
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@f
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@11
    invoke-interface {v1, v2, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setKeepAwake(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1185
    :goto_0
    return-void

    #@15
    .line 1191
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    #@0
    .prologue
    .line 1129
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1130
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Must be called before onCreate()"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1132
    :cond_0
    iput p1, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    #@f
    .line 1128
    return-void
.end method

.method public show(Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1099
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1100
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Can\'t call before onCreate()"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 1103
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@f
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@11
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1098
    :goto_0
    return-void

    #@15
    .line 1104
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startVoiceActivity(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1159
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1160
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v3, "Can\'t call before onCreate()"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 1163
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@10
    .line 1164
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@13
    .line 1165
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@15
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    #@17
    .line 1166
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    #@19
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 1165
    invoke-interface {v2, v3, p1, v4}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    #@24
    move-result v1

    #@25
    .line 1167
    .local v1, "res":I
    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 1158
    .end local v1    # "res":I
    :goto_0
    return-void

    #@29
    .line 1168
    :catch_0
    move-exception v0

    #@2a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
