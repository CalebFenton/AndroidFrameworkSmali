.class Lcom/android/internal/widget/ConversationLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConversationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ConversationLayout;->setIsImportantConversation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ConversationLayout;

.field final synthetic blacklist val$baseSize:I

.field final synthetic blacklist val$bg:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic blacklist val$bgSize:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;II)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/widget/ConversationLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 370
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout$1;->this$0:Lcom/android/internal/widget/ConversationLayout;

    iput-object p2, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$bg:Landroid/graphics/drawable/GradientDrawable;

    iput p3, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$baseSize:I

    iput p4, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$bgSize:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 381
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$bgSize:I

    iget v2, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$bgSize:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout$1;->this$0:Lcom/android/internal/widget/ConversationLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ConversationLayout;->-$$Nest$fgetmConversationIconBadgeBg(Lcom/android/internal/widget/ConversationLayout;)Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->invalidate()V

    .line 383
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$baseSize:I

    iget v2, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$baseSize:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout$1;->this$0:Lcom/android/internal/widget/ConversationLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ConversationLayout;->-$$Nest$fgetmConversationIconBadgeBg(Lcom/android/internal/widget/ConversationLayout;)Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->invalidate()V

    .line 376
    return-void
.end method
