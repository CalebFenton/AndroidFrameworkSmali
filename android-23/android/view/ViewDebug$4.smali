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
    .line 572
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
    .line 593
    aget-object v0, p1, v3

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 594
    aget-object v0, p1, v3

    #@9
    check-cast v0, Landroid/graphics/Canvas;

    #@b
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@e
    .line 596
    :cond_0
    aget-object v0, p1, v2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 597
    aget-object v0, p1, v2

    #@14
    check-cast v0, Landroid/graphics/Bitmap;

    #@16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    #@19
    .line 592
    :cond_1
    return-void
.end method

.method public pre()[Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 575
    iget-object v3, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    #@6
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 576
    iget-object v3, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    #@e
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@15
    move-result-object v2

    #@16
    .line 577
    :goto_0
    if-eqz v2, :cond_1

    #@18
    .line 578
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1a
    .line 579
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@1c
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@1e
    .line 578
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@21
    move-result-object v0

    #@22
    .line 580
    :goto_1
    if-eqz v0, :cond_2

    #@24
    new-instance v1, Landroid/graphics/Canvas;

    #@26
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@29
    .line 581
    :goto_2
    const/4 v3, 0x2

    #@2a
    new-array v3, v3, [Ljava/lang/Object;

    #@2c
    .line 582
    const/4 v4, 0x0

    #@2d
    aput-object v0, v3, v4

    #@2f
    const/4 v4, 0x1

    #@30
    aput-object v1, v3, v4

    #@32
    .line 581
    return-object v3

    #@33
    .line 576
    :cond_0
    const/4 v2, 0x0

    #@34
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    goto :goto_0

    #@35
    .line 579
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    const/4 v0, 0x0

    #@36
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    #@37
    .line 580
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    #@38
    .local v1, "canvas":Landroid/graphics/Canvas;
    goto :goto_2
.end method

.method public varargs run([Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 587
    aget-object v0, p1, v2

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 588
    iget-object v1, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    #@7
    aget-object v0, p1, v2

    #@9
    check-cast v0, Landroid/graphics/Canvas;

    #@b
    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@e
    .line 586
    :cond_0
    return-void
.end method
