.class public Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
.super Ljava/util/concurrent/CompletableFuture;
.source "AndroidFuture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;,
        Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenApplyAsync;,
        Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;,
        Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$SupplyAsync;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture<",
        "TT;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final blacklist EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static blacklist sMainHandler:Landroid/os/Handler;


# instance fields
.field private blacklist mListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mListenerExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRemoteOrigin:Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture;

.field private blacklist mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    const-class v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 637
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$2;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$2;-><init>()V

    sput-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 88
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    .line 82
    sget-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 84
    invoke-static {}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mRemoteOrigin:Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture;

    .line 90
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    .line 82
    sget-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 84
    invoke-static {}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 98
    invoke-static {p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->readThrowable(Landroid/os/Parcel;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_30

    .line 101
    :cond_29
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 103
    :goto_30
    iput-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mRemoteOrigin:Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture;

    goto :goto_3d

    .line 106
    :cond_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mRemoteOrigin:Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture;

    .line 108
    :goto_3d
    return-void
.end method

.method static blacklist callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7
    .param p2, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TTT;-",
            "Ljava/lang/Throwable;",
            ">;TTT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 260
    .local p0, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TTT;-Ljava/lang/Throwable;>;"
    .local p1, "res":Ljava/lang/Object;, "TTT;"
    :try_start_0
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 272
    goto :goto_b

    .line 261
    :catchall_4
    move-exception v0

    .line 262
    .local v0, "t":Ljava/lang/Throwable;
    if-nez p2, :cond_c

    .line 265
    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p0, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_b
    goto :goto_2a

    .line 269
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 270
    nop

    .end local p0    # "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TTT;-Ljava/lang/Throwable;>;"
    .end local p1    # "res":Ljava/lang/Object;, "TTT;"
    .end local p2    # "err":Ljava/lang/Throwable;
    throw v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_11

    .line 273
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local p0    # "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TTT;-Ljava/lang/Throwable;>;"
    .restart local p1    # "res":Ljava/lang/Object;, "TTT;"
    .restart local p2    # "err":Ljava/lang/Throwable;
    :catchall_11
    move-exception v0

    .line 275
    .local v0, "t2":Ljava/lang/Throwable;
    sget-object v1, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call whenComplete listener. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v0    # "t2":Ljava/lang/Throwable;
    :goto_2a
    return-void
.end method

.method private blacklist callListenerAsync(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .param p3, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 244
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .local p1, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    .local p2, "res":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    if-ne v0, v1, :cond_a

    .line 245
    invoke-static {p1, p2, p3}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 247
    :cond_a
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 249
    :goto_14
    return-void
.end method

.method public static blacklist completedFuture(Ljava/lang/Object;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 128
    .local p0, "value":Ljava/lang/Object;, "TU;"
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;-><init>()V

    .line 129
    .local v0, "future":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TU;>;"
    invoke-virtual {v0, p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 130
    return-object v0
.end method

.method private static blacklist getMainHandler()Landroid/os/Handler;
    .registers 2

    .line 113
    sget-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->sMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->sMainHandler:Landroid/os/Handler;

    .line 116
    :cond_f
    sget-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->sMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic blacklist lambda$callListenerAsync$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "listener"    # Ljava/util/function/BiConsumer;
    .param p1, "res"    # Ljava/lang/Object;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 247
    invoke-static {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$thenCombine$2(Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Object;
    .registers 2
    .param p0, "res"    # Ljava/lang/Object;
    .param p1, "aVoid"    # Ljava/lang/Void;

    .line 430
    return-object p0
.end method

.method static synthetic blacklist lambda$whenCompleteAsync$0(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "oldListener"    # Ljava/util/function/BiConsumer;
    .param p1, "action"    # Ljava/util/function/BiConsumer;
    .param p2, "res"    # Ljava/lang/Object;
    .param p3, "err"    # Ljava/lang/Throwable;

    .line 221
    invoke-static {p0, p2, p3}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 222
    invoke-static {p1, p2, p3}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 223
    return-void
.end method

.method private static blacklist readThrowable(Landroid/os/Parcel;)Ljava/lang/Throwable;
    .registers 12
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 596
    const-string v0, ": "

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 597
    .local v1, "hasThrowable":Z
    if-nez v1, :cond_a

    .line 598
    const/4 v0, 0x0

    return-object v0

    .line 601
    :cond_a
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 602
    .local v2, "isFrameworkParcelable":Z
    if-eqz v2, :cond_1d

    .line 603
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 606
    :cond_1d
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 609
    .local v5, "stackTrace":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 612
    .local v6, "messageWithStackTrace":Ljava/lang/String;
    :try_start_40
    const-class v7, Landroid/os/Parcelable;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v3, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 613
    .local v7, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Ljava/lang/Throwable;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 614
    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 615
    .local v8, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    .line 616
    .end local v8    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v9, "throwable":Ljava/lang/Throwable;
    goto :goto_97

    .line 617
    .end local v9    # "throwable":Ljava/lang/Throwable;
    :cond_69
    const-string v8, "186530450"

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, ""

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    const v9, 0x534e4554

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 618
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_40 .. :try_end_96} :catchall_98

    move-object v9, v8

    .line 623
    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "throwable":Ljava/lang/Throwable;
    :goto_97
    goto :goto_b7

    .line 620
    .end local v9    # "throwable":Ljava/lang/Throwable;
    :catchall_98
    move-exception v7

    .line 621
    .local v7, "t":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    .line 622
    .restart local v9    # "throwable":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 624
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_b7
    sget-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 625
    invoke-static {p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->readThrowable(Landroid/os/Parcel;)Ljava/lang/Throwable;

    move-result-object v0

    .line 626
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_c5

    .line 627
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 629
    :cond_c5
    return-object v9
.end method

.method public static blacklist supply(Ljava/util/function/Supplier;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 484
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    sget-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 491
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$SupplyAsync;

    invoke-direct {v0, p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$SupplyAsync;-><init>(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static blacklist writeThrowable(Landroid/os/Parcel;Ljava/lang/Throwable;)V
    .registers 10
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 561
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 562
    .local v2, "hasThrowable":Z
    :goto_7
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 563
    if-nez v2, :cond_d

    .line 564
    return-void

    .line 567
    :cond_d
    instance-of v3, p1, Landroid/os/Parcelable;

    if-eqz v3, :cond_23

    .line 568
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/os/Parcelable;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-ne v3, v4, :cond_23

    move v3, v1

    goto :goto_24

    :cond_23
    move v3, v0

    .line 569
    .local v3, "isFrameworkParcelable":Z
    :goto_24
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 570
    if-eqz v3, :cond_30

    .line 571
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 573
    return-void

    .line 576
    :cond_30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 579
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .local v4, "stackTraceBuilder":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_4e

    array-length v0, v1

    :cond_4e
    const/4 v5, 0x5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 581
    .local v0, "truncatedStackTraceLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_54
    if-ge v5, v0, :cond_6b

    .line 582
    if-lez v5, :cond_5d

    .line 583
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 585
    :cond_5d
    const-string v6, "\tat "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 581
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 587
    .end local v5    # "i":I
    :cond_6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->writeThrowable(Landroid/os/Parcel;Ljava/lang/Throwable;)V

    .line 589
    return-void
.end method


# virtual methods
.method public whitelist test-api cancel(Z)Z
    .registers 6
    .param p1, "mayInterruptIfRunning"    # Z

    .line 153
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    const-string v0, "Expected CancellationException"

    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result v1

    .line 154
    .local v1, "changed":Z
    if-nez v1, :cond_9

    goto :goto_1f

    .line 156
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 157
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "changed":Z
    .end local p0    # "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .end local p1    # "mayInterruptIfRunning":Z
    throw v2
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_12} :catch_19
    .catchall {:try_start_9 .. :try_end_12} :catchall_12

    .line 160
    .restart local v1    # "changed":Z
    .restart local p0    # "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .restart local p1    # "mayInterruptIfRunning":Z
    :catchall_12
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 158
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v0

    .line 159
    .local v0, "ex":Ljava/util/concurrent/CancellationException;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 162
    .end local v0    # "ex":Ljava/util/concurrent/CancellationException;
    nop

    .line 164
    :goto_1f
    return v1
.end method

.method public blacklist cancelTimeout()Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 299
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    return-object p0
.end method

.method public whitelist test-api complete(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 135
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    .local v0, "changed":Z
    if-eqz v0, :cond_a

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 139
    :cond_a
    return v0
.end method

.method public whitelist test-api completeExceptionally(Ljava/lang/Throwable;)Z
    .registers 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 144
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v0

    .line 145
    .local v0, "changed":Z
    if-eqz v0, :cond_a

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 148
    :cond_a
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 634
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7
    .param p2, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 169
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .local p1, "res":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->cancelTimeout()Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    .line 177
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_6
    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    .line 179
    .local v1, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    .line 180
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    .line 182
    if-eqz v1, :cond_11

    .line 183
    invoke-direct {p0, v1, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->callListenerAsync(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 186
    :cond_11
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mRemoteOrigin:Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture;

    if-eqz v0, :cond_23

    .line 188
    :try_start_15
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mRemoteOrigin:Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture;

    invoke-interface {v0, p0}, Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture;->complete(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 191
    goto :goto_23

    .line 189
    :catch_1b
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to propagate completion"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void

    .line 180
    .end local v1    # "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist orTimeout(JLjava/util/concurrent/TimeUnit;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 282
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    new-instance v1, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda2;-><init>(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 283
    return-object p0
.end method

.method public bridge synthetic whitelist test-api orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTimeoutHandler(Landroid/os/Handler;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 307
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->cancelTimeout()Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    .line 308
    invoke-static {p1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    .line 309
    return-object p0
.end method

.method public blacklist thenApply(Ljava/util/function/Function;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 376
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    sget-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 382
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenApplyAsync;

    invoke-direct {v0, p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenApplyAsync;-><init>(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist thenCombine(Ljava/util/concurrent/CompletionStage;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;)",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<Ljava/lang/Void;>;"
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public blacklist thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TV;>;"
        }
    .end annotation

    .line 425
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "combineResults":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;

    invoke-direct {v0, p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist thenCompose(Ljava/util/function/Function;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 315
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    sget-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 322
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;

    invoke-direct {v0, p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;-><init>(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method blacklist triggerTimeout()V
    .registers 2

    .line 287
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->cancelTimeout()Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    .line 288
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_11

    .line 289
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p0, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 291
    :cond_11
    return-void
.end method

.method blacklist unwrapExecutionException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 551
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_9

    .line 552
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_a

    .line 553
    :cond_9
    move-object v0, p1

    .line 551
    :goto_a
    return-object v0
.end method

.method public blacklist whenComplete(Ljava/util/function/BiConsumer;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 197
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    sget-object v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 204
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    invoke-static {p1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {p2}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_9
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 208
    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    .line 210
    .local v1, "oldListener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    if-eqz v1, :cond_1c

    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    if-eq p2, v2, :cond_1c

    .line 213
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 214
    monitor-exit v0

    return-object p0

    .line 217
    :cond_1c
    iput-object p2, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 218
    if-nez v1, :cond_22

    .line 219
    move-object v2, p1

    goto :goto_27

    .line 220
    :cond_22
    new-instance v2, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    :goto_27
    iput-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    .line 224
    monitor-exit v0

    return-object p0

    .line 226
    .end local v1    # "oldListener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_41

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "res":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 232
    .local v1, "err":Ljava/lang/Throwable;
    :try_start_2e
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_32
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2e .. :try_end_32} :catch_37
    .catchall {:try_start_2e .. :try_end_32} :catchall_34

    move-object v0, v2

    .line 237
    :goto_33
    goto :goto_3d

    .line 235
    :catchall_34
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/Throwable;
    move-object v1, v2

    goto :goto_3d

    .line 233
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v2

    .line 234
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_33

    .line 238
    :goto_3d
    invoke-direct {p0, p1, v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->callListenerAsync(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 239
    return-object p0

    .line 226
    .end local v0    # "res":Ljava/lang/Object;, "TT;"
    .end local v1    # "err":Ljava/lang/Throwable;
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public bridge synthetic whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 514
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->isDone()Z

    move-result v0

    .line 515
    .local v0, "done":Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 516
    if-eqz v0, :cond_23

    .line 519
    :try_start_9
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_16

    .line 524
    .local v1, "result":Ljava/lang/Object;, "TT;"
    nop

    .line 525
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 526
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 527
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    goto :goto_2f

    .line 520
    :catchall_16
    move-exception v1

    .line 521
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 522
    invoke-virtual {p0, v1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->unwrapExecutionException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->writeThrowable(Landroid/os/Parcel;Ljava/lang/Throwable;)V

    .line 523
    return-void

    .line 528
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_23
    new-instance v1, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$1;

    invoke-direct {v1, p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$1;-><init>(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)V

    .line 543
    invoke-virtual {v1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$1;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 528
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 545
    :goto_2f
    return-void
.end method
