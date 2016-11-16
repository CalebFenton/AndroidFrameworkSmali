.class Landroid/app/ActivityOptions$HideWindowListener;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HideWindowListener"
.end annotation


# instance fields
.field private final mExit:Landroid/app/ExitTransitionCoordinator;

.field private mSharedElementHidden:Z

.field private mSharedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionEnded:Z

.field private final mWaitingForTransition:Z

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator;)V
    .locals 5
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "exit"    # Landroid/app/ExitTransitionCoordinator;

    #@0
    .prologue
    const v4, 0x102005d

    #@3
    .line 1307
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@6
    .line 1308
    iput-object p1, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    #@8
    .line 1309
    iput-object p2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mExit:Landroid/app/ExitTransitionCoordinator;

    #@a
    .line 1310
    new-instance v2, Ljava/util/ArrayList;

    #@c
    iget-object v3, p2, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@e
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@11
    iput-object v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    #@13
    .line 1311
    iget-object v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    #@15
    invoke-virtual {v2}, Landroid/view/Window;->getExitTransition()Landroid/transition/Transition;

    #@18
    move-result-object v1

    #@19
    .line 1312
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v1, :cond_0

    #@1b
    .line 1313
    invoke-virtual {v1, p0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@1e
    .line 1314
    const/4 v2, 0x1

    #@1f
    iput-boolean v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    #@21
    .line 1318
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    #@23
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@26
    move-result-object v0

    #@27
    .line 1319
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_2

    #@29
    .line 1320
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    if-eqz v2, :cond_1

    #@2f
    .line 1321
    new-instance v2, Ljava/lang/IllegalStateException;

    #@31
    .line 1322
    const-string/jumbo v3, "Cannot start a transition while one is running"

    #@34
    .line 1321
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2

    #@38
    .line 1316
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    #@39
    iput-boolean v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    #@3b
    goto :goto_0

    #@3c
    .line 1324
    .restart local v0    # "decorView":Landroid/view/View;
    :cond_1
    invoke-virtual {v0, v4, p2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@3f
    .line 1307
    :cond_2
    return-void
.end method

.method private hideWhenDone()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1342
    iget-boolean v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElementHidden:Z

    #@3
    if-eqz v4, :cond_2

    #@5
    iget-boolean v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    #@7
    if-eqz v4, :cond_0

    #@9
    iget-boolean v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mTransitionEnded:Z

    #@b
    if-eqz v4, :cond_2

    #@d
    .line 1343
    :cond_0
    iget-object v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mExit:Landroid/app/ExitTransitionCoordinator;

    #@f
    invoke-virtual {v4}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    #@12
    .line 1344
    iget-object v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v2

    #@18
    .line 1345
    .local v2, "numSharedElements":I
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@1b
    .line 1346
    iget-object v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/view/View;

    #@23
    .line 1347
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    #@26
    .line 1345
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1349
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    #@2b
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@2e
    move-result-object v0

    #@2f
    .line 1350
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_2

    #@31
    .line 1352
    const v4, 0x102005d

    #@34
    .line 1351
    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@37
    .line 1353
    const/16 v4, 0x8

    #@39
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    #@3c
    .line 1341
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "numSharedElements":I
    :cond_2
    return-void
.end method


# virtual methods
.method public hideSharedElements()V
    .locals 1

    #@0
    .prologue
    .line 1337
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElementHidden:Z

    #@3
    .line 1338
    invoke-direct {p0}, Landroid/app/ActivityOptions$HideWindowListener;->hideWhenDone()V

    #@6
    .line 1336
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1330
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mTransitionEnded:Z

    #@3
    .line 1331
    invoke-direct {p0}, Landroid/app/ActivityOptions$HideWindowListener;->hideWhenDone()V

    #@6
    .line 1332
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@9
    .line 1329
    return-void
.end method
