.class public Landroid/window/TaskFragmentOrganizer;
.super Landroid/window/WindowOrganizer;
.source "TaskFragmentOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskFragmentOrganizer$TaskFragmentTransitionType;
    }
.end annotation


# static fields
.field public static final blacklist KEY_ERROR_CALLBACK_OP_TYPE:Ljava/lang/String; = "operation_type"

.field public static final blacklist KEY_ERROR_CALLBACK_TASK_FRAGMENT_INFO:Ljava/lang/String; = "task_fragment_info"

.field public static final blacklist KEY_ERROR_CALLBACK_THROWABLE:Ljava/lang/String; = "fragment_throwable"

.field public static final blacklist KEY_RESTORE_TASK_FRAGMENTS_INFO:Ljava/lang/String; = "key_restore_task_fragments_info"

.field public static final blacklist KEY_RESTORE_TASK_FRAGMENT_PARENT_INFO:Ljava/lang/String; = "key_restore_task_fragment_parent_info"

.field public static final blacklist TASK_FRAGMENT_TRANSIT_CHANGE:I = 0x6

.field public static final blacklist TASK_FRAGMENT_TRANSIT_CLOSE:I = 0x2

.field public static final blacklist TASK_FRAGMENT_TRANSIT_DRAG_RESIZE:I = 0x3f9

.field public static final blacklist TASK_FRAGMENT_TRANSIT_NONE:I = 0x0

.field public static final blacklist TASK_FRAGMENT_TRANSIT_OPEN:I = 0x1


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInterface:Landroid/window/ITaskFragmentOrganizer;

.field private final blacklist mToken:Landroid/window/TaskFragmentOrganizerToken;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 169
    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    .line 391
    new-instance v0, Landroid/window/TaskFragmentOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/TaskFragmentOrganizer$1;-><init>(Landroid/window/TaskFragmentOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    .line 398
    new-instance v0, Landroid/window/TaskFragmentOrganizerToken;

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOrganizerToken;-><init>(Landroid/window/ITaskFragmentOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mToken:Landroid/window/TaskFragmentOrganizerToken;

    .line 170
    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 171
    return-void
.end method

.method private blacklist getController()Landroid/window/ITaskFragmentOrganizerController;
    .registers 3

    .line 407
    :try_start_0
    invoke-static {}, Landroid/window/TaskFragmentOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 408
    :catch_9
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist isActivityEmbedded(Landroid/app/Activity;)Z
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 421
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-static {p0}, Landroid/window/ActivityWindowInfo;->getActivityWindowInfo(Landroid/app/Activity;)Landroid/window/ActivityWindowInfo;

    move-result-object v0

    .line 423
    .local v0, "activityWindowInfo":Landroid/window/ActivityWindowInfo;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/window/ActivityWindowInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public static blacklist putErrorInfoInBundle(Ljava/lang/Throwable;Landroid/window/TaskFragmentInfo;I)Landroid/os/Bundle;
    .registers 5
    .param p0, "exception"    # Ljava/lang/Throwable;
    .param p1, "info"    # Landroid/window/TaskFragmentInfo;
    .param p2, "opType"    # I

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v0, "errorBundle":Landroid/os/Bundle;
    const-string v1, "fragment_throwable"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 157
    if-eqz p1, :cond_12

    .line 158
    const-string/jumbo v1, "task_fragment_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    :cond_12
    const-string v1, "operation_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    return-object v0
.end method


# virtual methods
.method public blacklist applySystemTransaction(Landroid/window/WindowContainerTransaction;ILandroid/window/RemoteTransition;)V
    .registers 6
    .param p1, "wct"    # Landroid/window/WindowContainerTransaction;
    .param p2, "transitionType"    # I
    .param p3, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 368
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 369
    return-void

    .line 371
    :cond_7
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;

    .line 373
    :try_start_c
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    if-eqz p3, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-interface {v0, p1, p2, v1, p3}, Landroid/window/ITaskFragmentOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_1a

    .line 378
    nop

    .line 379
    return-void

    .line 376
    :catch_1a
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .registers 4
    .param p1, "wct"    # Landroid/window/WindowContainerTransaction;

    .line 328
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not allowed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist applyTransaction(Landroid/window/WindowContainerTransaction;IZ)V
    .registers 6
    .param p1, "wct"    # Landroid/window/WindowContainerTransaction;
    .param p2, "transitionType"    # I
    .param p3, "shouldApplyIndependently"    # Z

    .line 346
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 347
    return-void

    .line 349
    :cond_7
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;

    .line 351
    :try_start_c
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/window/ITaskFragmentOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_16

    .line 355
    nop

    .line 356
    return-void

    .line 353
    :catch_16
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getOrganizerToken()Landroid/window/TaskFragmentOrganizerToken;
    .registers 2

    .line 402
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mToken:Landroid/window/TaskFragmentOrganizerToken;

    return-object v0
.end method

.method public blacklist onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V
    .registers 7
    .param p1, "transactionToken"    # Landroid/os/IBinder;
    .param p2, "wct"    # Landroid/window/WindowContainerTransaction;
    .param p3, "transitionType"    # I
    .param p4, "shouldApplyIndependently"    # Z

    .line 313
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p2, v0}, Landroid/window/WindowContainerTransaction;->setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;

    .line 315
    :try_start_5
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/window/ITaskFragmentOrganizerController;->onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    .line 319
    nop

    .line 320
    return-void

    .line 317
    :catch_e
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onTransactionReady(Landroid/window/TaskFragmentTransaction;)V
    .registers 5
    .param p1, "transaction"    # Landroid/window/TaskFragmentTransaction;

    .line 387
    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getTransactionToken()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/window/TaskFragmentOrganizer;->onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V

    .line 389
    return-void
.end method

.method public blacklist registerOrganizer()V
    .registers 3

    .line 186
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/window/TaskFragmentOrganizer;->registerOrganizer(ZLandroid/os/Bundle;)V

    .line 187
    return-void
.end method

.method public blacklist registerOrganizer(Z)V
    .registers 3
    .param p1, "isSystemOrganizer"    # Z

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/window/TaskFragmentOrganizer;->registerOrganizer(ZLandroid/os/Bundle;)V

    .line 204
    return-void
.end method

.method public blacklist registerOrganizer(ZLandroid/os/Bundle;)V
    .registers 6
    .param p1, "isSystemOrganizer"    # Z
    .param p2, "outSavedState"    # Landroid/os/Bundle;

    .line 226
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    .line 227
    if-eqz p2, :cond_a

    move-object v2, p2

    goto :goto_f

    :cond_a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 226
    :goto_f
    invoke-interface {v0, v1, p1, v2}, Landroid/window/ITaskFragmentOrganizerController;->registerOrganizer(Landroid/window/ITaskFragmentOrganizer;ZLandroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 230
    nop

    .line 231
    return-void

    .line 228
    :catch_14
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 4
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 254
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1, p1}, Landroid/window/ITaskFragmentOrganizerController;->registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;Landroid/view/RemoteAnimationDefinition;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 257
    nop

    .line 258
    return-void

    .line 255
    :catch_b
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSavedState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Bundle;

    .line 282
    invoke-virtual {p1}, Landroid/os/Bundle;->getSize()I

    move-result v0

    const v1, 0x30d40

    if-gt v0, v1, :cond_1a

    .line 287
    :try_start_9
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1, p1}, Landroid/window/ITaskFragmentOrganizerController;->setSavedState(Landroid/window/ITaskFragmentOrganizer;Landroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_14

    .line 290
    nop

    .line 291
    return-void

    .line 288
    :catch_14
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 283
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved state too large, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterOrganizer()V
    .registers 3

    .line 239
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskFragmentOrganizerController;->unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 242
    nop

    .line 243
    return-void

    .line 240
    :catch_b
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterRemoteAnimations()V
    .registers 3

    .line 267
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskFragmentOrganizerController;->unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 270
    nop

    .line 271
    return-void

    .line 268
    :catch_b
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
