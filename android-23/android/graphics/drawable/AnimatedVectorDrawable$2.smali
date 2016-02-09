.class Landroid/graphics/drawable/AnimatedVectorDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedVectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@0
    .prologue
    .line 677
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 689
    new-instance v2, Ljava/util/ArrayList;

    #@2
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@4
    invoke-static {v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Ljava/util/ArrayList;

    #@7
    move-result-object v3

    #@8
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b
    .line 690
    .local v2, "tmpCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Animatable2$AnimationCallback;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v1

    #@f
    .line 691
    .local v1, "size":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@12
    .line 692
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    #@18
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@1a
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    #@1d
    .line 691
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 688
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 680
    new-instance v2, Ljava/util/ArrayList;

    #@2
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@4
    invoke-static {v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Ljava/util/ArrayList;

    #@7
    move-result-object v3

    #@8
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b
    .line 681
    .local v2, "tmpCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Animatable2$AnimationCallback;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v1

    #@f
    .line 682
    .local v1, "size":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@12
    .line 683
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    #@18
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@1a
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    #@1d
    .line 682
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 679
    :cond_0
    return-void
.end method
