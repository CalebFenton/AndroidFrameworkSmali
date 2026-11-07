.class Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;
.super Ljava/lang/Object;
.source "ConversationHeaderLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ConversationHeaderLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewInfo"
.end annotation


# instance fields
.field final blacklist mStartWidth:I

.field final blacklist mView:Landroid/view/View;

.field final blacklist mWeight:F

.field blacklist mWidth:I


# direct methods
.method constructor blacklist <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mView:Landroid/view/View;

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, p0, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWeight:F

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    iput v0, p0, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mStartWidth:I

    .line 178
    return-void
.end method
