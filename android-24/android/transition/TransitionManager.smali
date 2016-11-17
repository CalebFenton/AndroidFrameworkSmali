.class public Landroid/transition/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TransitionManager$MultiListener;
    }
.end annotation


# static fields
.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static sDefaultTransition:Landroid/transition/Transition;

.field private static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/Transition;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field mScenePairTransitions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/transition/Scene;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/transition/Scene;",
            "Landroid/transition/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field mSceneTransitions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/transition/Scene;",
            "Landroid/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/ArrayList;
    .locals 1

    #@0
    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0()Landroid/util/ArrayMap;
    .locals 1

    #@0
    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 66
    const-string/jumbo v0, "TransitionManager"

    #@3
    sput-object v0, Landroid/transition/TransitionManager;->LOG_TAG:Ljava/lang/String;

    #@5
    .line 68
    new-instance v0, Landroid/transition/AutoTransition;

    #@7
    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    #@a
    sput-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    #@c
    .line 70
    const/4 v0, 0x0

    #@d
    new-array v0, v0, [Ljava/lang/String;

    #@f
    sput-object v0, Landroid/transition/TransitionManager;->EMPTY_STRINGS:[Ljava/lang/String;

    #@11
    .line 77
    new-instance v0, Ljava/lang/ThreadLocal;

    #@13
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@16
    .line 76
    sput-object v0, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    #@18
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    sput-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    #@1f
    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    #@a
    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 73
    iput-object v0, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    #@11
    .line 63
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 386
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@4
    .line 385
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 3
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 413
    sget-object v1, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 418
    sget-object v1, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 419
    if-nez p1, :cond_0

    #@16
    .line 420
    sget-object p1, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    #@18
    .line 422
    :cond_0
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@1b
    move-result-object v0

    #@1c
    .line 423
    .local v0, "transitionClone":Landroid/transition/Transition;
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@1f
    .line 424
    invoke-static {p0, v2}, Landroid/transition/Scene;->setCurrentScene(Landroid/view/View;Landroid/transition/Scene;)V

    #@22
    .line 425
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@25
    .line 412
    .end local v0    # "transitionClone":Landroid/transition/Transition;
    :cond_1
    return-void
.end method

.method private static changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .locals 4
    .param p0, "scene"    # Landroid/transition/Scene;
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    #@3
    move-result-object v1

    #@4
    .line 184
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    sget-object v3, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_2

    #@c
    .line 185
    sget-object v3, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    .line 187
    const/4 v2, 0x0

    #@12
    .line 188
    .local v2, "transitionClone":Landroid/transition/Transition;
    if-eqz p1, :cond_0

    #@14
    .line 189
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@17
    move-result-object v2

    #@18
    .line 190
    .local v2, "transitionClone":Landroid/transition/Transition;
    invoke-virtual {v2, v1}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    #@1b
    .line 193
    .end local v2    # "transitionClone":Landroid/transition/Transition;
    :cond_0
    invoke-static {v1}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    #@1e
    move-result-object v0

    #@1f
    .line 194
    .local v0, "oldScene":Landroid/transition/Scene;
    if-eqz v0, :cond_1

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 195
    invoke-virtual {v0}, Landroid/transition/Scene;->isCreatedFromLayoutResource()Z

    #@26
    move-result v3

    #@27
    .line 194
    if-eqz v3, :cond_1

    #@29
    .line 196
    const/4 v3, 0x1

    #@2a
    invoke-virtual {v2, v3}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    #@2d
    .line 199
    :cond_1
    invoke-static {v1, v2}, Landroid/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@30
    .line 201
    invoke-virtual {p0}, Landroid/transition/Scene;->enter()V

    #@33
    .line 203
    invoke-static {v1, v2}, Landroid/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@36
    .line 181
    .end local v0    # "oldScene":Landroid/transition/Scene;
    :cond_2
    return-void
.end method

.method public static endTransitions(Landroid/view/ViewGroup;)V
    .locals 5
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 435
    sget-object v4, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 437
    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v4, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Ljava/util/ArrayList;

    #@f
    .line 438
    .local v2, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-eqz v2, :cond_0

    #@11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    .line 434
    :cond_0
    return-void

    #@18
    .line 440
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1d
    .line 441
    .local v0, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v4

    #@21
    add-int/lit8 v1, v4, -0x1

    #@23
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@25
    .line 442
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Landroid/transition/Transition;

    #@2b
    .line 443
    .local v3, "transition":Landroid/transition/Transition;
    invoke-virtual {v3}, Landroid/transition/Transition;->end()V

    #@2e
    .line 441
    add-int/lit8 v1, v1, -0x1

    #@30
    goto :goto_0
.end method

.method public static getDefaultTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 104
    sget-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method private static getRunningTransitions()Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/Transition;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 209
    sget-object v2, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@8
    .line 210
    .local v0, "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;>;"
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    if-nez v2, :cond_1

    #@10
    .line 212
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    #@12
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@15
    .line 213
    .local v1, "transitions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@17
    .end local v0    # "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;>;"
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1a
    .line 215
    .restart local v0    # "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;>;"
    sget-object v2, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@1f
    .line 217
    .end local v1    # "transitions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroid/util/ArrayMap;

    #@25
    return-object v2
.end method

.method private getTransition(Landroid/transition/Scene;)Landroid/transition/Transition;
    .locals 5
    .param p1, "scene"    # Landroid/transition/Scene;

    #@0
    .prologue
    .line 152
    const/4 v3, 0x0

    #@1
    .line 153
    .local v3, "transition":Landroid/transition/Transition;
    invoke-virtual {p1}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    #@4
    move-result-object v1

    #@5
    .line 154
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    #@7
    .line 156
    invoke-static {v1}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    #@a
    move-result-object v0

    #@b
    .line 157
    .local v0, "currScene":Landroid/transition/Scene;
    if-eqz v0, :cond_0

    #@d
    .line 158
    iget-object v4, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/util/ArrayMap;

    #@15
    .line 159
    .local v2, "sceneTransitionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/transition/Scene;Landroid/transition/Transition;>;"
    if-eqz v2, :cond_0

    #@17
    .line 160
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    .end local v3    # "transition":Landroid/transition/Transition;
    check-cast v3, Landroid/transition/Transition;

    #@1d
    .line 161
    .local v3, "transition":Landroid/transition/Transition;
    if-eqz v3, :cond_0

    #@1f
    .line 162
    return-object v3

    #@20
    .line 167
    .end local v0    # "currScene":Landroid/transition/Scene;
    .end local v2    # "sceneTransitionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/transition/Scene;Landroid/transition/Transition;>;"
    .end local v3    # "transition":Landroid/transition/Transition;
    :cond_0
    iget-object v4, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Landroid/transition/Transition;

    #@28
    .line 168
    .restart local v3    # "transition":Landroid/transition/Transition;
    if-eqz v3, :cond_1

    #@2a
    .end local v3    # "transition":Landroid/transition/Transition;
    :goto_0
    return-object v3

    #@2b
    .restart local v3    # "transition":Landroid/transition/Transition;
    :cond_1
    sget-object v3, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    #@2d
    goto :goto_0
.end method

.method public static go(Landroid/transition/Scene;)V
    .locals 1
    .param p0, "scene"    # Landroid/transition/Scene;

    #@0
    .prologue
    .line 355
    sget-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    #@2
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    #@5
    .line 354
    return-void
.end method

.method public static go(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .locals 0
    .param p0, "scene"    # Landroid/transition/Scene;
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 373
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    #@3
    .line 372
    return-void
.end method

.method private static sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 222
    if-eqz p1, :cond_0

    #@2
    if-eqz p0, :cond_0

    #@4
    .line 223
    new-instance v0, Landroid/transition/TransitionManager$MultiListener;

    #@6
    invoke-direct {v0, p1, p0}, Landroid/transition/TransitionManager$MultiListener;-><init>(Landroid/transition/Transition;Landroid/view/ViewGroup;)V

    #@9
    .line 224
    .local v0, "listener":Landroid/transition/TransitionManager$MultiListener;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@c
    .line 225
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@13
    .line 221
    .end local v0    # "listener":Landroid/transition/TransitionManager$MultiListener;
    :cond_0
    return-void
.end method

.method private static sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 5
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 315
    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {v4, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Ljava/util/ArrayList;

    #@a
    .line 317
    .local v3, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-eqz v3, :cond_0

    #@c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v4

    #@10
    if-lez v4, :cond_0

    #@12
    .line 318
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v2

    #@16
    .local v2, "runningTransition$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/transition/Transition;

    #@22
    .line 319
    .local v1, "runningTransition":Landroid/transition/Transition;
    invoke-virtual {v1, p0}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    #@25
    goto :goto_0

    #@26
    .line 323
    .end local v1    # "runningTransition":Landroid/transition/Transition;
    .end local v2    # "runningTransition$iterator":Ljava/util/Iterator;
    :cond_0
    if-eqz p1, :cond_1

    #@28
    .line 324
    const/4 v4, 0x1

    #@29
    invoke-virtual {p1, p0, v4}, Landroid/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    #@2c
    .line 328
    :cond_1
    invoke-static {p0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    #@2f
    move-result-object v0

    #@30
    .line 329
    .local v0, "previousScene":Landroid/transition/Scene;
    if-eqz v0, :cond_2

    #@32
    .line 330
    invoke-virtual {v0}, Landroid/transition/Scene;->exit()V

    #@35
    .line 312
    :cond_2
    return-void
.end method


# virtual methods
.method public setDefaultTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 91
    sput-object p1, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    #@2
    .line 90
    return-void
.end method

.method public setTransition(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V
    .locals 2
    .param p1, "fromScene"    # Landroid/transition/Scene;
    .param p2, "toScene"    # Landroid/transition/Scene;
    .param p3, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 133
    iget-object v1, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/ArrayMap;

    #@8
    .line 134
    .local v0, "sceneTransitionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/transition/Scene;Landroid/transition/Transition;>;"
    if-nez v0, :cond_0

    #@a
    .line 135
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    .end local v0    # "sceneTransitionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/transition/Scene;Landroid/transition/Transition;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 136
    .restart local v0    # "sceneTransitionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/transition/Scene;Landroid/transition/Transition;>;"
    iget-object v1, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 138
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 132
    return-void
.end method

.method public setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .locals 1
    .param p1, "scene"    # Landroid/transition/Scene;
    .param p2, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 116
    return-void
.end method

.method public transitionTo(Landroid/transition/Scene;)V
    .locals 1
    .param p1, "scene"    # Landroid/transition/Scene;

    #@0
    .prologue
    .line 345
    invoke-direct {p0, p1}, Landroid/transition/TransitionManager;->getTransition(Landroid/transition/Scene;)Landroid/transition/Transition;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    #@7
    .line 342
    return-void
.end method
