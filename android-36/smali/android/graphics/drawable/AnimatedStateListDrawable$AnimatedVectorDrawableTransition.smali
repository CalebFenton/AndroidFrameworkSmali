.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;
.super Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableTransition"
.end annotation


# instance fields
.field private final greylist-max-o mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final greylist-max-o mHasReversibleFlag:Z

.field private final greylist-max-o mReversed:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;ZZ)V
    .registers 5
    .param p1, "avd"    # Landroid/graphics/drawable/AnimatedVectorDrawable;
    .param p2, "reversed"    # Z
    .param p3, "hasReversibleFlag"    # Z

    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable-IA;)V

    .line 324
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 325
    iput-boolean p2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mReversed:Z

    .line 326
    iput-boolean p3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mHasReversibleFlag:Z

    .line 327
    return-void
.end method


# virtual methods
.method public greylist-max-o canReverse()Z
    .registers 2

    .line 334
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mHasReversibleFlag:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o reverse()V
    .registers 3

    .line 348
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 349
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reverse()V

    goto :goto_15

    .line 351
    :cond_c
    invoke-static {}, Landroid/graphics/drawable/AnimatedStateListDrawable;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t reverse, either the reversible is set to false, or the AnimatedVectorDrawable can\'t reverse"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_15
    return-void
.end method

.method public greylist-max-o start()V
    .registers 2

    .line 339
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mReversed:Z

    if-eqz v0, :cond_8

    .line 340
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->reverse()V

    goto :goto_d

    .line 342
    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 344
    :goto_d
    return-void
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 358
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 359
    return-void
.end method
