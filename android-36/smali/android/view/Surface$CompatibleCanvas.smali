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
.field private greylist-max-o mOrigMatrix:Landroid/graphics/Matrix;

.field final synthetic blacklist this$0:Landroid/view/Surface;


# direct methods
.method private constructor blacklist <init>(Landroid/view/Surface;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1389
    iput-object p1, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    .line 1391
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Surface;Landroid/view/Surface-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public whitelist getMatrix(Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "m"    # Landroid/graphics/Matrix;

    .line 1409
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1410
    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_e

    .line 1411
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    .line 1413
    :cond_e
    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1414
    return-void
.end method

.method public whitelist setMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 1395
    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    invoke-static {v0}, Landroid/view/Surface;->-$$Nest$fgetmCompatibleMatrix(Landroid/view/Surface;)Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_27

    .line 1400
    :cond_15
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    invoke-static {v1}, Landroid/view/Surface;->-$$Nest$fgetmCompatibleMatrix(Landroid/view/Surface;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 1401
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 1402
    invoke-super {p0, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_2a

    .line 1398
    .end local v0    # "m":Landroid/graphics/Matrix;
    :cond_27
    :goto_27
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1404
    :goto_2a
    return-void
.end method
