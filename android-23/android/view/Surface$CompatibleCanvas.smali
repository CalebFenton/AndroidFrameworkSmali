.class final Landroid/view/Surface$CompatibleCanvas;
.super Landroid/graphics/Canvas;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompatibleCanvas"
.end annotation


# instance fields
.field private mOrigMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/view/Surface;


# direct methods
.method private constructor <init>(Landroid/view/Surface;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 544
    iput-object p1, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #@2
    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    #@5
    .line 546
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    #@8
    .line 544
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/Surface;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;)V

    #@3
    return-void
.end method


# virtual methods
.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "m"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 564
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    #@3
    .line 565
    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 566
    new-instance v0, Landroid/graphics/Matrix;

    #@9
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    #@e
    .line 568
    :cond_0
    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    #@10
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@13
    .line 563
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 550
    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #@2
    invoke-static {v1}, Landroid/view/Surface;->-get0(Landroid/view/Surface;)Landroid/graphics/Matrix;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 553
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    #@f
    .line 549
    :goto_0
    return-void

    #@10
    .line 550
    :cond_1
    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    #@12
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 555
    new-instance v0, Landroid/graphics/Matrix;

    #@1a
    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #@1c
    invoke-static {v1}, Landroid/view/Surface;->-get0(Landroid/view/Surface;)Landroid/graphics/Matrix;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@23
    .line 556
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    #@26
    .line 557
    invoke-super {p0, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    #@29
    goto :goto_0
.end method
