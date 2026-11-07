.class final Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;
.super Ljava/lang/Object;
.source "NotificationActionListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationActionListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextViewInfo"
.end annotation


# instance fields
.field final blacklist mIsPriority:Z

.field final blacklist mTextLength:I

.field final blacklist mTextView:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    invoke-static {p1}, Lcom/android/internal/widget/NotificationActionListLayout;->-$$Nest$smisPriority(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    .line 496
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextLength:I

    .line 497
    iput-object p1, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextView:Landroid/widget/TextView;

    .line 498
    return-void
.end method


# virtual methods
.method blacklist needsRebuild()Z
    .registers 3

    .line 501
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextLength:I

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextView:Landroid/widget/TextView;

    .line 502
    invoke-static {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->-$$Nest$smisPriority(Landroid/view/View;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    if-eq v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 501
    :goto_1c
    return v0
.end method
