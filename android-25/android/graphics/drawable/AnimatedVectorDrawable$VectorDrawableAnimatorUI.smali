.class Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableAnimatorUI"
.end annotation


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsInfinite:Z

.field private mListenerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSet:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1002
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@6
    .line 1006
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    #@8
    .line 1007
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mIsInfinite:Z

    #@b
    .line 1010
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    .line 1009
    return-void
.end method

.method private invalidateOwningView()V
    .locals 1

    #@0
    .prologue
    .line 1140
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    #@5
    .line 1139
    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    #@0
    .prologue
    .line 1074
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->canReverse()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public end()V
    .locals 1

    #@0
    .prologue
    .line 1048
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1049
    return-void

    #@5
    .line 1051
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    #@a
    .line 1047
    return-void
.end method

.method public init(Landroid/animation/AnimatorSet;)V
    .locals 7
    .param p1, "set"    # Landroid/animation/AnimatorSet;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1015
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1017
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@7
    const-string/jumbo v2, "VectorDrawableAnimator cannot be re-initialized"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 1022
    :cond_0
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@14
    .line 1023
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@16
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    #@19
    move-result-wide v2

    #@1a
    const-wide/16 v4, -0x1

    #@1c
    cmp-long v1, v2, v4

    #@1e
    if-nez v1, :cond_2

    #@20
    const/4 v1, 0x1

    #@21
    :goto_0
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mIsInfinite:Z

    #@23
    .line 1026
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    #@25
    if-eqz v1, :cond_1

    #@27
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_3

    #@2f
    .line 1014
    :cond_1
    :goto_1
    return-void

    #@30
    .line 1023
    :cond_2
    const/4 v1, 0x0

    #@31
    goto :goto_0

    #@32
    .line 1027
    :cond_3
    const/4 v0, 0x0

    #@33
    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v1

    #@39
    if-ge v0, v1, :cond_4

    #@3b
    .line 1028
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@3d
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v1

    #@43
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    #@45
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@48
    .line 1027
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_2

    #@4b
    .line 1030
    :cond_4
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@50
    .line 1031
    iput-object v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    #@52
    goto :goto_1
.end method

.method public isInfinite()Z
    .locals 1

    #@0
    .prologue
    .line 1120
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mIsInfinite:Z

    #@2
    return v0
.end method

.method public isRunning()Z
    .locals 1

    #@0
    .prologue
    .line 1115
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    #@0
    .prologue
    .line 1110
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1103
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1104
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->invalidateOwningView()V

    #@f
    .line 1102
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    #@0
    .prologue
    .line 1125
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1126
    return-void

    #@5
    .line 1128
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    #@a
    .line 1124
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    #@0
    .prologue
    .line 1091
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1092
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1093
    return-void

    #@9
    .line 1095
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@e
    .line 1090
    :goto_0
    return-void

    #@f
    .line 1097
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@11
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    #@14
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 1056
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1057
    return-void

    #@5
    .line 1059
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->start()V

    #@8
    .line 1060
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@a
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    #@d
    .line 1055
    return-void
.end method

.method public resume()V
    .locals 1

    #@0
    .prologue
    .line 1133
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1134
    return-void

    #@5
    .line 1136
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    #@a
    .line 1132
    return-void
.end method

.method public reverse()V
    .locals 1

    #@0
    .prologue
    .line 1065
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1066
    return-void

    #@5
    .line 1068
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    #@a
    .line 1069
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->invalidateOwningView()V

    #@d
    .line 1064
    return-void
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    #@0
    .prologue
    .line 1079
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1080
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    #@f
    .line 1083
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 1078
    :goto_0
    return-void

    #@15
    .line 1085
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@17
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@1a
    goto :goto_0
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 1039
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1040
    :cond_0
    return-void

    #@d
    .line 1042
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    #@f
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@12
    .line 1043
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->invalidateOwningView()V

    #@15
    .line 1038
    return-void
.end method
