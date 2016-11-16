.class Landroid/inputmethodservice/IInputMethodWrapper;
.super Lcom/android/internal/view/IInputMethod$Stub;
.source "IInputMethodWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;,
        Landroid/inputmethodservice/IInputMethodWrapper$Notifier;
    }
.end annotation


# static fields
.field private static final DO_ATTACH_TOKEN:I = 0xa

.field private static final DO_CHANGE_INPUTMETHOD_SUBTYPE:I = 0x50

.field private static final DO_CREATE_SESSION:I = 0x28

.field private static final DO_DUMP:I = 0x1

.field private static final DO_HIDE_SOFT_INPUT:I = 0x46

.field private static final DO_RESTART_INPUT:I = 0x22

.field private static final DO_REVOKE_SESSION:I = 0x32

.field private static final DO_SET_INPUT_CONTEXT:I = 0x14

.field private static final DO_SET_SESSION_ENABLED:I = 0x2d

.field private static final DO_SHOW_SOFT_INPUT:I = 0x3c

.field private static final DO_START_INPUT:I = 0x20

.field private static final DO_UNSET_INPUT_CONTEXT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mContext:Landroid/content/Context;

.field final mInputMethod:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/inputmethod/InputMethod;",
            ">;"
        }
    .end annotation
.end field

.field final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/inputmethodservice/AbstractInputMethodService;",
            ">;"
        }
    .end annotation
.end field

.field final mTargetSdkVersion:I


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/AbstractInputMethodService;Landroid/view/inputmethod/InputMethod;)V
    .locals 4
    .param p1, "context"    # Landroid/inputmethodservice/AbstractInputMethodService;
    .param p2, "inputMethod"    # Landroid/view/inputmethod/InputMethod;

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethod$Stub;-><init>()V

    #@3
    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    #@a
    .line 116
    invoke-virtual {p1}, Landroid/inputmethodservice/AbstractInputMethodService;->getApplicationContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    #@10
    .line 117
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    #@12
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    #@14
    const/4 v2, 0x0

    #@15
    const/4 v3, 0x1

    #@16
    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@19
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@1b
    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@1d
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@20
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    #@22
    .line 119
    invoke-virtual {p1}, Landroid/inputmethodservice/AbstractInputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@25
    move-result-object v0

    #@26
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@28
    iput v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    #@2a
    .line 114
    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0xa

    #@6
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 246
    return-void
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 6
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;

    #@0
    .prologue
    .line 253
    const/4 v1, 0x0

    #@1
    .line 254
    .local v1, "missingMethodFlags":I
    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper;

    #@3
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    #@5
    .line 255
    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    #@8
    move-result-object v4

    #@9
    invoke-static {v4}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@c
    move-result-object v4

    #@d
    const/4 v5, 0x0

    #@e
    .line 254
    invoke-direct {v0, v3, v4, v5}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;I)V

    #@11
    .line 256
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    new-instance v2, Landroid/view/inputmethod/InputBinding;

    #@13
    invoke-direct {v2, v0, p1}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V

    #@16
    .line 257
    .local v2, "nu":Landroid/view/inputmethod/InputBinding;
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@18
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@1a
    const/16 v5, 0x14

    #@1c
    invoke-virtual {v4, v5, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v3, v4}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@23
    .line 251
    return-void
.end method

.method public changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x50

    #@6
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 331
    return-void
.end method

.method public createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    .locals 3
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "callback"    # Lcom/android/internal/view/IInputSessionCallback;

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x28

    #@6
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 282
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 220
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    #@3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v7

    #@7
    check-cast v7, Landroid/inputmethodservice/AbstractInputMethodService;

    #@9
    .line 221
    .local v7, "target":Landroid/inputmethodservice/AbstractInputMethodService;
    if-nez v7, :cond_0

    #@b
    .line 222
    return-void

    #@c
    .line 224
    :cond_0
    const-string/jumbo v0, "android.permission.DUMP"

    #@f
    invoke-virtual {v7, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v1, "Permission Denial: can\'t dump InputMethodManager from from pid="

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 228
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@24
    move-result v1

    #@25
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 229
    const-string/jumbo v1, ", uid="

    #@2c
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@33
    move-result v1

    #@34
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    .line 230
    return-void

    #@40
    .line 233
    :cond_1
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    #@42
    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@45
    .line 234
    .local v5, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@47
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@49
    move-object v2, p1

    #@4a
    move-object v3, p2

    #@4b
    move-object v4, p3

    #@4c
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v8, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@53
    .line 237
    const-wide/16 v0, 0x5

    #@55
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@57
    invoke-virtual {v5, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    #@5a
    move-result v0

    #@5b
    if-nez v0, :cond_2

    #@5d
    .line 238
    const-string/jumbo v0, "Timeout waiting for dump"

    #@60
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 219
    :cond_2
    :goto_0
    return-void

    #@64
    .line 240
    :catch_0
    move-exception v6

    #@65
    .line 241
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v0, "Interrupted waiting for dump"

    #@68
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b
    goto :goto_0
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 128
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    #@4
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v5

    #@8
    check-cast v5, Landroid/view/inputmethod/InputMethod;

    #@a
    .line 130
    .local v5, "inputMethod":Landroid/view/inputmethod/InputMethod;
    if-nez v5, :cond_0

    #@c
    iget v8, p1, Landroid/os/Message;->what:I

    #@e
    if-eq v8, v9, :cond_0

    #@10
    .line 131
    const-string/jumbo v8, "InputMethodWrapper"

    #@13
    new-instance v9, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v10, "Input method reference was null, ignoring message: "

    #@1b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v9

    #@1f
    iget v10, p1, Landroid/os/Message;->what:I

    #@21
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v9

    #@25
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v9

    #@29
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 132
    return-void

    #@2d
    .line 135
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    #@2f
    sparse-switch v8, :sswitch_data_0

    #@32
    .line 215
    const-string/jumbo v8, "InputMethodWrapper"

    #@35
    new-instance v9, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v10, "Unhandled message code: "

    #@3d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v9

    #@41
    iget v10, p1, Landroid/os/Message;->what:I

    #@43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v9

    #@47
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v9

    #@4b
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 127
    return-void

    #@4f
    .line 137
    :sswitch_0
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    #@51
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@54
    move-result-object v7

    #@55
    check-cast v7, Landroid/inputmethodservice/AbstractInputMethodService;

    #@57
    .line 138
    .local v7, "target":Landroid/inputmethodservice/AbstractInputMethodService;
    if-nez v7, :cond_1

    #@59
    .line 139
    return-void

    #@5a
    .line 141
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5c
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@5e
    .line 143
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@60
    check-cast v8, Ljava/io/FileDescriptor;

    #@62
    .line 144
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@64
    check-cast v9, Ljava/io/PrintWriter;

    #@66
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@68
    check-cast v10, [Ljava/lang/String;

    #@6a
    .line 143
    invoke-virtual {v7, v8, v9, v10}, Landroid/inputmethodservice/AbstractInputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    .line 148
    :goto_0
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@6f
    monitor-enter v9

    #@70
    .line 149
    :try_start_1
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@72
    check-cast v8, Ljava/util/concurrent/CountDownLatch;

    #@74
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    monitor-exit v9

    #@78
    .line 151
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@7b
    .line 152
    return-void

    #@7c
    .line 145
    :catch_0
    move-exception v1

    #@7d
    .line 146
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@7f
    check-cast v8, Ljava/io/PrintWriter;

    #@81
    new-instance v9, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v10, "Exception: "

    #@89
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v9

    #@8d
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v9

    #@95
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@98
    goto :goto_0

    #@99
    .line 148
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v8

    #@9a
    monitor-exit v9

    #@9b
    throw v8

    #@9c
    .line 156
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v7    # "target":Landroid/inputmethodservice/AbstractInputMethodService;
    :sswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9e
    check-cast v8, Landroid/os/IBinder;

    #@a0
    invoke-interface {v5, v8}, Landroid/view/inputmethod/InputMethod;->attachToken(Landroid/os/IBinder;)V

    #@a3
    .line 157
    return-void

    #@a4
    .line 160
    :sswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a6
    check-cast v8, Landroid/view/inputmethod/InputBinding;

    #@a8
    invoke-interface {v5, v8}, Landroid/view/inputmethod/InputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    #@ab
    .line 161
    return-void

    #@ac
    .line 164
    :sswitch_3
    invoke-interface {v5}, Landroid/view/inputmethod/InputMethod;->unbindInput()V

    #@af
    .line 165
    return-void

    #@b0
    .line 167
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b2
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@b4
    .line 168
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@b6
    .line 169
    .local v6, "missingMethods":I
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@b8
    check-cast v4, Lcom/android/internal/view/IInputContext;

    #@ba
    .line 170
    .local v4, "inputContext":Lcom/android/internal/view/IInputContext;
    if-eqz v4, :cond_2

    #@bc
    .line 171
    new-instance v2, Lcom/android/internal/view/InputConnectionWrapper;

    #@be
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    #@c0
    invoke-direct {v2, v8, v4, v6}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;I)V

    #@c3
    .line 172
    :goto_1
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@c5
    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    #@c7
    .line 173
    .local v3, "info":Landroid/view/inputmethod/EditorInfo;
    iget v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    #@c9
    invoke-virtual {v3, v8}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    #@cc
    .line 174
    invoke-interface {v5, v2, v3}, Landroid/view/inputmethod/InputMethod;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    #@cf
    .line 175
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@d2
    .line 176
    return-void

    #@d3
    .line 171
    .end local v3    # "info":Landroid/view/inputmethod/EditorInfo;
    :cond_2
    const/4 v2, 0x0

    #@d4
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    goto :goto_1

    #@d5
    .line 179
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v4    # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local v6    # "missingMethods":I
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d7
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@d9
    .line 180
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@db
    .line 181
    .restart local v6    # "missingMethods":I
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@dd
    check-cast v4, Lcom/android/internal/view/IInputContext;

    #@df
    .line 182
    .restart local v4    # "inputContext":Lcom/android/internal/view/IInputContext;
    if-eqz v4, :cond_3

    #@e1
    .line 183
    new-instance v2, Lcom/android/internal/view/InputConnectionWrapper;

    #@e3
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    #@e5
    invoke-direct {v2, v8, v4, v6}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;I)V

    #@e8
    .line 184
    :goto_2
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@ea
    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    #@ec
    .line 185
    .restart local v3    # "info":Landroid/view/inputmethod/EditorInfo;
    iget v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    #@ee
    invoke-virtual {v3, v8}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    #@f1
    .line 186
    invoke-interface {v5, v2, v3}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    #@f4
    .line 187
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@f7
    .line 188
    return-void

    #@f8
    .line 183
    .end local v3    # "info":Landroid/view/inputmethod/EditorInfo;
    :cond_3
    const/4 v2, 0x0

    #@f9
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    goto :goto_2

    #@fa
    .line 191
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v4    # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local v6    # "missingMethods":I
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fc
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@fe
    .line 192
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    new-instance v10, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;

    #@100
    .line 193
    iget-object v11, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    #@102
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@104
    check-cast v8, Landroid/view/InputChannel;

    #@106
    .line 194
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@108
    check-cast v9, Lcom/android/internal/view/IInputSessionCallback;

    #@10a
    .line 192
    invoke-direct {v10, v11, v8, v9}, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V

    #@10d
    invoke-interface {v5, v10}, Landroid/view/inputmethod/InputMethod;->createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V

    #@110
    .line 195
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@113
    .line 196
    return-void

    #@114
    .line 199
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@116
    check-cast v8, Landroid/view/inputmethod/InputMethodSession;

    #@118
    .line 200
    iget v11, p1, Landroid/os/Message;->arg1:I

    #@11a
    if-eqz v11, :cond_4

    #@11c
    .line 199
    :goto_3
    invoke-interface {v5, v8, v9}, Landroid/view/inputmethod/InputMethod;->setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V

    #@11f
    .line 201
    return-void

    #@120
    :cond_4
    move v9, v10

    #@121
    .line 200
    goto :goto_3

    #@122
    .line 203
    :sswitch_8
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@124
    check-cast v8, Landroid/view/inputmethod/InputMethodSession;

    #@126
    invoke-interface {v5, v8}, Landroid/view/inputmethod/InputMethod;->revokeSession(Landroid/view/inputmethod/InputMethodSession;)V

    #@129
    .line 204
    return-void

    #@12a
    .line 206
    :sswitch_9
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@12c
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12e
    check-cast v8, Landroid/os/ResultReceiver;

    #@130
    invoke-interface {v5, v9, v8}, Landroid/view/inputmethod/InputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V

    #@133
    .line 207
    return-void

    #@134
    .line 209
    :sswitch_a
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@136
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@138
    check-cast v8, Landroid/os/ResultReceiver;

    #@13a
    invoke-interface {v5, v9, v8}, Landroid/view/inputmethod/InputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    #@13d
    .line 210
    return-void

    #@13e
    .line 212
    :sswitch_b
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@140
    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    #@142
    invoke-interface {v5, v8}, Landroid/view/inputmethod/InputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    #@145
    .line 213
    return-void

    #@146
    .line 135
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x28 -> :sswitch_6
        0x2d -> :sswitch_7
        0x32 -> :sswitch_8
        0x3c -> :sswitch_9
        0x46 -> :sswitch_a
        0x50 -> :sswitch_b
    .end sparse-switch
.end method

.method public getInternalInputMethod()Landroid/view/inputmethod/InputMethod;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/inputmethod/InputMethod;

    #@8
    return-object v0
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x46

    #@6
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 325
    return-void
.end method

.method public restartInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p2, "missingMethods"    # I
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x22

    #@6
    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 276
    return-void
.end method

.method public revokeSession(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 6
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;

    #@0
    .prologue
    .line 306
    :try_start_0
    move-object v0, p1

    #@1
    check-cast v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    #@3
    move-object v3, v0

    #@4
    invoke-virtual {v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    #@7
    move-result-object v2

    #@8
    .line 308
    .local v2, "ls":Landroid/view/inputmethod/InputMethodSession;
    if-nez v2, :cond_0

    #@a
    .line 309
    const-string/jumbo v3, "InputMethodWrapper"

    #@d
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "Session is already finished: "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 310
    return-void

    #@25
    .line 312
    :cond_0
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@27
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@29
    const/16 v5, 0x32

    #@2b
    invoke-virtual {v4, v5, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v4}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 304
    .end local v2    # "ls":Landroid/view/inputmethod/InputMethodSession;
    :goto_0
    return-void

    #@33
    .line 313
    :catch_0
    move-exception v1

    #@34
    .line 314
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "InputMethodWrapper"

    #@37
    new-instance v4, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v5, "Incoming session not of correct type: "

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    goto :goto_0
.end method

.method public setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    .locals 7
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 290
    :try_start_0
    move-object v0, p1

    #@1
    check-cast v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    #@3
    move-object v3, v0

    #@4
    invoke-virtual {v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    #@7
    move-result-object v2

    #@8
    .line 292
    .local v2, "ls":Landroid/view/inputmethod/InputMethodSession;
    if-nez v2, :cond_0

    #@a
    .line 293
    const-string/jumbo v3, "InputMethodWrapper"

    #@d
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "Session is already finished: "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 294
    return-void

    #@25
    .line 296
    :cond_0
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@27
    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@29
    .line 297
    if-eqz p2, :cond_1

    #@2b
    const/4 v3, 0x1

    #@2c
    :goto_0
    const/16 v6, 0x2d

    #@2e
    .line 296
    invoke-virtual {v5, v6, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v4, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 288
    .end local v2    # "ls":Landroid/view/inputmethod/InputMethodSession;
    :goto_1
    return-void

    #@36
    .line 297
    .restart local v2    # "ls":Landroid/view/inputmethod/InputMethodSession;
    :cond_1
    const/4 v3, 0x0

    #@37
    goto :goto_0

    #@38
    .line 298
    .end local v2    # "ls":Landroid/view/inputmethod/InputMethodSession;
    :catch_0
    move-exception v1

    #@39
    .line 299
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "InputMethodWrapper"

    #@3c
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "Incoming session not of correct type: "

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_1
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x3c

    #@6
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 319
    return-void
.end method

.method public startInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p2, "missingMethods"    # I
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x20

    #@6
    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 268
    return-void
.end method

.method public unbindInput()V
    .locals 3

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x1e

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 261
    return-void
.end method
