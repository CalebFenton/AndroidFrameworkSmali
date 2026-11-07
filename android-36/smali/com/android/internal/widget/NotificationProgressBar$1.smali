.class Lcom/android/internal/widget/NotificationProgressBar$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "NotificationProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/NotificationProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/NotificationProgressBar;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/NotificationProgressBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/NotificationProgressBar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressBar$1;->this$0:Lcom/android/internal/widget/NotificationProgressBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar$1;->this$0:Lcom/android/internal/widget/NotificationProgressBar;

    invoke-static {v0}, Lcom/android/internal/widget/NotificationProgressBar;->-$$Nest$mshouldLoopIndeterminateAnimation(Lcom/android/internal/widget/NotificationProgressBar;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 173
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 175
    :cond_11
    return-void
.end method
