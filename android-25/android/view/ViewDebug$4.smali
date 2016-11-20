.class final Landroid/view/ViewDebug$4;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/ViewDebug$ViewOperation",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "val$view"    # Landroid/view/View;

    #@0
    .prologue
    .line 578
    iput-object p1, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public varargs post([Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 599
    aget-object v0, p1, v3

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 600
    aget-object v0, p1, v3

    #@9
    check-cast v0, Landroid/graphics/Canvas;

    #@b
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@e
    .line 602
    :cond_0
    aget-object v0, p1, v2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 603
    aget-object v0, p1, v2

    #@14
    check-cast v0, Landroid/graphics/Bitmap;

    #@16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    #@19
    .line 598
    :cond_1
    return-void
.end method

.method public pre()[Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 581
    iget-object v3, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    #@3
    if-eqz v3, :cond_1

    #@5
    iget-object v3, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    #@7
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v3

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 582
    iget-object v3, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    #@f
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@16
    move-result-object v2

    #@17
    .line 583
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    if-eqz v2, :cond_0

    #@19
    .line 584
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1b
    .line 585
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@1d
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@1f
    .line 584
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@22
    move-result-object v0

    #@23
    .line 586
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v0, :cond_2

    #@25
    new-instance v1, Landroid/graphics/Canvas;

    #@27
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@2a
    .line 587
    :goto_1
    const/4 v3, 0x2

    #@2b
    new-array v3, v3, [Ljava/lang/Object;

    #@2d
    .line 588
    const/4 v4, 0x0

    #@2e
    aput-object v0, v3, v4

    #@30
    const/4 v4, 0x1

    #@31
    aput-object v1, v3, v4

    #@33
    .line 587
    return-object v3

    #@34
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    move-object v2, v0

    #@35
    .line 582
    goto :goto_0

    #@36
    .line 586
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "metrics":Landroid/util/DisplayMetrics;
    :cond_2
    const/4 v1, 0x0

    #@37
    .local v1, "canvas":Landroid/graphics/Canvas;
    goto :goto_1
.end method

.method public varargs run([Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 593
    aget-object v0, p1, v2

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 594
    iget-object v1, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    #@7
    aget-object v0, p1, v2

    #@9
    check-cast v0, Landroid/graphics/Canvas;

    #@b
    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@e
    .line 592
    :cond_0
    return-void
.end method
