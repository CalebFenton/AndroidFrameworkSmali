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
.field private static final greylist-max-o EMPTY_STRINGS:[Ljava/lang/String;

.field private static greylist-max-o LOG_TAG:Ljava/lang/String;

.field private static greylist-max-o sDefaultTransition:Landroid/transition/Transition;

.field private static greylist sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/util/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/transition/Transition;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o mScenePairTransitions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/transition/Scene;",
            "Landroid/util/ArrayMap<",
            "Landroid/transition/Scene;",
            "Landroid/transition/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field greylist-max-o mSceneTransitions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/transition/Scene;",
            "Landroid/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsPendingTransitions()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetRunningTransitions()Landroid/util/ArrayMap;
    .registers 1

    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    const-string v0, "TransitionManager"

    sput-object v0, Landroid/transition/TransitionManager;->LOG_TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    sput-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/transition/TransitionManager;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    return-void
.end method

.method public static whitelist beginDelayedTransition(Landroid/view/ViewGroup;)V
    .registers 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 408
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 409
    return-void
.end method

.method public static whitelist beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .registers 4
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 435
    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 440
    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    if-nez p1, :cond_17

    .line 442
    sget-object p1, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    .line 444
    :cond_17
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    .line 445
    .local v0, "transitionClone":Landroid/transition/Transition;
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 446
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/transition/Scene;->setCurrentScene(Landroid/view/ViewGroup;Landroid/transition/Scene;)V

    .line 447
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 449
    .end local v0    # "transitionClone":Landroid/transition/Transition;
    :cond_25
    return-void
.end method

.method private static greylist-max-o changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .registers 6
    .param p0, "scene"    # Landroid/transition/Scene;
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 190
    invoke-virtual {p0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 191
    .local v0, "sceneRoot":Landroid/view/ViewGroup;
    sget-object v1, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 192
    invoke-static {v0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroid/transition/Scene;

    move-result-object v1

    .line 193
    .local v1, "oldScene":Landroid/transition/Scene;
    if-nez p1, :cond_1b

    .line 195
    if-eqz v1, :cond_17

    .line 196
    invoke-virtual {v1}, Landroid/transition/Scene;->exit()V

    .line 199
    :cond_17
    invoke-virtual {p0}, Landroid/transition/Scene;->enter()V

    goto :goto_3c

    .line 201
    :cond_1b
    sget-object v2, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v2

    .line 204
    .local v2, "transitionClone":Landroid/transition/Transition;
    invoke-virtual {v2, v0}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    .line 206
    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/transition/Scene;->isCreatedFromLayoutResource()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 207
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    .line 210
    :cond_33
    invoke-static {v0, v2}, Landroid/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 212
    invoke-virtual {p0}, Landroid/transition/Scene;->enter()V

    .line 214
    invoke-static {v0, v2}, Landroid/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 217
    .end local v1    # "oldScene":Landroid/transition/Scene;
    .end local v2    # "transitionClone":Landroid/transition/Transition;
    :cond_3c
    :goto_3c
    return-void
.end method

.method public static whitelist endTransitions(Landroid/view/ViewGroup;)V
    .registers 5
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 457
    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 459
    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 460
    .local v0, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 463
    .local v1, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_22
    if-ltz v2, :cond_30

    .line 464
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition;

    .line 465
    .local v3, "transition":Landroid/transition/Transition;
    invoke-virtual {v3, p0}, Landroid/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 463
    .end local v3    # "transition":Landroid/transition/Transition;
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .line 469
    .end local v1    # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    .end local v2    # "i":I
    :cond_30
    return-void
.end method

.method public static greylist-max-o getDefaultTransition()Landroid/transition/Transition;
    .registers 1

    .line 109
    sget-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method private static greylist-max-r getRunningTransitions()Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/transition/Transition;",
            ">;>;"
        }
    .end annotation

    .line 221
    sget-object v0, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 222
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 223
    .local v0, "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;>;"
    if-eqz v0, :cond_13

    .line 224
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 225
    .local v1, "transitions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;"
    if-eqz v1, :cond_13

    .line 226
    return-object v1

    .line 229
    .end local v1    # "transitions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;"
    :cond_13
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 230
    .restart local v1    # "transitions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;"
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 231
    .end local v0    # "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;>;"
    .local v2, "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;>;"
    sget-object v0, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 232
    return-object v1
.end method

.method public static whitelist go(Landroid/transition/Scene;)V
    .registers 2
    .param p0, "scene"    # Landroid/transition/Scene;

    .line 377
    sget-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 378
    return-void
.end method

.method public static whitelist go(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .registers 2
    .param p0, "scene"    # Landroid/transition/Scene;
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 395
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 396
    return-void
.end method

.method private static greylist-max-o sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .registers 4
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 237
    if-eqz p1, :cond_13

    if-eqz p0, :cond_13

    .line 238
    new-instance v0, Landroid/transition/TransitionManager$MultiListener;

    invoke-direct {v0, p1, p0}, Landroid/transition/TransitionManager$MultiListener;-><init>(Landroid/transition/Transition;Landroid/view/ViewGroup;)V

    .line 239
    .local v0, "listener":Landroid/transition/TransitionManager$MultiListener;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 240
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 242
    .end local v0    # "listener":Landroid/transition/TransitionManager$MultiListener;
    :cond_13
    return-void
.end method

.method private static greylist-max-o sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .registers 5
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 337
    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 339
    .local v0, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 340
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    .line 341
    .local v2, "runningTransition":Landroid/transition/Transition;
    invoke-virtual {v2, p0}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    .line 342
    .end local v2    # "runningTransition":Landroid/transition/Transition;
    goto :goto_16

    .line 345
    :cond_26
    if-eqz p1, :cond_2c

    .line 346
    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Landroid/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 350
    :cond_2c
    invoke-static {p0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroid/transition/Scene;

    move-result-object v1

    .line 351
    .local v1, "previousScene":Landroid/transition/Scene;
    if-eqz v1, :cond_35

    .line 352
    invoke-virtual {v1}, Landroid/transition/Scene;->exit()V

    .line 354
    :cond_35
    return-void
.end method


# virtual methods
.method public blacklist getTransition(Landroid/transition/Scene;)Landroid/transition/Transition;
    .registers 7
    .param p1, "scene"    # Landroid/transition/Scene;

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "transition":Landroid/transition/Transition;
    invoke-virtual {p1}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v1

    .line 161
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    if-eqz v1, :cond_21

    .line 163
    invoke-static {v1}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroid/transition/Scene;

    move-result-object v2

    .line 164
    .local v2, "currScene":Landroid/transition/Scene;
    if-eqz v2, :cond_21

    .line 165
    iget-object v3, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 166
    .local v3, "sceneTransitionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/transition/Scene;Landroid/transition/Transition;>;"
    if-eqz v3, :cond_21

    .line 167
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/transition/Transition;

    .line 168
    if-eqz v0, :cond_21

    .line 169
    return-object v0

    .line 174
    .end local v2    # "currScene":Landroid/transition/Scene;
    .end local v3    # "sceneTransitionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/transition/Scene;Landroid/transition/Transition;>;"
    :cond_21
    iget-object v2, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/transition/Transition;

    .line 175
    if-eqz v0, :cond_2e

    move-object v2, v0

    goto :goto_30

    :cond_2e
    sget-object v2, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    :goto_30
    return-object v2
.end method

.method public greylist-max-o setDefaultTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 96
    sput-object p1, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    .line 97
    return-void
.end method

.method public whitelist setTransition(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V
    .registers 6
    .param p1, "fromScene"    # Landroid/transition/Scene;
    .param p2, "toScene"    # Landroid/transition/Scene;
    .param p3, "transition"    # Landroid/transition/Transition;

    .line 138
    iget-object v0, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 139
    .local v0, "sceneTransitionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/transition/Scene;Landroid/transition/Transition;>;"
    if-nez v0, :cond_15

    .line 140
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 141
    iget-object v1, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_15
    invoke-virtual {v0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public whitelist setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .registers 4
    .param p1, "scene"    # Landroid/transition/Scene;
    .param p2, "transition"    # Landroid/transition/Transition;

    .line 122
    iget-object v0, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public whitelist transitionTo(Landroid/transition/Scene;)V
    .registers 3
    .param p1, "scene"    # Landroid/transition/Scene;

    .line 367
    invoke-virtual {p0, p1}, Landroid/transition/TransitionManager;->getTransition(Landroid/transition/Scene;)Landroid/transition/Transition;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 368
    return-void
.end method
