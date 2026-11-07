.class Landroid/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiListener"
.end annotation


# instance fields
.field greylist-max-o mSceneRoot:Landroid/view/ViewGroup;

.field greylist-max-o mTransition:Landroid/transition/Transition;

.field final greylist-max-o mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor greylist-max-o <init>(Landroid/transition/Transition;Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    .line 261
    iput-object p2, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 262
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 263
    return-void
.end method

.method private greylist-max-o removeListeners()V
    .registers 2

    .line 266
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 267
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_17

    .line 269
    :cond_e
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 271
    :goto_17
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 272
    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .registers 8

    .line 294
    invoke-direct {p0}, Landroid/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 297
    invoke-static {}, Landroid/transition/TransitionManager;->-$$Nest$sfgetsPendingTransitions()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 298
    return v1

    .line 303
    :cond_11
    invoke-static {}, Landroid/transition/TransitionManager;->-$$Nest$smgetRunningTransitions()Landroid/util/ArrayMap;

    move-result-object v0

    .line 304
    .local v0, "runningTransitions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;"
    iget-object v2, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 305
    .local v2, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    const/4 v3, 0x0

    .line 306
    .local v3, "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-nez v2, :cond_2c

    .line 307
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 308
    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 309
    :cond_2c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_38

    .line 310
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    .line 312
    :cond_38
    :goto_38
    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    new-instance v5, Landroid/transition/TransitionManager$MultiListener$1;

    invoke-direct {v5, p0, v0}, Landroid/transition/TransitionManager$MultiListener$1;-><init>(Landroid/transition/TransitionManager$MultiListener;Landroid/util/ArrayMap;)V

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 322
    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 323
    if-eqz v3, :cond_67

    .line 324
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition;

    .line 325
    .local v5, "runningTransition":Landroid/transition/Transition;
    iget-object v6, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    .line 326
    .end local v5    # "runningTransition":Landroid/transition/Transition;
    goto :goto_55

    .line 328
    :cond_67
    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->playTransition(Landroid/view/ViewGroup;)V

    .line 330
    return v1
.end method

.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 276
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 280
    invoke-direct {p0}, Landroid/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 282
    invoke-static {}, Landroid/transition/TransitionManager;->-$$Nest$sfgetsPendingTransitions()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    invoke-static {}, Landroid/transition/TransitionManager;->-$$Nest$smgetRunningTransitions()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 284
    .local v0, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_36

    .line 285
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    .line 286
    .local v2, "runningTransition":Landroid/transition/Transition;
    iget-object v3, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    .line 287
    .end local v2    # "runningTransition":Landroid/transition/Transition;
    goto :goto_24

    .line 289
    :cond_36
    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->clearValues(Z)V

    .line 290
    return-void
.end method
