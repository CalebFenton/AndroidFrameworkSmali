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
.field mSceneRoot:Landroid/view/ViewGroup;

.field mTransition:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/transition/Transition;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 244
    iput-object p1, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    #@5
    .line 245
    iput-object p2, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    #@7
    .line 243
    return-void
.end method

.method private removeListeners()V
    .locals 1

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@9
    .line 250
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    #@b
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@e
    .line 248
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 273
    invoke-direct {p0}, Landroid/transition/TransitionManager$MultiListener;->removeListeners()V

    #@5
    .line 276
    invoke-static {}, Landroid/transition/TransitionManager;->-get0()Ljava/util/ArrayList;

    #@8
    move-result-object v5

    #@9
    iget-object v6, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    #@b
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@e
    move-result v5

    #@f
    if-nez v5, :cond_0

    #@11
    .line 277
    return v8

    #@12
    .line 282
    :cond_0
    invoke-static {}, Landroid/transition/TransitionManager;->-wrap0()Landroid/util/ArrayMap;

    #@15
    move-result-object v4

    #@16
    .line 283
    .local v4, "runningTransitions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;"
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    #@18
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/ArrayList;

    #@1e
    .line 284
    .local v0, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    const/4 v1, 0x0

    #@1f
    .line 285
    .local v1, "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-nez v0, :cond_2

    #@21
    .line 286
    new-instance v0, Ljava/util/ArrayList;

    #@23
    .end local v0    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@26
    .line 287
    .restart local v0    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    #@28
    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 291
    .end local v1    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    #@2d
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    .line 292
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    #@32
    new-instance v6, Landroid/transition/TransitionManager$MultiListener$1;

    #@34
    invoke-direct {v6, p0, v4}, Landroid/transition/TransitionManager$MultiListener$1;-><init>(Landroid/transition/TransitionManager$MultiListener;Landroid/util/ArrayMap;)V

    #@37
    invoke-virtual {v5, v6}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@3a
    .line 300
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    #@3c
    iget-object v6, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    #@3e
    invoke-virtual {v5, v6, v7}, Landroid/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    #@41
    .line 301
    if-eqz v1, :cond_3

    #@43
    .line 302
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@46
    move-result-object v3

    #@47
    .local v3, "runningTransition$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_3

    #@4d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v2

    #@51
    check-cast v2, Landroid/transition/Transition;

    #@53
    .line 303
    .local v2, "runningTransition":Landroid/transition/Transition;
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    #@55
    invoke-virtual {v2, v5}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    #@58
    goto :goto_1

    #@59
    .line 288
    .end local v2    # "runningTransition":Landroid/transition/Transition;
    .end local v3    # "runningTransition$iterator":Ljava/util/Iterator;
    .restart local v1    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5c
    move-result v5

    #@5d
    if-lez v5, :cond_1

    #@5f
    .line 289
    new-instance v1, Ljava/util/ArrayList;

    #@61
    .end local v1    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@64
    .local v1, "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    goto :goto_0

    #@65
    .line 306
    .end local v1    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    :cond_3
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    #@67
    iget-object v6, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    #@69
    invoke-virtual {v5, v6}, Landroid/transition/Transition;->playTransition(Landroid/view/ViewGroup;)V

    #@6c
    .line 308
    return v8
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 254
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 259
    invoke-direct {p0}, Landroid/transition/TransitionManager$MultiListener;->removeListeners()V

    #@3
    .line 261
    invoke-static {}, Landroid/transition/TransitionManager;->-get0()Ljava/util/ArrayList;

    #@6
    move-result-object v3

    #@7
    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    #@9
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@c
    .line 262
    invoke-static {}, Landroid/transition/TransitionManager;->-wrap0()Landroid/util/ArrayMap;

    #@f
    move-result-object v3

    #@10
    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    #@12
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/util/ArrayList;

    #@18
    .line 263
    .local v2, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-eqz v2, :cond_0

    #@1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v3

    #@1e
    if-lez v3, :cond_0

    #@20
    .line 264
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    .local v1, "runningTransition$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_0

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/transition/Transition;

    #@30
    .line 265
    .local v0, "runningTransition":Landroid/transition/Transition;
    iget-object v3, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    #@32
    invoke-virtual {v0, v3}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    #@35
    goto :goto_0

    #@36
    .line 268
    .end local v0    # "runningTransition":Landroid/transition/Transition;
    .end local v1    # "runningTransition$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    #@38
    const/4 v4, 0x1

    #@39
    invoke-virtual {v3, v4}, Landroid/transition/Transition;->clearValues(Z)V

    #@3c
    .line 258
    return-void
.end method
