.class Landroid/app/ActivityTransitionState;
.super Ljava/lang/Object;
.source "ActivityTransitionState.java"


# static fields
.field private static final greylist-max-o EXITING_MAPPED_FROM:Ljava/lang/String; = "android:exitingMappedFrom"

.field private static final greylist-max-o EXITING_MAPPED_TO:Ljava/lang/String; = "android:exitingMappedTo"

.field private static final blacklist PENDING_EXIT_SHARED_ELEMENTS:Ljava/lang/String; = "android:pendingExitSharedElements"


# instance fields
.field private greylist-max-o mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

.field private blacklist mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

.field private greylist-max-o mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

.field private greylist-max-o mExitTransitionCoordinators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/ExitTransitionCoordinator;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mExitTransitionCoordinatorsKey:I

.field private greylist-max-o mExitingFrom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExitingTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExitingToView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHasExited:Z

.field private greylist-max-o mIsEnterPostponed:Z

.field private greylist-max-o mIsEnterTriggered:Z

.field private blacklist mPendingExitNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method public static synthetic blacklist $r8$lambda$v-gJDskuJB_atXUKetS9hEMmyUI(Landroid/app/ActivityTransitionState;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionState;->lambda$startExitBackTransition$0(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnterTransitionCoordinator(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnterTransitionCoordinator(Landroid/app/ActivityTransitionState;Landroid/app/EnterTransitionCoordinator;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPendingExitNames(Landroid/app/ActivityTransitionState;)Ljava/util/ArrayList;
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreExitedViews(Landroid/app/ActivityTransitionState;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreReenteringViews(Landroid/app/ActivityTransitionState;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    .line 112
    return-void
.end method

.method private blacklist getPendingExitNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 151
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-nez v0, :cond_18

    .line 153
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getPendingExitSharedElementNames()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 155
    :cond_18
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method private synthetic blacklist lambda$startExitBackTransition$0(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 351
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_9

    .line 352
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0, p1}, Landroid/app/ExitTransitionCoordinator;->startExit(Landroid/app/Activity;)V

    .line 354
    :cond_9
    return-void
.end method

.method private greylist-max-o restoreExitedViews()V
    .registers 2

    .line 305
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_c

    .line 306
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 309
    :cond_c
    return-void
.end method

.method private greylist-max-o restoreReenteringViews()V
    .registers 2

    .line 312
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 313
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isCrossTask()Z

    move-result v0

    if-nez v0, :cond_20

    .line 314
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->forceViewsToAppear()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 316
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 317
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 319
    :cond_20
    return-void
.end method

.method private greylist-max-o startEnter()V
    .registers 6

    .line 237
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 238
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 239
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/EnterTransitionCoordinator;->viewInstancesReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2a

    .line 242
    :cond_19
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2a

    .line 245
    :cond_23
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0, v1, v1}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 246
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 249
    :goto_2a
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 250
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 251
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 252
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 253
    return-void
.end method


# virtual methods
.method public greylist-max-o addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I
    .registers 6
    .param p1, "exitTransitionCoordinator"    # Landroid/app/ExitTransitionCoordinator;

    .line 115
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    .line 118
    :cond_b
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 120
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ExitTransitionCoordinator;>;"
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_18
    if-ltz v1, :cond_31

    .line 121
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    .line 122
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 123
    .local v2, "oldRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ExitTransitionCoordinator;>;"
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 124
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 120
    .end local v2    # "oldRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ExitTransitionCoordinator;>;"
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 127
    .end local v1    # "i":I
    :cond_31
    iget v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    .line 128
    .local v1, "newKey":I
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 129
    return v1
.end method

.method public greylist-max-o clear()V
    .registers 2

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 295
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 296
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 297
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 298
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 299
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 300
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 301
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    .line 302
    return-void
.end method

.method public greylist-max-o enterReady(Landroid/app/Activity;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;

    .line 196
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-eqz v0, :cond_69

    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    if-eqz v0, :cond_a

    move-object v3, p1

    goto :goto_6a

    .line 199
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    .line 201
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 202
    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getSharedElementNames()Ljava/util/ArrayList;

    move-result-object v5

    .line 203
    .local v5, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v4

    .line 204
    .local v4, "resultReceiver":Landroid/os/ResultReceiver;
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isReturning()Z

    move-result v1

    .line 205
    .local v1, "isReturning":Z
    if-eqz v1, :cond_32

    .line 206
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    .line 207
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_32
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    .line 210
    new-instance v2, Landroid/app/EnterTransitionCoordinator;

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 211
    invoke-virtual {v0}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isReturning()Z

    move-result v6

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 212
    invoke-virtual {v0}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isCrossTask()Z

    move-result v7

    move-object v3, p1

    .end local p1    # "activity":Landroid/app/Activity;
    .local v3, "activity":Landroid/app/Activity;
    invoke-direct/range {v2 .. v7}, Landroid/app/EnterTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;ZZ)V

    iput-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 213
    iget-object p1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {p1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isCrossTask()Z

    move-result p1

    if-eqz p1, :cond_61

    if-eqz v5, :cond_61

    .line 214
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 215
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 218
    :cond_61
    iget-boolean p1, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    if-nez p1, :cond_68

    .line 219
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    .line 221
    :cond_68
    return-void

    .line 196
    .end local v1    # "isReturning":Z
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v4    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v5    # "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_69
    move-object v3, p1

    .line 197
    .end local p1    # "activity":Landroid/app/Activity;
    .restart local v3    # "activity":Landroid/app/Activity;
    :goto_6a
    return-void
.end method

.method public greylist-max-o isTransitionRunning()Z
    .registers 3

    .line 365
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 366
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 367
    return v1

    .line 370
    :cond_e
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_1b

    .line 371
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 372
    return v1

    .line 375
    :cond_1b
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_28

    .line 376
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 377
    return v1

    .line 380
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onResume(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 271
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/app/Activity;->isTopOfTask()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_18

    .line 275
    :cond_b
    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/ActivityTransitionState$1;

    invoke-direct {v1, p0}, Landroid/app/ActivityTransitionState$1;-><init>(Landroid/app/ActivityTransitionState;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1e

    .line 272
    :cond_18
    :goto_18
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    .line 273
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    .line 291
    :goto_1e
    return-void
.end method

.method public blacklist onStop(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 256
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    .line 257
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 258
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    .line 259
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->stop()V

    .line 260
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 262
    :cond_12
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_1d

    .line 263
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0, p1}, Landroid/app/ExitTransitionCoordinator;->stop(Landroid/app/Activity;)V

    .line 264
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 266
    :cond_1d
    return-void
.end method

.method public greylist-max-o postponeEnterTransition()V
    .registers 2

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    .line 225
    return-void
.end method

.method public greylist-max-o readState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 133
    if-eqz p1, :cond_2a

    .line 134
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 135
    :cond_e
    const-string v0, "android:pendingExitSharedElements"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 137
    :cond_16
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-nez v0, :cond_2a

    .line 138
    const-string v0, "android:exitingMappedFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 139
    const-string v0, "android:exitingMappedTo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 142
    :cond_2a
    return-void
.end method

.method public greylist-max-o saveState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 159
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    .local v0, "pendingExitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_b

    .line 161
    const-string v1, "android:pendingExitSharedElements"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 163
    :cond_b
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    if-eqz v1, :cond_1d

    .line 164
    const-string v1, "android:exitingMappedFrom"

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 165
    const-string v1, "android:exitingMappedTo"

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 167
    :cond_1d
    return-void
.end method

.method public blacklist setEnterSceneTransitionInfo(Landroid/app/Activity;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "info"    # Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 171
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_7

    .line 172
    return-void

    .line 175
    :cond_7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 176
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_46

    if-eqz p2, :cond_46

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-nez v1, :cond_46

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-nez v1, :cond_46

    .line 179
    iput-object p2, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 180
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    .line 181
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->isReturning()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 182
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    .line 183
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getResultCode()I

    move-result v1

    .line 184
    .local v1, "result":I
    if-eqz v1, :cond_46

    .line 185
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v2}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getResultData()Landroid/content/Intent;

    move-result-object v2

    .line 186
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_43

    .line 187
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 189
    :cond_43
    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->onActivityReenter(ILandroid/content/Intent;)V

    .line 193
    .end local v1    # "result":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_46
    return-void
.end method

.method public greylist-max-o startExitBackTransition(Landroid/app/Activity;)Z
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;

    .line 322
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    move-result-object v4

    .line 323
    .local v4, "pendingExitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_6c

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_b

    goto :goto_6c

    .line 326
    :cond_b
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    const/4 v8, 0x1

    if-nez v0, :cond_6b

    .line 327
    iput-boolean v8, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "enterViewsTransition":Landroid/transition/Transition;
    const/4 v1, 0x0

    .line 330
    .local v1, "decor":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 331
    .local v2, "delayExitBack":Z
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v3, :cond_39

    .line 332
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/EnterTransitionCoordinator;->getEnterViewsTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 333
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 334
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/EnterTransitionCoordinator;->cancelEnter()Z

    move-result v2

    .line 335
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 336
    if-eqz v0, :cond_35

    if-eqz v1, :cond_35

    .line 337
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    .line 341
    :cond_35
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    goto :goto_3c

    .line 331
    :cond_39
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    .line 341
    .end local v0    # "enterViewsTransition":Landroid/transition/Transition;
    .end local v1    # "decor":Landroid/view/ViewGroup;
    .end local v2    # "delayExitBack":Z
    .local v9, "enterViewsTransition":Landroid/transition/Transition;
    .local v10, "decor":Landroid/view/ViewGroup;
    .local v11, "delayExitBack":Z
    :goto_3c
    new-instance v0, Landroid/app/ExitTransitionCoordinator;

    new-instance v1, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;

    invoke-direct {v1, p1}, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;-><init>(Landroid/app/Activity;)V

    .line 343
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p1, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 345
    if-eqz v9, :cond_58

    if-eqz v10, :cond_58

    .line 346
    invoke-virtual {v9, v10}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    .line 348
    :cond_58
    if-eqz v11, :cond_66

    if-eqz v10, :cond_66

    .line 349
    move-object v0, v10

    .line 350
    .local v0, "finalDecor":Landroid/view/ViewGroup;
    new-instance v1, Landroid/app/ActivityTransitionState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/ActivityTransitionState$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityTransitionState;Landroid/app/Activity;)V

    invoke-static {v10, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 355
    .end local v0    # "finalDecor":Landroid/view/ViewGroup;
    goto :goto_6b

    .line 356
    :cond_66
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0, p1}, Landroid/app/ExitTransitionCoordinator;->startExit(Landroid/app/Activity;)V

    .line 359
    .end local v9    # "enterViewsTransition":Landroid/transition/Transition;
    .end local v10    # "decor":Landroid/view/ViewGroup;
    .end local v11    # "delayExitBack":Z
    :cond_6b
    :goto_6b
    return v8

    .line 324
    :cond_6c
    :goto_6c
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 384
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 386
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    if-nez v0, :cond_17

    goto :goto_65

    .line 390
    :cond_17
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 391
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v1

    .line 392
    .local v1, "info":Landroid/app/ActivityOptions$SceneTransitionInfo;
    if-eqz v1, :cond_64

    .line 393
    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getExitCoordinatorKey()I

    move-result v2

    .line 394
    .local v2, "key":I
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 395
    .local v3, "index":I
    if-ltz v3, :cond_64

    .line 396
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ExitTransitionCoordinator;

    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 397
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 398
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v4, :cond_64

    .line 399
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/ExitTransitionCoordinator;->getAcceptedNames()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 400
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/ExitTransitionCoordinator;->getMappedNames()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 401
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/ExitTransitionCoordinator;->copyMappedViews()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 402
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    .line 406
    .end local v2    # "key":I
    .end local v3    # "index":I
    :cond_64
    return-void

    .line 388
    .end local v0    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v1    # "info":Landroid/app/ActivityOptions$SceneTransitionInfo;
    :cond_65
    :goto_65
    return-void
.end method

.method public greylist-max-o startPostponedEnterTransition()V
    .registers 2

    .line 228
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    if-eqz v0, :cond_e

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    .line 230
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_e

    .line 231
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    .line 234
    :cond_e
    return-void
.end method
