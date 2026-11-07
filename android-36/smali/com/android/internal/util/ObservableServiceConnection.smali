.class public Lcom/android/internal/util/ObservableServiceConnection;
.super Ljava/lang/Object;
.source "ObservableServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;,
        Lcom/android/internal/util/ObservableServiceConnection$Callback;,
        Lcom/android/internal/util/ObservableServiceConnection$DisconnectReason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field public static final blacklist DISCONNECT_REASON_BINDING_DIED:I = 0x3

.field public static final blacklist DISCONNECT_REASON_DISCONNECTED:I = 0x2

.field public static final blacklist DISCONNECT_REASON_NONE:I = 0x0

.field public static final blacklist DISCONNECT_REASON_NULL_BINDING:I = 0x1

.field public static final blacklist DISCONNECT_REASON_UNBIND:I = 0x4


# instance fields
.field private blacklist mBoundCalled:Z

.field private final blacklist mCallbackRegistry:Lcom/android/internal/util/CallbackRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/CallbackRegistry<",
            "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
            "TT;>;",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "TT;>;TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mFlags:I

.field private blacklist mLastDisconnectReason:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist mServiceIntent:Landroid/content/Intent;

.field private final blacklist mTransformer:Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ELSya9E5t_tfA1w7JXqAHaL9Fxg(Lcom/android/internal/util/ObservableServiceConnection;Lcom/android/internal/util/ObservableServiceConnection$Callback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/ObservableServiceConnection;->lambda$addCallback$0(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Lcom/android/internal/util/ObservableServiceConnection;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastDisconnectReason(Lcom/android/internal/util/ObservableServiceConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/util/ObservableServiceConnection;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;Landroid/content/Intent;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "serviceIntent"    # Landroid/content/Intent;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer<",
            "TT;>;",
            "Landroid/content/Intent;",
            "I)V"
        }
    .end annotation

    .line 159
    .local p0, "this":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    .local p3, "transformer":Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;, "Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mBoundCalled:Z

    .line 125
    iput v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    .line 128
    new-instance v0, Lcom/android/internal/util/CallbackRegistry;

    new-instance v1, Lcom/android/internal/util/ObservableServiceConnection$1;

    invoke-direct {v1, p0}, Lcom/android/internal/util/ObservableServiceConnection$1;-><init>(Lcom/android/internal/util/ObservableServiceConnection;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/CallbackRegistry;-><init>(Lcom/android/internal/util/CallbackRegistry$NotifierCallback;)V

    iput-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mCallbackRegistry:Lcom/android/internal/util/CallbackRegistry;

    .line 160
    iput-object p1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/android/internal/util/ObservableServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    .line 162
    iput-object p3, p0, Lcom/android/internal/util/ObservableServiceConnection;->mTransformer:Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;

    .line 163
    iput-object p4, p0, Lcom/android/internal/util/ObservableServiceConnection;->mServiceIntent:Landroid/content/Intent;

    .line 164
    iput p5, p0, Lcom/android/internal/util/ObservableServiceConnection;->mFlags:I

    .line 165
    return-void
.end method

.method private synthetic blacklist lambda$addCallback$0(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/util/ObservableServiceConnection$Callback;

    .line 208
    .local p0, "this":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mService:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 210
    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mService:Ljava/lang/Object;

    invoke-interface {p1, p0, v1}, Lcom/android/internal/util/ObservableServiceConnection$Callback;->onConnected(Lcom/android/internal/util/ObservableServiceConnection;Ljava/lang/Object;)V

    goto :goto_16

    .line 211
    :cond_d
    iget v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    if-eqz v1, :cond_16

    .line 212
    iget v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    invoke-interface {p1, p0, v1}, Lcom/android/internal/util/ObservableServiceConnection$Callback;->onDisconnected(Lcom/android/internal/util/ObservableServiceConnection;I)V

    .line 214
    :cond_16
    :goto_16
    monitor-exit v0

    .line 215
    return-void

    .line 214
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private blacklist onDisconnected(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 230
    .local p0, "this":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mBoundCalled:Z

    if-nez v1, :cond_9

    .line 232
    monitor-exit v0

    return-void

    .line 234
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mBoundCalled:Z

    .line 235
    iput p1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    .line 236
    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mService:Ljava/lang/Object;

    .line 238
    iget-object v2, p0, Lcom/android/internal/util/ObservableServiceConnection;->mCallbackRegistry:Lcom/android/internal/util/CallbackRegistry;

    invoke-virtual {v2, p0, p1, v1}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 239
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method public blacklist addCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 206
    .local p0, "this":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    .local p1, "callback":Lcom/android/internal/util/ObservableServiceConnection$Callback;, "Lcom/android/internal/util/ObservableServiceConnection$Callback<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mCallbackRegistry:Lcom/android/internal/util/CallbackRegistry;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/CallbackRegistry;->add(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/util/ObservableServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/util/ObservableServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/ObservableServiceConnection;Lcom/android/internal/util/ObservableServiceConnection$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public blacklist bind()Z
    .registers 6

    .line 182
    .local p0, "this":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mBoundCalled:Z

    if-eqz v1, :cond_a

    .line 184
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 186
    :cond_a
    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/util/ObservableServiceConnection;->mServiceIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/internal/util/ObservableServiceConnection;->mFlags:I

    iget-object v4, p0, Lcom/android/internal/util/ObservableServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    .line 187
    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v1

    .line 188
    .local v1, "bindResult":Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/util/ObservableServiceConnection;->mBoundCalled:Z

    .line 189
    monitor-exit v0

    return v1

    .line 190
    .end local v1    # "bindResult":Z
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 171
    .local p0, "this":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method public final whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 258
    .local p0, "this":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/util/ObservableServiceConnection;->onDisconnected(I)V

    .line 259
    return-void
.end method

.method public final whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 263
    .local p0, "this":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/util/ObservableServiceConnection;->onDisconnected(I)V

    .line 264
    return-void
.end method

.method public final whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 244
    .local p0, "this":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mTransformer:Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;

    invoke-interface {v1, p2}, Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;->convert(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mService:Ljava/lang/Object;

    .line 246
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    .line 247
    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mCallbackRegistry:Lcom/android/internal/util/CallbackRegistry;

    iget v2, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    iget-object v3, p0, Lcom/android/internal/util/ObservableServiceConnection;->mService:Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 248
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public final whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 253
    .local p0, "this":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/util/ObservableServiceConnection;->onDisconnected(I)V

    .line 254
    return-void
.end method

.method public blacklist removeCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 224
    .local p0, "this":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    .local p1, "callback":Lcom/android/internal/util/ObservableServiceConnection$Callback;, "Lcom/android/internal/util/ObservableServiceConnection$Callback<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mCallbackRegistry:Lcom/android/internal/util/CallbackRegistry;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/CallbackRegistry;->remove(Ljava/lang/Object;)V

    .line 226
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist unbind()V
    .registers 2

    .line 197
    .local p0, "this":Lcom/android/internal/util/ObservableServiceConnection;, "Lcom/android/internal/util/ObservableServiceConnection<TT;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/util/ObservableServiceConnection;->onDisconnected(I)V

    .line 198
    return-void
.end method
