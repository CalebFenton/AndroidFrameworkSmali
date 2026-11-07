.class public Landroid/window/SplashScreen$SplashScreenManagerGlobal;
.super Ljava/lang/Object;
.source "SplashScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashScreenManagerGlobal"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/window/SplashScreen$SplashScreenManagerGlobal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mGlobalLock:Ljava/lang/Object;

.field private final blacklist mImpls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/SplashScreen$SplashScreenImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGlobalLock(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddImpl(Landroid/window/SplashScreen$SplashScreenManagerGlobal;Landroid/window/SplashScreen$SplashScreenImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->addImpl(Landroid/window/SplashScreen$SplashScreenImpl;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImpl(Landroid/window/SplashScreen$SplashScreenManagerGlobal;Landroid/window/SplashScreen$SplashScreenImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->removeImpl(Landroid/window/SplashScreen$SplashScreenImpl;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 207
    const-class v0, Landroid/window/SplashScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->TAG:Ljava/lang/String;

    .line 219
    new-instance v0, Landroid/window/SplashScreen$SplashScreenManagerGlobal$1;

    invoke-direct {v0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal$1;-><init>()V

    sput-object v0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->sInstance:Landroid/util/Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mImpls:Ljava/util/ArrayList;

    .line 212
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActivityThread;->registerSplashScreenManager(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)V

    .line 213
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/SplashScreen-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;-><init>()V

    return-void
.end method

.method private blacklist addImpl(Landroid/window/SplashScreen$SplashScreenImpl;)V
    .registers 4
    .param p1, "impl"    # Landroid/window/SplashScreen$SplashScreenImpl;

    .line 228
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    iget-object v1, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mImpls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist dispatchOnExitAnimation(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/window/SplashScreenView;

    .line 265
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    invoke-direct {p0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->findImpl(Landroid/os/IBinder;)Landroid/window/SplashScreen$SplashScreenImpl;

    move-result-object v1

    .line 267
    .local v1, "impl":Landroid/window/SplashScreen$SplashScreenImpl;
    if-nez v1, :cond_b

    .line 268
    monitor-exit v0

    return-void

    .line 270
    :cond_b
    invoke-static {v1}, Landroid/window/SplashScreen$SplashScreenImpl;->-$$Nest$fgetmExitAnimationListener(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/window/SplashScreen$OnExitAnimationListener;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 271
    sget-object v2, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot dispatch onExitAnimation to listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    monitor-exit v0

    return-void

    .line 274
    :cond_2b
    invoke-static {v1}, Landroid/window/SplashScreen$SplashScreenImpl;->-$$Nest$fgetmExitAnimationListener(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/window/SplashScreen$OnExitAnimationListener;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/window/SplashScreen$OnExitAnimationListener;->onSplashScreenExit(Landroid/window/SplashScreenView;)V

    .line 275
    .end local v1    # "impl":Landroid/window/SplashScreen$SplashScreenImpl;
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private blacklist findImpl(Landroid/os/IBinder;)Landroid/window/SplashScreen$SplashScreenImpl;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 240
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mImpls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SplashScreen$SplashScreenImpl;

    .line 242
    .local v2, "impl":Landroid/window/SplashScreen$SplashScreenImpl;
    invoke-static {v2}, Landroid/window/SplashScreen$SplashScreenImpl;->-$$Nest$fgetmActivityToken(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_1d

    .line 243
    monitor-exit v0

    return-object v2

    .line 245
    .end local v2    # "impl":Landroid/window/SplashScreen$SplashScreenImpl;
    :cond_1d
    goto :goto_9

    .line 246
    :cond_1e
    monitor-exit v0

    .line 247
    const/4 v0, 0x0

    return-object v0

    .line 246
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public static blacklist getInstance()Landroid/window/SplashScreen$SplashScreenManagerGlobal;
    .registers 1

    .line 216
    sget-object v0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    return-object v0
.end method

.method private blacklist removeImpl(Landroid/window/SplashScreen$SplashScreenImpl;)V
    .registers 4
    .param p1, "impl"    # Landroid/window/SplashScreen$SplashScreenImpl;

    .line 234
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-object v1, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mImpls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method


# virtual methods
.method public blacklist containsExitListener(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 279
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_3
    invoke-direct {p0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->findImpl(Landroid/os/IBinder;)Landroid/window/SplashScreen$SplashScreenImpl;

    move-result-object v1

    .line 281
    .local v1, "impl":Landroid/window/SplashScreen$SplashScreenImpl;
    if-eqz v1, :cond_11

    invoke-static {v1}, Landroid/window/SplashScreen$SplashScreenImpl;->-$$Nest$fgetmExitAnimationListener(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/window/SplashScreen$OnExitAnimationListener;

    move-result-object v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    monitor-exit v0

    return v2

    .line 282
    .end local v1    # "impl":Landroid/window/SplashScreen$SplashScreenImpl;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist handOverSplashScreenView(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "splashScreenView"    # Landroid/window/SplashScreenView;

    .line 261
    invoke-direct {p0, p1, p2}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->dispatchOnExitAnimation(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    .line 262
    return-void
.end method

.method public blacklist tokenDestroyed(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 251
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_3
    invoke-direct {p0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->findImpl(Landroid/os/IBinder;)Landroid/window/SplashScreen$SplashScreenImpl;

    move-result-object v1

    .line 253
    .local v1, "impl":Landroid/window/SplashScreen$SplashScreenImpl;
    if-eqz v1, :cond_c

    .line 254
    invoke-direct {p0, v1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->removeImpl(Landroid/window/SplashScreen$SplashScreenImpl;)V

    .line 256
    .end local v1    # "impl":Landroid/window/SplashScreen$SplashScreenImpl;
    :cond_c
    monitor-exit v0

    .line 257
    return-void

    .line 256
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
