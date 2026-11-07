.class Lcom/android/internal/app/PlatLogoActivity$2;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/PlatLogoActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .registers 11
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .line 123
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v0}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmStarfield(Lcom/android/internal/app/PlatLogoActivity;)Lcom/android/internal/app/PlatLogoActivity$Starfield;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->update(J)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v0}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmStarfield(Lcom/android/internal/app/PlatLogoActivity;)Lcom/android/internal/app/PlatLogoActivity$Starfield;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->getWarp()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x41700000    # 15.0f

    div-float/2addr v0, v1

    .line 125
    .local v0, "warpFrac":F
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmAnimationsEnabled(Lcom/android/internal/app/PlatLogoActivity;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 126
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmLogo(Lcom/android/internal/app/PlatLogoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v2}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmRandom(Lcom/android/internal/app/PlatLogoActivity;)Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v4}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmDp(Lcom/android/internal/app/PlatLogoActivity;)F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 127
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmLogo(Lcom/android/internal/app/PlatLogoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v2}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmRandom(Lcom/android/internal/app/PlatLogoActivity;)Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v3}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmDp(Lcom/android/internal/app/PlatLogoActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 129
    :cond_5b
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_69

    .line 130
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmRumble(Lcom/android/internal/app/PlatLogoActivity;)Lcom/android/internal/app/PlatLogoActivity$RumblePack;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->-$$Nest$mrumble(Lcom/android/internal/app/PlatLogoActivity$RumblePack;F)V

    .line 132
    :cond_69
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {v1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmLayout(Lcom/android/internal/app/PlatLogoActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 133
    return-void
.end method
