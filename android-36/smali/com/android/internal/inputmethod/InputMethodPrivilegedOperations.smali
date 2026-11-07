.class public final Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
.super Ljava/lang/Object;
.source "InputMethodPrivilegedOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodPrivilegedOperations"


# instance fields
.field private final blacklist mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;-><init>(Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations-IA;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    return-void
.end method


# virtual methods
.method public blacklist applyImeVisibilityAsync(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 7
    .param p1, "showOrHideInputToken"    # Landroid/os/IBinder;
    .param p2, "setVisible"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 444
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 445
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    const/16 v1, 0x2e

    if-nez v0, :cond_12

    .line 446
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 448
    return-void

    .line 450
    :cond_12
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 453
    :try_start_19
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->applyImeVisibilityAsync(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1e

    .line 456
    nop

    .line 457
    return-void

    .line 454
    :catch_1e
    move-exception v1

    .line 455
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 7
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 194
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 195
    return-object v1

    .line 198
    :cond_a
    :try_start_a
    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 199
    .local v2, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/IBinder;>;"
    invoke-interface {v0, p1, p2, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 200
    invoke-static {v2}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return-object v1

    .line 201
    .end local v2    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/IBinder;>;"
    :catch_1d
    move-exception v2

    .line 205
    .local v2, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public blacklist hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V
    .registers 7
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "flags"    # I
    .param p3, "reason"    # I

    .line 296
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 297
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    const/16 v1, 0x2e

    if-nez v0, :cond_12

    .line 298
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 300
    return-void

    .line 302
    :cond_12
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 304
    :try_start_19
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 305
    .local v1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/internal/infra/AndroidFuture;)V

    .line 306
    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_26

    .line 309
    nop

    .line 310
    .end local v1    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void

    .line 307
    :catch_26
    move-exception v1

    .line 308
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist notifyUserActionAsync()V
    .registers 4

    .line 419
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 420
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_9

    .line 421
    return-void

    .line 424
    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->notifyUserActionAsync()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 427
    nop

    .line 428
    return-void

    .line 425
    :catch_e
    move-exception v1

    .line 426
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist onImeSwitchButtonClickFromClient(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 403
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 404
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_9

    .line 405
    return-void

    .line 408
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->onImeSwitchButtonClickFromClient(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 411
    nop

    .line 412
    return-void

    .line 409
    :catch_e
    move-exception v1

    .line 410
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist onStylusHandwritingReady(II)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "pid"    # I

    .line 464
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 465
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_9

    .line 466
    return-void

    .line 469
    :cond_9
    :try_start_9
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->onStylusHandwritingReady(II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 472
    nop

    .line 473
    return-void

    .line 470
    :catch_e
    move-exception v1

    .line 471
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist reportFullscreenModeAsync(Z)V
    .registers 5
    .param p1, "fullscreen"    # Z

    .line 216
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 217
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_9

    .line 218
    return-void

    .line 221
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->reportFullscreenModeAsync(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 224
    nop

    .line 225
    return-void

    .line 222
    :catch_e
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist reportStartInputAsync(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "startInputToken"    # Landroid/os/IBinder;

    .line 134
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 135
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_9

    .line 136
    return-void

    .line 139
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->reportStartInputAsync(Landroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 142
    nop

    .line 143
    return-void

    .line 140
    :catch_e
    move-exception v1

    .line 141
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist resetStylusHandwriting(I)V
    .registers 5
    .param p1, "requestId"    # I

    .line 481
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 482
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_9

    .line 483
    return-void

    .line 486
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->resetStylusHandwriting(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 489
    nop

    .line 490
    return-void

    .line 487
    :catch_e
    move-exception v1

    .line 488
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V
    .registers 3
    .param p1, "privOps"    # Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    .line 103
    const-string/jumbo v0, "privOps must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V

    .line 105
    return-void
.end method

.method public blacklist setHandwritingSurfaceNotTouchable(Z)V
    .registers 5
    .param p1, "notTouchable"    # Z

    .line 152
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 153
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_9

    .line 154
    return-void

    .line 157
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setHandwritingSurfaceNotTouchable(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 160
    nop

    .line 161
    return-void

    .line 158
    :catch_e
    move-exception v1

    .line 159
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setHandwritingTouchableRegion(Landroid/graphics/Region;)V
    .registers 5
    .param p1, "region"    # Landroid/graphics/Region;

    .line 171
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 172
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_9

    .line 173
    return-void

    .line 176
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setHandwritingTouchableRegion(Landroid/graphics/Region;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 179
    nop

    .line 180
    return-void

    .line 177
    :catch_e
    move-exception v1

    .line 178
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setImeWindowStatusAsync(II)V
    .registers 6
    .param p1, "vis"    # I
    .param p2, "backDisposition"    # I

    .line 116
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 117
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_9

    .line 118
    return-void

    .line 121
    :cond_9
    :try_start_9
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setImeWindowStatusAsync(II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 124
    nop

    .line 125
    return-void

    .line 122
    :catch_e
    move-exception v1

    .line 123
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setInputMethod(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 255
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_9

    .line 256
    return-void

    .line 259
    :cond_9
    :try_start_9
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 260
    .local v1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    invoke-interface {v0, p1, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 261
    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_16

    .line 264
    nop

    .line 265
    .end local v1    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void

    .line 262
    :catch_16
    move-exception v1

    .line 263
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 277
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 278
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_9

    .line 279
    return-void

    .line 282
    :cond_9
    :try_start_9
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 283
    .local v1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V

    .line 284
    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_16

    .line 287
    nop

    .line 288
    .end local v1    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void

    .line 285
    :catch_16
    move-exception v1

    .line 286
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist shouldOfferSwitchingToNextInputMethod()Z
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 386
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_a

    .line 387
    const/4 v1, 0x0

    return v1

    .line 390
    :cond_a
    :try_start_a
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 391
    .local v1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    .line 392
    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return v2

    .line 393
    .end local v1    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :catch_1d
    move-exception v1

    .line 394
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V
    .registers 7
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "flags"    # I
    .param p3, "reason"    # I

    .line 318
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 319
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    const/16 v1, 0x2e

    if-nez v0, :cond_12

    .line 320
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 322
    return-void

    .line 324
    :cond_12
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 326
    :try_start_19
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 327
    .local v1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/internal/infra/AndroidFuture;)V

    .line 328
    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_26

    .line 331
    nop

    .line 332
    .end local v1    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void

    .line 329
    :catch_26
    move-exception v1

    .line 330
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist switchKeyboardLayoutAsync(I)V
    .registers 5
    .param p1, "direction"    # I

    .line 497
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 498
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_9

    .line 499
    return-void

    .line 502
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->switchKeyboardLayoutAsync(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 505
    nop

    .line 506
    return-void

    .line 503
    :catch_e
    move-exception v1

    .line 504
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist switchToNextInputMethod(Z)Z
    .registers 5
    .param p1, "onlyCurrentIme"    # Z

    .line 364
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 365
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_a

    .line 366
    const/4 v1, 0x0

    return v1

    .line 369
    :cond_a
    :try_start_a
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 370
    .local v1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-interface {v0, p1, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V

    .line 371
    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return v2

    .line 372
    .end local v1    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :catch_1d
    move-exception v1

    .line 373
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist switchToPreviousInputMethod()Z
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 342
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_a

    .line 343
    const/4 v1, 0x0

    return v1

    .line 346
    :cond_a
    :try_start_a
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 347
    .local v1, "value":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    .line 348
    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return v2

    .line 349
    .end local v1    # "value":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :catch_1d
    move-exception v1

    .line 350
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist updateStatusIconAsync(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconResId"    # I

    .line 235
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    .line 236
    .local v0, "ops":Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    if-nez v0, :cond_9

    .line 237
    return-void

    .line 240
    :cond_9
    :try_start_9
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 243
    nop

    .line 244
    return-void

    .line 241
    :catch_e
    move-exception v1

    .line 242
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
