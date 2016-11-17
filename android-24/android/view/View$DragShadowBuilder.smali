.class public Landroid/view/View$DragShadowBuilder;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragShadowBuilder"
.end annotation


# instance fields
.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 20425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 20426
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@9
    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    #@b
    .line 20425
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 20413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 20414
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    #@a
    .line 20413
    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 20441
    iget-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    return-object v0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 20482
    iget-object v1, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .line 20483
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 20484
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@d
    .line 20481
    :goto_0
    return-void

    #@e
    .line 20486
    :cond_0
    const-string/jumbo v1, "View"

    #@11
    const-string/jumbo v2, "Asked to draw drag shadow but no view"

    #@14
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_0
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "outShadowSize"    # Landroid/graphics/Point;
    .param p2, "outShadowTouchPoint"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 20465
    iget-object v1, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .line 20466
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 20467
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@d
    move-result v1

    #@e
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@11
    move-result v2

    #@12
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    #@15
    .line 20468
    iget v1, p1, Landroid/graphics/Point;->x:I

    #@17
    div-int/lit8 v1, v1, 0x2

    #@19
    iget v2, p1, Landroid/graphics/Point;->y:I

    #@1b
    div-int/lit8 v2, v2, 0x2

    #@1d
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Point;->set(II)V

    #@20
    .line 20464
    :goto_0
    return-void

    #@21
    .line 20470
    :cond_0
    const-string/jumbo v1, "View"

    #@24
    const-string/jumbo v2, "Asked for drag thumb metrics but no view"

    #@27
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    goto :goto_0
.end method
