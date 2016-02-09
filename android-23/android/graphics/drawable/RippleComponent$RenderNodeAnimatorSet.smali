.class public Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
.super Ljava/lang/Object;
.source "RippleComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderNodeAnimatorSet"
.end annotation


# instance fields
.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 289
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    #@a
    .line 288
    return-void
.end method


# virtual methods
.method public add(Landroid/view/RenderNodeAnimator;)V
    .locals 1
    .param p1, "anim"    # Landroid/view/RenderNodeAnimator;

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 291
    return-void
.end method

.method public cancel()V
    .locals 4

    #@0
    .prologue
    .line 314
    iget-object v2, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    #@2
    .line 315
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RenderNodeAnimator;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 316
    .local v0, "N":I
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@9
    .line 317
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/view/RenderNodeAnimator;

    #@f
    .line 318
    .local v1, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->cancel()V

    #@12
    .line 316
    add-int/lit8 v3, v3, 0x1

    #@14
    goto :goto_0

    #@15
    .line 313
    .end local v1    # "anim":Landroid/view/RenderNodeAnimator;
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 295
    return-void
.end method

.method public end()V
    .locals 4

    #@0
    .prologue
    .line 323
    iget-object v2, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    #@2
    .line 324
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RenderNodeAnimator;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 325
    .local v0, "N":I
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@9
    .line 326
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/view/RenderNodeAnimator;

    #@f
    .line 327
    .local v1, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->end()V

    #@12
    .line 325
    add-int/lit8 v3, v3, 0x1

    #@14
    goto :goto_0

    #@15
    .line 322
    .end local v1    # "anim":Landroid/view/RenderNodeAnimator;
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 5

    #@0
    .prologue
    .line 332
    iget-object v2, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    #@2
    .line 333
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RenderNodeAnimator;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 334
    .local v0, "N":I
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@9
    .line 335
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/view/RenderNodeAnimator;

    #@f
    .line 336
    .local v1, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->isRunning()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 337
    const/4 v4, 0x1

    #@16
    return v4

    #@17
    .line 334
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 340
    .end local v1    # "anim":Landroid/view/RenderNodeAnimator;
    :cond_1
    const/4 v4, 0x0

    #@1b
    return v4
.end method

.method public start(Landroid/view/DisplayListCanvas;)V
    .locals 6
    .param p1, "target"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 300
    if-nez p1, :cond_0

    #@2
    .line 301
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "Hardware canvas must be non-null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 304
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    #@d
    .line 305
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RenderNodeAnimator;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    .line 306
    .local v0, "N":I
    const/4 v3, 0x0

    #@12
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@14
    .line 307
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/view/RenderNodeAnimator;

    #@1a
    .line 308
    .local v1, "anim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/graphics/Canvas;)V

    #@1d
    .line 309
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->start()V

    #@20
    .line 306
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_0

    #@23
    .line 299
    .end local v1    # "anim":Landroid/view/RenderNodeAnimator;
    :cond_1
    return-void
.end method
