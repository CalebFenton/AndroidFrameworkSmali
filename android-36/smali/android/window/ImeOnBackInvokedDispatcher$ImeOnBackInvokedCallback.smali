.class public Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
.super Ljava/lang/Object;
.source "ImeOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ImeOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImeOnBackInvokedCallback"
.end annotation


# instance fields
.field private final blacklist mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field private final blacklist mId:I

.field private final blacklist mPriority:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPriority(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I
    .registers 1

    iget p0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mPriority:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetId(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;)I
    .registers 1

    invoke-direct {p0}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->getId()I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/window/IOnBackInvokedCallback;II)V
    .registers 4
    .param p1, "iCallback"    # Landroid/window/IOnBackInvokedCallback;
    .param p2, "id"    # I
    .param p3, "priority"    # I

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    .line 260
    iput p2, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mId:I

    .line 261
    iput p3, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mPriority:I

    .line 262
    return-void
.end method

.method private blacklist getId()I
    .registers 2

    .line 315
    iget v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mId:I

    return v0
.end method


# virtual methods
.method public whitelist onBackCancelled()V
    .registers 4

    .line 308
    :try_start_0
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-interface {v0}, Landroid/window/IOnBackInvokedCallback;->onBackCancelled()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 311
    goto :goto_e

    .line 309
    :catch_6
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImeBackDispatcher"

    const-string v2, "Exception when invoking forwarded callback. e: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist onBackInvoked()V
    .registers 4

    .line 299
    :try_start_0
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-interface {v0}, Landroid/window/IOnBackInvokedCallback;->onBackInvoked()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 302
    goto :goto_e

    .line 300
    :catch_6
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImeBackDispatcher"

    const-string v2, "Exception when invoking forwarded callback. e: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist onBackProgressed(Landroid/window/BackEvent;)V
    .registers 12
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 283
    const-wide/16 v0, 0x0

    .line 284
    .local v0, "frameTime":J
    :try_start_2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackTimestampApi()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 285
    invoke-virtual {p1}, Landroid/window/BackEvent;->getFrameTimeMillis()J

    move-result-wide v2

    move-wide v0, v2

    move-wide v4, v0

    goto :goto_10

    .line 284
    :cond_f
    move-wide v4, v0

    .line 287
    .end local v0    # "frameTime":J
    .local v4, "frameTime":J
    :goto_10
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    new-instance v1, Landroid/window/BackMotionEvent;

    .line 288
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v3

    .line 289
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v6

    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result v8

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/window/BackMotionEvent;-><init>(FFJFZILandroid/view/RemoteAnimationTarget;)V

    .line 287
    invoke-interface {v0, v1}, Landroid/window/IOnBackInvokedCallback;->onBackProgressed(Landroid/window/BackMotionEvent;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2c} :catch_2d

    .line 293
    .end local v4    # "frameTime":J
    goto :goto_35

    .line 291
    :catch_2d
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImeBackDispatcher"

    const-string v2, "Exception when invoking forwarded callback. e: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_35
    return-void
.end method

.method public whitelist onBackStarted(Landroid/window/BackEvent;)V
    .registers 12
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 267
    const-wide/16 v0, 0x0

    .line 268
    .local v0, "frameTime":J
    :try_start_2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackTimestampApi()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 269
    invoke-virtual {p1}, Landroid/window/BackEvent;->getFrameTimeMillis()J

    move-result-wide v2

    move-wide v0, v2

    move-wide v4, v0

    goto :goto_10

    .line 268
    :cond_f
    move-wide v4, v0

    .line 271
    .end local v0    # "frameTime":J
    .local v4, "frameTime":J
    :goto_10
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    new-instance v1, Landroid/window/BackMotionEvent;

    .line 272
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v3

    .line 273
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v6

    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result v8

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/window/BackMotionEvent;-><init>(FFJFZILandroid/view/RemoteAnimationTarget;)V

    .line 271
    invoke-interface {v0, v1}, Landroid/window/IOnBackInvokedCallback;->onBackStarted(Landroid/window/BackMotionEvent;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2c} :catch_2d

    .line 277
    .end local v4    # "frameTime":J
    goto :goto_35

    .line 275
    :catch_2d
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImeBackDispatcher"

    const-string v2, "Exception when invoking forwarded callback. e: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_35
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImeCallback=ImeOnBackInvokedCallback@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->mIOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
