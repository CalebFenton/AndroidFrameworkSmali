.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;
.super Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatableTransition"
.end annotation


# instance fields
.field private final greylist-max-o mA:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/Animatable;)V
    .registers 3
    .param p1, "a"    # Landroid/graphics/drawable/Animatable;

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable-IA;)V

    .line 254
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    .line 255
    return-void
.end method


# virtual methods
.method public greylist-max-o start()V
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 260
    return-void
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 265
    return-void
.end method
