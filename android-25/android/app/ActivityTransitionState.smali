.class Landroid/app/ActivityTransitionState;
.super Ljava/lang/Object;
.source "ActivityTransitionState.java"


# static fields
.field private static final ENTERING_SHARED_ELEMENTS:Ljava/lang/String; = "android:enteringSharedElements"

.field private static final EXITING_MAPPED_FROM:Ljava/lang/String; = "android:exitingMappedFrom"

.field private static final EXITING_MAPPED_TO:Ljava/lang/String; = "android:exitingMappedTo"


# instance fields
.field private mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

.field private mEnterActivityOptions:Landroid/app/ActivityOptions;

.field private mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

.field private mEnteringNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExitTransitionCoordinators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ExitTransitionCoordinator;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExitTransitionCoordinatorsKey:I

.field private mExitingFrom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExitingTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExitingToView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasExited:Z

.field private mIsEnterPostponed:Z

.field private mIsEnterTriggered:Z

.field private mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method static synthetic -get0(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ActivityTransitionState;)Landroid/app/ExitTransitionCoordinator;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/app/ActivityTransitionState;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/app/ActivityTransitionState;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 104
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    #@6
    .line 108
    return-void
.end method

.method private restoreExitedViews()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 276
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 277
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@7
    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    #@a
    .line 278
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@c
    .line 275
    :cond_0
    return-void
.end method

.method private restoreReenteringViews()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 283
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@7
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 284
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@f
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isCrossTask()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 282
    :cond_0
    :goto_0
    return-void

    #@16
    .line 285
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@18
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->forceViewsToAppear()V

    #@1b
    .line 286
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@1d
    .line 287
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@1f
    .line 288
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    #@21
    goto :goto_0
.end method

.method private startEnter()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 214
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@3
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 215
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 216
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@f
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@11
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@13
    .line 217
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    #@15
    .line 216
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/EnterTransitionCoordinator;->viewInstancesReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@18
    .line 226
    :goto_0
    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@1a
    .line 227
    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@1c
    .line 228
    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    #@1e
    .line 229
    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@20
    .line 213
    return-void

    #@21
    .line 219
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@23
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@25
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v0, v1, v2}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@2a
    goto :goto_0

    #@2b
    .line 222
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@2d
    invoke-virtual {v0, v4, v4}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@30
    .line 223
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@32
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getAllSharedElementNames()Ljava/util/ArrayList;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@38
    goto :goto_0
.end method


# virtual methods
.method public addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I
    .locals 5
    .param p1, "exitTransitionCoordinator"    # Landroid/app/ExitTransitionCoordinator;

    #@0
    .prologue
    .line 112
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 114
    new-instance v4, Landroid/util/SparseArray;

    #@6
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    #@9
    .line 113
    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@b
    .line 116
    :cond_0
    new-instance v3, Ljava/lang/ref/WeakReference;

    #@d
    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@10
    .line 118
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ExitTransitionCoordinator;>;"
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@15
    move-result v4

    #@16
    add-int/lit8 v0, v4, -0x1

    #@18
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@1a
    .line 120
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@22
    .line 121
    .local v2, "oldRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ExitTransitionCoordinator;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    if-nez v4, :cond_1

    #@28
    .line 122
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@2a
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->removeAt(I)V

    #@2d
    .line 118
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 125
    .end local v2    # "oldRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ExitTransitionCoordinator;>;"
    :cond_2
    iget v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    #@32
    add-int/lit8 v4, v1, 0x1

    #@34
    iput v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    #@36
    .line 126
    .local v1, "newKey":I
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@38
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@3b
    .line 127
    return v1
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 265
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@3
    .line 266
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@5
    .line 267
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@7
    .line 268
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    #@9
    .line 269
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@b
    .line 270
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@d
    .line 271
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@f
    .line 272
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@11
    .line 264
    return-void
.end method

.method public enterReady(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 176
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 177
    :cond_0
    return-void

    #@a
    .line 179
    :cond_1
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    #@d
    .line 180
    iput-boolean v1, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    #@f
    .line 181
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@11
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSharedElementNames()Ljava/util/ArrayList;

    #@14
    move-result-object v3

    #@15
    .line 182
    .local v3, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@17
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getResultReceiver()Landroid/os/ResultReceiver;

    #@1a
    move-result-object v2

    #@1b
    .line 183
    .local v2, "resultReceiver":Landroid/os/ResultReceiver;
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@1d
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isReturning()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 184
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    #@26
    .line 185
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@31
    .line 187
    :cond_2
    new-instance v0, Landroid/app/EnterTransitionCoordinator;

    #@33
    .line 188
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@35
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->isReturning()Z

    #@38
    move-result v4

    #@39
    .line 189
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@3b
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->isCrossTask()Z

    #@3e
    move-result v5

    #@3f
    move-object v1, p1

    #@40
    .line 187
    invoke-direct/range {v0 .. v5}, Landroid/app/EnterTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;ZZ)V

    #@43
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@45
    .line 190
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@47
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isCrossTask()Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_3

    #@4d
    .line 191
    new-instance v0, Ljava/util/ArrayList;

    #@4f
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@51
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getSharedElementNames()Ljava/util/ArrayList;

    #@54
    move-result-object v1

    #@55
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@58
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@5a
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    #@5c
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@5e
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getSharedElementNames()Ljava/util/ArrayList;

    #@61
    move-result-object v1

    #@62
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@65
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@67
    .line 195
    :cond_3
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    #@69
    if-nez v0, :cond_4

    #@6b
    .line 196
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    #@6e
    .line 175
    :cond_4
    return-void
.end method

.method public onResume(Landroid/app/Activity;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isTopOfTask"    # Z

    #@0
    .prologue
    .line 247
    if-nez p2, :cond_0

    #@2
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@4
    if-nez v0, :cond_1

    #@6
    .line 248
    :cond_0
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    #@9
    .line 249
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    #@c
    .line 244
    :goto_0
    return-void

    #@d
    .line 251
    :cond_1
    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    #@f
    new-instance v1, Landroid/app/ActivityTransitionState$1;

    #@11
    invoke-direct {v1, p0}, Landroid/app/ActivityTransitionState$1;-><init>(Landroid/app/ActivityTransitionState;)V

    #@14
    .line 260
    const-wide/16 v2, 0x3e8

    #@16
    .line 251
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@19
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 233
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    #@4
    .line 234
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 235
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@a
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->stop()V

    #@d
    .line 236
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@f
    .line 238
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 239
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@15
    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->stop()V

    #@18
    .line 240
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@1a
    .line 232
    :cond_1
    return-void
.end method

.method public postponeEnterTransition()V
    .locals 1

    #@0
    .prologue
    .line 201
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    #@3
    .line 200
    return-void
.end method

.method public readState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 131
    if-eqz p1, :cond_2

    #@2
    .line 132
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@8
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 133
    :cond_0
    const-string/jumbo v0, "android:enteringSharedElements"

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@17
    .line 135
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@19
    if-nez v0, :cond_2

    #@1b
    .line 136
    const-string/jumbo v0, "android:exitingMappedFrom"

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@24
    .line 137
    const-string/jumbo v0, "android:exitingMappedTo"

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@2d
    .line 130
    :cond_2
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 144
    const-string/jumbo v0, "android:enteringSharedElements"

    #@7
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@c
    .line 146
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 147
    const-string/jumbo v0, "android:exitingMappedFrom"

    #@13
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@18
    .line 148
    const-string/jumbo v0, "android:exitingMappedTo"

    #@1b
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@20
    .line 142
    :cond_1
    return-void
.end method

.method public setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 153
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@4
    move-result-object v1

    #@5
    .line 154
    .local v1, "window":Landroid/view/Window;
    if-nez v1, :cond_0

    #@7
    .line 155
    return-void

    #@8
    .line 158
    :cond_0
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@b
    .line 159
    const/16 v2, 0xd

    #@d
    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 160
    if-eqz p2, :cond_1

    #@15
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@17
    if-nez v2, :cond_1

    #@19
    .line 161
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@1b
    if-nez v2, :cond_1

    #@1d
    .line 162
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getAnimationType()I

    #@20
    move-result v2

    #@21
    const/4 v3, 0x5

    #@22
    if-ne v2, v3, :cond_1

    #@24
    .line 163
    iput-object p2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@26
    .line 164
    iput-boolean v4, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    #@28
    .line 165
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@2a
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isReturning()Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 166
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    #@33
    .line 167
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@35
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getResultCode()I

    #@38
    move-result v0

    #@39
    .line 168
    .local v0, "result":I
    if-eqz v0, :cond_1

    #@3b
    .line 169
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@3d
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getResultData()Landroid/content/Intent;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->onActivityReenter(ILandroid/content/Intent;)V

    #@44
    .line 152
    .end local v0    # "result":I
    :cond_1
    return-void
.end method

.method public startExitBackTransition(Landroid/app/Activity;)Z
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 293
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 294
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 296
    :cond_1
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    #@e
    if-nez v0, :cond_4

    #@10
    .line 297
    iput-boolean v7, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    #@12
    .line 298
    const/4 v10, 0x0

    #@13
    .line 299
    .local v10, "enterViewsTransition":Landroid/transition/Transition;
    const/4 v8, 0x0

    #@14
    .line 300
    .local v8, "decor":Landroid/view/ViewGroup;
    const/4 v9, 0x0

    #@15
    .line 301
    .local v9, "delayExitBack":Z
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 302
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@1b
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getEnterViewsTransition()Landroid/transition/Transition;

    #@1e
    move-result-object v10

    #@1f
    .line 303
    .local v10, "enterViewsTransition":Landroid/transition/Transition;
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@21
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@24
    move-result-object v8

    #@25
    .line 304
    .local v8, "decor":Landroid/view/ViewGroup;
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@27
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->cancelEnter()Z

    #@2a
    move-result v9

    #@2b
    .line 305
    .local v9, "delayExitBack":Z
    iput-object v5, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@2d
    .line 306
    if-eqz v10, :cond_2

    #@2f
    if-eqz v8, :cond_2

    #@31
    .line 307
    invoke-virtual {v10, v8}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    #@34
    .line 311
    .end local v8    # "decor":Landroid/view/ViewGroup;
    .end local v9    # "delayExitBack":Z
    .end local v10    # "enterViewsTransition":Landroid/transition/Transition;
    :cond_2
    new-instance v0, Landroid/app/ExitTransitionCoordinator;

    #@36
    .line 312
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@39
    move-result-object v2

    #@3a
    iget-object v3, p1, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    #@3c
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@3e
    move-object v1, p1

    #@3f
    move-object v6, v5

    #@40
    .line 311
    invoke-direct/range {v0 .. v7}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    #@43
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@45
    .line 314
    if-eqz v10, :cond_3

    #@47
    if-eqz v8, :cond_3

    #@49
    .line 315
    invoke-virtual {v10, v8}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    #@4c
    .line 317
    :cond_3
    if-eqz v9, :cond_5

    #@4e
    if-eqz v8, :cond_5

    #@50
    .line 318
    move-object v11, v8

    #@51
    .line 319
    .local v11, "finalDecor":Landroid/view/ViewGroup;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@54
    move-result-object v0

    #@55
    .line 320
    new-instance v1, Landroid/app/ActivityTransitionState$2;

    #@57
    invoke-direct {v1, p0, v11, p1}, Landroid/app/ActivityTransitionState$2;-><init>(Landroid/app/ActivityTransitionState;Landroid/view/ViewGroup;Landroid/app/Activity;)V

    #@5a
    .line 319
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@5d
    .line 335
    .end local v11    # "finalDecor":Landroid/view/ViewGroup;
    :cond_4
    :goto_0
    return v7

    #@5e
    .line 332
    :cond_5
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@60
    iget v1, p1, Landroid/app/Activity;->mResultCode:I

    #@62
    iget-object v2, p1, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    #@64
    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->startExit(ILandroid/content/Intent;)V

    #@67
    goto :goto_0
.end method

.method public startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 340
    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@3
    .line 341
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@6
    move-result-object v3

    #@7
    const/16 v4, 0xd

    #@9
    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 342
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@11
    if-nez v3, :cond_1

    #@13
    .line 343
    :cond_0
    return-void

    #@14
    .line 345
    :cond_1
    new-instance v0, Landroid/app/ActivityOptions;

    #@16
    invoke-direct {v0, p2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@19
    .line 346
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    #@1c
    move-result v3

    #@1d
    const/4 v4, 0x5

    #@1e
    if-ne v3, v4, :cond_2

    #@20
    .line 347
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getExitCoordinatorKey()I

    #@23
    move-result v2

    #@24
    .line 348
    .local v2, "key":I
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@29
    move-result v1

    #@2a
    .line 349
    .local v1, "index":I
    if-ltz v1, :cond_2

    #@2c
    .line 350
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@2e
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    check-cast v3, Ljava/lang/ref/WeakReference;

    #@34
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Landroid/app/ExitTransitionCoordinator;

    #@3a
    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@3c
    .line 351
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@3e
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    #@41
    .line 352
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@43
    if-eqz v3, :cond_2

    #@45
    .line 353
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@47
    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->getAcceptedNames()Ljava/util/ArrayList;

    #@4a
    move-result-object v3

    #@4b
    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@4d
    .line 354
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@4f
    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->getMappedNames()Ljava/util/ArrayList;

    #@52
    move-result-object v3

    #@53
    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@55
    .line 355
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@57
    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->copyMappedViews()Ljava/util/ArrayList;

    #@5a
    move-result-object v3

    #@5b
    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    #@5d
    .line 356
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@5f
    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    #@62
    .line 339
    .end local v1    # "index":I
    .end local v2    # "key":I
    :cond_2
    return-void
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    #@0
    .prologue
    .line 205
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 206
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    #@7
    .line 207
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 208
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    #@e
    .line 204
    :cond_0
    return-void
.end method
