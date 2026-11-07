.class final Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
.super Ljava/lang/Object;
.source "InlineSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InlineSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InlineContentCallbackImpl"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mFirstContentReceived:Z

.field private final blacklist mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

.field private blacklist mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

.field private final blacklist mMainHandler:Landroid/os/Handler;

.field private blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private blacklist mSurfacePackageConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mView:Landroid/widget/inline/InlineContentView;


# direct methods
.method public static synthetic blacklist $r8$lambda$F6aU5UcDmToAqoeSDpD20bB6gZc(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->lambda$onLongClick$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Qz6bE-wbGOpxURv5FX7bSlD4hsQ(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->lambda$onContent$0(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UMqF0Nt-D5fxDLbf8vzhkmFfrwo(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->lambda$handleOnFirstContentReceived$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WIFfudgTCUYowel5YK_mrQltMOg(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->lambda$handleOnFirstContentReceived$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ieo1mTRFSWdMq6JP-8W91M-WOic(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->lambda$onClick$3()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlineTooltipUi(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)Lcom/android/internal/view/inline/InlineTooltipUi;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainHandler(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)Landroid/widget/inline/InlineContentView;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleGetSurfacePackage(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleGetSurfacePackage(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnSurfacePackageReleased(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleOnSurfacePackageReleased()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/view/inline/IInlineContentProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Lcom/android/internal/view/inline/InlineTooltipUi;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inlineContentProvider"    # Lcom/android/internal/view/inline/IInlineContentProvider;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "inlineTooltipUi"    # Lcom/android/internal/view/inline/InlineTooltipUi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/view/inline/IInlineContentProvider;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;",
            "Lcom/android/internal/view/inline/InlineTooltipUi;",
            ")V"
        }
    .end annotation

    .line 309
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/widget/inline/InlineContentView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Landroid/os/Handler;

    .line 256
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mFirstContentReceived:Z

    .line 310
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mContext:Landroid/content/Context;

    .line 311
    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    .line 312
    iput-object p3, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 313
    iput-object p4, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    .line 314
    iput-object p5, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    .line 315
    return-void
.end method

.method private blacklist getSurfacePackageUpdater()Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;
    .registers 2

    .line 425
    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$2;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    return-object v0
.end method

.method private blacklist handleGetSurfacePackage(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            ">;)V"
        }
    .end annotation

    .line 410
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControlViewHost$SurfacePackage;>;"
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_a

    .line 411
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_31

    .line 413
    :cond_a
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    .line 415
    :try_start_c
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-interface {v0}, Lcom/android/internal/view/inline/IInlineContentProvider;->requestSurfacePackage()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 420
    goto :goto_31

    .line 416
    :catch_12
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling getSurfacePackage(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestion"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 419
    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    .line 422
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void
.end method

.method private blacklist handleOnContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .registers 5
    .param p1, "content"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 326
    iget-boolean v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mFirstContentReceived:Z

    if-nez v0, :cond_b

    .line 327
    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleOnFirstContentReceived(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mFirstContentReceived:Z

    goto :goto_e

    .line 330
    :cond_b
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleOnSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 332
    :goto_e
    return-void
.end method

.method private blacklist handleOnFirstContentReceived(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .registers 6
    .param p1, "content"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 340
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 341
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_11

    .line 342
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_45

    .line 344
    :cond_11
    new-instance v0, Landroid/widget/inline/InlineContentView;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/inline/InlineContentView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    .line 345
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    if-eqz v0, :cond_28

    .line 346
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$1;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$1;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/inline/InlineContentView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 356
    :cond_28
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/inline/InlineContentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->getSurfacePackageUpdater()Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/inline/InlineContentView;->setChildSurfacePackageUpdater(Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;)V

    .line 358
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda4;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 360
    :goto_45
    return-void
.end method

.method private blacklist handleOnSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 5
    .param p1, "surfacePackage"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 368
    if-nez p1, :cond_3

    .line 369
    return-void

    .line 371
    :cond_3
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    if-nez v0, :cond_c

    goto :goto_22

    .line 381
    :cond_c
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 382
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_13

    .line 383
    return-void

    .line 385
    :cond_13
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_21

    .line 386
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    .line 389
    :cond_21
    return-void

    .line 373
    :cond_22
    :goto_22
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 375
    :try_start_25
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-interface {v0}, Lcom/android/internal/view/inline/IInlineContentProvider;->onSurfacePackageReleased()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b

    .line 378
    goto :goto_44

    .line 376
    :catch_2b
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling onSurfacePackageReleased(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestion"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_44
    return-void
.end method

.method private blacklist handleOnSurfacePackageReleased()V
    .registers 5

    .line 393
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 395
    :try_start_5
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-interface {v0}, Lcom/android/internal/view/inline/IInlineContentProvider;->onSurfacePackageReleased()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 398
    goto :goto_24

    .line 396
    :catch_b
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling onSurfacePackageReleased(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InlineSuggestion"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 404
    :cond_26
    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    .line 405
    return-void
.end method

.method private synthetic blacklist lambda$handleOnFirstContentReceived$1()V
    .registers 3

    .line 342
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$handleOnFirstContentReceived$2()V
    .registers 3

    .line 358
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$onClick$3()V
    .registers 2

    .line 444
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 445
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->callOnClick()Z

    .line 447
    :cond_11
    return-void
.end method

.method private synthetic blacklist lambda$onContent$0(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .registers 4
    .param p1, "content"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 320
    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleOnContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onLongClick$4()V
    .registers 2

    .line 453
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->hasOnLongClickListeners()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 454
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->performLongClick()Z

    .line 456
    :cond_11
    return-void
.end method


# virtual methods
.method public blacklist onClick()V
    .registers 3

    .line 443
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    return-void
.end method

.method public blacklist onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .registers 6
    .param p1, "content"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 320
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method

.method public blacklist onLongClick()V
    .registers 3

    .line 452
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    return-void
.end method
