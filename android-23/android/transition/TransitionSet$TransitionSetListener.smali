.class Landroid/transition/TransitionSet$TransitionSetListener;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Landroid/transition/TransitionSet;


# direct methods
.method constructor <init>(Landroid/transition/TransitionSet;)V
    .locals 0
    .param p1, "transitionSet"    # Landroid/transition/TransitionSet;

    #@0
    .prologue
    .line 361
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@3
    .line 362
    iput-object p1, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    #@5
    .line 361
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 374
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    #@3
    iget v1, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    #@5
    add-int/lit8 v1, v1, -0x1

    #@7
    iput v1, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    #@9
    .line 375
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    #@b
    iget v0, v0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    #@d
    if-nez v0, :cond_0

    #@f
    .line 377
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    #@11
    iput-boolean v2, v0, Landroid/transition/TransitionSet;->mStarted:Z

    #@13
    .line 378
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    #@15
    invoke-virtual {v0}, Landroid/transition/TransitionSet;->end()V

    #@18
    .line 380
    :cond_0
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@1b
    .line 373
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    #@2
    iget-boolean v0, v0, Landroid/transition/TransitionSet;->mStarted:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 367
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    #@8
    invoke-virtual {v0}, Landroid/transition/TransitionSet;->start()V

    #@b
    .line 368
    iget-object v0, p0, Landroid/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/transition/TransitionSet;

    #@d
    const/4 v1, 0x1

    #@e
    iput-boolean v1, v0, Landroid/transition/TransitionSet;->mStarted:Z

    #@10
    .line 365
    :cond_0
    return-void
.end method
