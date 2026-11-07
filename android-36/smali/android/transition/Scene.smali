.class public final Landroid/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;

.field greylist-max-p mEnterAction:Ljava/lang/Runnable;

.field greylist-max-p mExitAction:Ljava/lang/Runnable;

.field private greylist-max-o mLayout:Landroid/view/View;

.field private greylist-max-o mLayoutId:I

.field private greylist-max-o mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor whitelist <init>(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 90
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 91
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layoutId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 109
    iput-object p3, p0, Landroid/transition/Scene;->mContext:Landroid/content/Context;

    .line 110
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 111
    iput p2, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 112
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/View;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 125
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 126
    iput-object p2, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    .line 127
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 134
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 135
    iput-object p2, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    .line 136
    return-void
.end method

.method public static whitelist getCurrentScene(Landroid/view/ViewGroup;)Landroid/transition/Scene;
    .registers 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 219
    const v0, 0x10202bb

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Scene;

    return-object v0
.end method

.method public static whitelist getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;
    .registers 6
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "layoutId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 63
    const v0, 0x10204dc

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 65
    .local v1, "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/transition/Scene;>;"
    if-nez v1, :cond_14

    .line 66
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 67
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 69
    :cond_14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Scene;

    .line 70
    .local v0, "scene":Landroid/transition/Scene;
    if-eqz v0, :cond_1d

    .line 71
    return-object v0

    .line 73
    :cond_1d
    new-instance v2, Landroid/transition/Scene;

    invoke-direct {v2, p0, p1, p2}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    .line 74
    .end local v0    # "scene":Landroid/transition/Scene;
    .local v2, "scene":Landroid/transition/Scene;
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    return-object v2
.end method

.method static greylist-max-p setCurrentScene(Landroid/view/ViewGroup;Landroid/transition/Scene;)V
    .registers 3
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "scene"    # Landroid/transition/Scene;

    .line 206
    const v0, 0x10202bb

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 207
    return-void
.end method


# virtual methods
.method public whitelist enter()V
    .registers 4

    .line 177
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-gtz v0, :cond_8

    iget-object v0, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_28

    .line 179
    :cond_8
    invoke-virtual {p0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 181
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_21

    .line 182
    iget-object v0, p0, Landroid/transition/Scene;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/transition/Scene;->mLayoutId:I

    iget-object v2, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_28

    .line 184
    :cond_21
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 189
    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_31

    .line 190
    iget-object v0, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 193
    :cond_31
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Landroid/transition/Scene;->setCurrentScene(Landroid/view/ViewGroup;Landroid/transition/Scene;)V

    .line 194
    return-void
.end method

.method public whitelist exit()V
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroid/transition/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_11

    .line 158
    iget-object v0, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    .line 159
    iget-object v0, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 162
    :cond_11
    return-void
.end method

.method public whitelist getSceneRoot()Landroid/view/ViewGroup;
    .registers 2

    .line 146
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method greylist-max-o isCreatedFromLayoutResource()Z
    .registers 2

    .line 276
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist setEnterAction(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 240
    iput-object p1, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    .line 241
    return-void
.end method

.method public whitelist setExitAction(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 260
    iput-object p1, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    .line 261
    return-void
.end method
