.class Landroid/inputmethodservice/IInputMethodWrapper;
.super Lcom/android/internal/view/IInputMethod$Stub;
.source "IInputMethodWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodWrapper$Notifier;,
        Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;
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
    .line 112
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethod$Stub;-><init>()V

    #@3
    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    #@a
    .line 115
    invoke-virtual {p1}, Landroid/inputmethodservice/AbstractInputMethodService;->getApplicationContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    #@10
    .line 116
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
    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@1d
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@20
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    #@22
    .line 118
    invoke-virtual {p1}, Landroid/inputmethodservice/AbstractInputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@25
    move-result-object v0

    #@26
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@28
    iput v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    #@2a
    .line 113
    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 244
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
    .line 243
    return-void
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 5
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;

    #@0
    .prologue
    .line 249
    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper;

    #@2
    .line 250
    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@9
    move-result-object v2

    #@a
    .line 249
    invoke-direct {v0, v2}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Lcom/android/internal/view/IInputContext;)V

    #@d
    .line 251
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    new-instance v1, Landroid/view/inputmethod/InputBinding;

    #@f
    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V

    #@12
    .line 252
    .local v1, "nu":Landroid/view/inputmethod/InputBinding;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@14
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@16
    const/16 v4, 0x14

    #@18
    invoke-virtual {v3, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@1f
    .line 248
    return-void
.end method

.method public changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 323
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
    .line 322
    return-void
.end method

.method public createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    .locals 3
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "callback"    # Lcom/android/internal/view/IInputSessionCallback;

    #@0
    .prologue
    .line 274
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
    .line 273
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
    .line 217
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    #@3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v7

    #@7
    check-cast v7, Landroid/inputmethodservice/AbstractInputMethodService;

    #@9
    .line 218
    .local v7, "target":Landroid/inputmethodservice/AbstractInputMethodService;
    if-nez v7, :cond_0

    #@b
    .line 219
    return-void

    #@c
    .line 221
    :cond_0
    const-string/jumbo v0, "android.permission.DUMP"

    #@f
    invoke-virtual {v7, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 224
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
    .line 225
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@24
    move-result v1

    #@25
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 226
    const-string/jumbo v1, ", uid="

    #@2c
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@33
    move-result v1

    #@34
    .line 224
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
    .line 227
    return-void

    #@40
    .line 230
    :cond_1
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    #@42
    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@45
    .line 231
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
    .line 234
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
    .line 235
    const-string/jumbo v0, "Timeout waiting for dump"

    #@60
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 216
    :cond_2
    :goto_0
    return-void

    #@64
    .line 237
    :catch_0
    move-exception v6

    #@65
    .line 238
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v0, "Interrupted waiting for dump"

    #@68
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b
    goto :goto_0
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 127
    iget-object v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    #@4
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v5

    #@8
    check-cast v5, Landroid/view/inputmethod/InputMethod;

    #@a
    .line 129
    .local v5, "inputMethod":Landroid/view/inputmethod/InputMethod;
    if-nez v5, :cond_0

    #@c
    iget v7, p1, Landroid/os/Message;->what:I

    #@e
    if-eq v7, v8, :cond_0

    #@10
    .line 130
    const-string/jumbo v7, "InputMethodWrapper"

    #@13
    new-instance v8, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v9, "Input method reference was null, ignoring message: "

    #@1b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v8

    #@1f
    iget v9, p1, Landroid/os/Message;->what:I

    #@21
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v8

    #@25
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v8

    #@29
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 131
    return-void

    #@2d
    .line 134
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    #@2f
    sparse-switch v7, :sswitch_data_0

    #@32
    .line 212
    const-string/jumbo v7, "InputMethodWrapper"

    #@35
    new-instance v8, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v9, "Unhandled message code: "

    #@3d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    iget v9, p1, Landroid/os/Message;->what:I

    #@43
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 126
    return-void

    #@4f
    .line 136
    :sswitch_0
    iget-object v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    #@51
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@54
    move-result-object v6

    #@55
    check-cast v6, Landroid/inputmethodservice/AbstractInputMethodService;

    #@57
    .line 137
    .local v6, "target":Landroid/inputmethodservice/AbstractInputMethodService;
    if-nez v6, :cond_1

    #@59
    .line 138
    return-void

    #@5a
    .line 140
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5c
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@5e
    .line 142
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@60
    check-cast v7, Ljava/io/FileDescriptor;

    #@62
    .line 143
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@64
    check-cast v8, Ljava/io/PrintWriter;

    #@66
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@68
    check-cast v9, [Ljava/lang/String;

    #@6a
    .line 142
    invoke-virtual {v6, v7, v8, v9}, Landroid/inputmethodservice/AbstractInputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    .line 147
    :goto_0
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@6f
    monitor-enter v8

    #@70
    .line 148
    :try_start_1
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@72
    check-cast v7, Ljava/util/concurrent/CountDownLatch;

    #@74
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    monitor-exit v8

    #@78
    .line 150
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@7b
    .line 151
    return-void

    #@7c
    .line 144
    :catch_0
    move-exception v1

    #@7d
    .line 145
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@7f
    check-cast v7, Ljava/io/PrintWriter;

    #@81
    new-instance v8, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v9, "Exception: "

    #@89
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v8

    #@8d
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v8

    #@91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v8

    #@95
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@98
    goto :goto_0

    #@99
    .line 147
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v7

    #@9a
    monitor-exit v8

    #@9b
    throw v7

    #@9c
    .line 155
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v6    # "target":Landroid/inputmethodservice/AbstractInputMethodService;
    :sswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9e
    check-cast v7, Landroid/os/IBinder;

    #@a0
    invoke-interface {v5, v7}, Landroid/view/inputmethod/InputMethod;->attachToken(Landroid/os/IBinder;)V

    #@a3
    .line 156
    return-void

    #@a4
    .line 159
    :sswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a6
    check-cast v7, Landroid/view/inputmethod/InputBinding;

    #@a8
    invoke-interface {v5, v7}, Landroid/view/inputmethod/InputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    #@ab
    .line 160
    return-void

    #@ac
    .line 163
    :sswitch_3
    invoke-interface {v5}, Landroid/view/inputmethod/InputMethod;->unbindInput()V

    #@af
    .line 164
    return-void

    #@b0
    .line 166
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b2
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@b4
    .line 167
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@b6
    check-cast v4, Lcom/android/internal/view/IInputContext;

    #@b8
    .line 168
    .local v4, "inputContext":Lcom/android/internal/view/IInputContext;
    if-eqz v4, :cond_2

    #@ba
    .line 169
    new-instance v2, Lcom/android/internal/view/InputConnectionWrapper;

    #@bc
    invoke-direct {v2, v4}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Lcom/android/internal/view/IInputContext;)V

    #@bf
    .line 170
    :goto_1
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@c1
    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    #@c3
    .line 171
    .local v3, "info":Landroid/view/inputmethod/EditorInfo;
    iget v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    #@c5
    invoke-virtual {v3, v7}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    #@c8
    .line 172
    invoke-interface {v5, v2, v3}, Landroid/view/inputmethod/InputMethod;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    #@cb
    .line 173
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@ce
    .line 174
    return-void

    #@cf
    .line 169
    .end local v3    # "info":Landroid/view/inputmethod/EditorInfo;
    :cond_2
    const/4 v2, 0x0

    #@d0
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    goto :goto_1

    #@d1
    .line 177
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v4    # "inputContext":Lcom/android/internal/view/IInputContext;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d3
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@d5
    .line 178
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@d7
    check-cast v4, Lcom/android/internal/view/IInputContext;

    #@d9
    .line 179
    .restart local v4    # "inputContext":Lcom/android/internal/view/IInputContext;
    if-eqz v4, :cond_3

    #@db
    .line 180
    new-instance v2, Lcom/android/internal/view/InputConnectionWrapper;

    #@dd
    invoke-direct {v2, v4}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Lcom/android/internal/view/IInputContext;)V

    #@e0
    .line 181
    :goto_2
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@e2
    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    #@e4
    .line 182
    .restart local v3    # "info":Landroid/view/inputmethod/EditorInfo;
    iget v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    #@e6
    invoke-virtual {v3, v7}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    #@e9
    .line 183
    invoke-interface {v5, v2, v3}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    #@ec
    .line 184
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@ef
    .line 185
    return-void

    #@f0
    .line 180
    .end local v3    # "info":Landroid/view/inputmethod/EditorInfo;
    :cond_3
    const/4 v2, 0x0

    #@f1
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    goto :goto_2

    #@f2
    .line 188
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v4    # "inputContext":Lcom/android/internal/view/IInputContext;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f4
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@f6
    .line 189
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    new-instance v9, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;

    #@f8
    .line 190
    iget-object v10, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    #@fa
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@fc
    check-cast v7, Landroid/view/InputChannel;

    #@fe
    .line 191
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@100
    check-cast v8, Lcom/android/internal/view/IInputSessionCallback;

    #@102
    .line 189
    invoke-direct {v9, v10, v7, v8}, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V

    #@105
    invoke-interface {v5, v9}, Landroid/view/inputmethod/InputMethod;->createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V

    #@108
    .line 192
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@10b
    .line 193
    return-void

    #@10c
    .line 196
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10e
    check-cast v7, Landroid/view/inputmethod/InputMethodSession;

    #@110
    .line 197
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@112
    if-eqz v10, :cond_4

    #@114
    .line 196
    :goto_3
    invoke-interface {v5, v7, v8}, Landroid/view/inputmethod/InputMethod;->setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V

    #@117
    .line 198
    return-void

    #@118
    :cond_4
    move v8, v9

    #@119
    .line 197
    goto :goto_3

    #@11a
    .line 200
    :sswitch_8
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11c
    check-cast v7, Landroid/view/inputmethod/InputMethodSession;

    #@11e
    invoke-interface {v5, v7}, Landroid/view/inputmethod/InputMethod;->revokeSession(Landroid/view/inputmethod/InputMethodSession;)V

    #@121
    .line 201
    return-void

    #@122
    .line 203
    :sswitch_9
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@124
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@126
    check-cast v7, Landroid/os/ResultReceiver;

    #@128
    invoke-interface {v5, v8, v7}, Landroid/view/inputmethod/InputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V

    #@12b
    .line 204
    return-void

    #@12c
    .line 206
    :sswitch_a
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@12e
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@130
    check-cast v7, Landroid/os/ResultReceiver;

    #@132
    invoke-interface {v5, v8, v7}, Landroid/view/inputmethod/InputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    #@135
    .line 207
    return-void

    #@136
    .line 209
    :sswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@138
    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    #@13a
    invoke-interface {v5, v7}, Landroid/view/inputmethod/InputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    #@13d
    .line 210
    return-void

    #@13e
    .line 134
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
    .line 122
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
    .line 317
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
    .line 316
    return-void
.end method

.method public restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x22

    #@6
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 267
    return-void
.end method

.method public revokeSession(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 6
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;

    #@0
    .prologue
    .line 297
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
    .line 299
    .local v2, "ls":Landroid/view/inputmethod/InputMethodSession;
    if-nez v2, :cond_0

    #@a
    .line 300
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
    .line 301
    return-void

    #@25
    .line 303
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
    .line 295
    .end local v2    # "ls":Landroid/view/inputmethod/InputMethodSession;
    :goto_0
    return-void

    #@33
    .line 304
    :catch_0
    move-exception v1

    #@34
    .line 305
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
    .line 281
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
    .line 283
    .local v2, "ls":Landroid/view/inputmethod/InputMethodSession;
    if-nez v2, :cond_0

    #@a
    .line 284
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
    .line 285
    return-void

    #@25
    .line 287
    :cond_0
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@27
    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@29
    .line 288
    if-eqz p2, :cond_1

    #@2b
    const/4 v3, 0x1

    #@2c
    :goto_0
    const/16 v6, 0x2d

    #@2e
    .line 287
    invoke-virtual {v5, v6, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v4, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 279
    .end local v2    # "ls":Landroid/view/inputmethod/InputMethodSession;
    :goto_1
    return-void

    #@36
    .line 288
    .restart local v2    # "ls":Landroid/view/inputmethod/InputMethodSession;
    :cond_1
    const/4 v3, 0x0

    #@37
    goto :goto_0

    #@38
    .line 289
    .end local v2    # "ls":Landroid/view/inputmethod/InputMethodSession;
    :catch_0
    move-exception v1

    #@39
    .line 290
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
    .line 311
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
    .line 310
    return-void
.end method

.method public startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x20

    #@6
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 261
    return-void
.end method

.method public unbindInput()V
    .locals 3

    #@0
    .prologue
    .line 257
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
    .line 256
    return-void
.end method
