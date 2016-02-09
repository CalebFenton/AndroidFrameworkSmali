.class Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5$1;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;

    #@0
    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5$1;->this$2:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    #@0
    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/lang/Integer;

    #@6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    .line 285
    .local v0, "c":I
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5$1;->this$2:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;

    #@c
    iget-object v1, v1, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@e
    invoke-static {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get1(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    #@15
    .line 283
    return-void
.end method
