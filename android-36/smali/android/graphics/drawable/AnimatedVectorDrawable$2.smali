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
.field final synthetic blacklist this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .registers 2
    .param p1, "this$0"    # Landroid/graphics/drawable/AnimatedVectorDrawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1014
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1026
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimationCallbacks(Landroid/graphics/drawable/AnimatedVectorDrawable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1027
    .local v0, "tmpCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Animatable2$AnimationCallback;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1028
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_20

    .line 1029
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 1028
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1031
    .end local v2    # "i":I
    :cond_20
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1017
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$fgetmAnimationCallbacks(Landroid/graphics/drawable/AnimatedVectorDrawable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1018
    .local v0, "tmpCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Animatable2$AnimationCallback;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1019
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_20

    .line 1020
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 1019
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1022
    .end local v2    # "i":I
    :cond_20
    return-void
.end method
