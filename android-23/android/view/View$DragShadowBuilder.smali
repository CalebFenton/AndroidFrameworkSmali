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
    .line 19478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 19479
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@9
    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    #@b
    .line 19478
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 19466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 19467
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    #@a
    .line 19466
    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 19494
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
    .line 19535
    iget-object v1, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .line 19536
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 19537
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@d
    .line 19534
    :goto_0
    return-void

    #@e
    .line 19539
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
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 19518
    iget-object v1, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .line 19519
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    .line 19520
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
    .line 19521
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
    .line 19517
    :goto_0
    return-void

    #@21
    .line 19523
    :cond_0
    const-string/jumbo v1, "View"

    #@24
    const-string/jumbo v2, "Asked for drag thumb metrics but no view"

    #@27
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    goto :goto_0
.end method
