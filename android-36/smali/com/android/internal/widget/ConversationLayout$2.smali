.class Lcom/android/internal/widget/ConversationLayout$2;
.super Ljava/lang/Object;
.source "ConversationLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ConversationLayout;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ConversationLayout;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ConversationLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/ConversationLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1510
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout$2;->this$0:Lcom/android/internal/widget/ConversationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .registers 5

    .line 1513
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout$2;->this$0:Lcom/android/internal/widget/ConversationLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ConversationLayout;->-$$Nest$fgetmAddedGroups(Lcom/android/internal/widget/ConversationLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingGroup;

    .line 1514
    .local v1, "group":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingGroup;->isShown()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1515
    goto :goto_a

    .line 1517
    :cond_1d
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->fadeIn(Landroid/view/View;)V

    .line 1518
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->fadeIn(Landroid/view/View;)V

    .line 1519
    nop

    .line 1520
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingGroup;->getHeight()I

    move-result v2

    sget-object v3, Lcom/android/internal/widget/ConversationLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1519
    invoke-static {v1, v2, v3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startLocalTranslationFrom(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    .line 1521
    .end local v1    # "group":Lcom/android/internal/widget/MessagingGroup;
    goto :goto_a

    .line 1522
    :cond_36
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout$2;->this$0:Lcom/android/internal/widget/ConversationLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ConversationLayout;->-$$Nest$fgetmAddedGroups(Lcom/android/internal/widget/ConversationLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1523
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout$2;->this$0:Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1524
    const/4 v0, 0x1

    return v0
.end method
