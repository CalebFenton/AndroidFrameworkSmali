.class public final Landroid/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mEnterAction:Ljava/lang/Runnable;

.field mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    #@6
    .line 83
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@8
    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layoutId"    # I
    .param p3, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    #@6
    .line 102
    iput-object p3, p0, Landroid/transition/Scene;->mContext:Landroid/content/Context;

    #@8
    .line 103
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@a
    .line 104
    iput p2, p0, Landroid/transition/Scene;->mLayoutId:I

    #@c
    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/View;

    #@0
    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    #@6
    .line 118
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@8
    .line 119
    iput-object p2, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    #@a
    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    #@6
    .line 127
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@8
    .line 128
    iput-object p2, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    #@a
    .line 126
    return-void
.end method

.method static getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 209
    const v0, 0x102004f

    #@3
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/transition/Scene;

    #@9
    return-object v0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;
    .locals 3
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "layoutId"    # I
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const v2, 0x1020050

    #@3
    .line 56
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/util/SparseArray;

    #@9
    .line 58
    .local v1, "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/transition/Scene;>;"
    if-nez v1, :cond_0

    #@b
    .line 59
    new-instance v1, Landroid/util/SparseArray;

    #@d
    .end local v1    # "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/transition/Scene;>;"
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@10
    .line 60
    .restart local v1    # "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/transition/Scene;>;"
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    #@13
    .line 62
    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/transition/Scene;

    #@19
    .line 63
    .local v0, "scene":Landroid/transition/Scene;
    if-eqz v0, :cond_1

    #@1b
    .line 64
    return-object v0

    #@1c
    .line 66
    :cond_1
    new-instance v0, Landroid/transition/Scene;

    #@1e
    .end local v0    # "scene":Landroid/transition/Scene;
    invoke-direct {v0, p0, p1, p2}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    #@21
    .line 67
    .restart local v0    # "scene":Landroid/transition/Scene;
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@24
    .line 68
    return-object v0
.end method

.method static setCurrentScene(Landroid/view/View;Landroid/transition/Scene;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scene"    # Landroid/transition/Scene;

    #@0
    .prologue
    .line 198
    const v0, 0x102004f

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@6
    .line 197
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    #@0
    .prologue
    .line 170
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    #@2
    if-gtz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 172
    :cond_0
    invoke-virtual {p0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    #@f
    .line 174
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    #@11
    if-lez v0, :cond_3

    #@13
    .line 175
    iget-object v0, p0, Landroid/transition/Scene;->mContext:Landroid/content/Context;

    #@15
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/transition/Scene;->mLayoutId:I

    #@1b
    iget-object v2, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@1d
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@20
    .line 182
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 183
    iget-object v0, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    #@26
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@29
    .line 186
    :cond_2
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@2b
    invoke-static {v0, p0}, Landroid/transition/Scene;->setCurrentScene(Landroid/view/View;Landroid/transition/Scene;)V

    #@2e
    .line 167
    return-void

    #@2f
    .line 177
    :cond_3
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@31
    iget-object v1, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    #@33
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@36
    goto :goto_0
.end method

.method public exit()V
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@2
    invoke-static {v0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    #@5
    move-result-object v0

    #@6
    if-ne v0, p0, :cond_0

    #@8
    .line 151
    iget-object v0, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 152
    iget-object v0, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    #@e
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@11
    .line 149
    :cond_0
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    #@2
    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 268
    iget v1, p0, Landroid/transition/Scene;->mLayoutId:I

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 231
    iput-object p1, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    #@2
    .line 230
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 252
    iput-object p1, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    #@2
    .line 251
    return-void
.end method
