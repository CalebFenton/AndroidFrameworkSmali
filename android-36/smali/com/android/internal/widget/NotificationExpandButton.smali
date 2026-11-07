.class public Lcom/android/internal/widget/NotificationExpandButton;
.super Landroid/widget/FrameLayout;
.source "NotificationExpandButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mDefaultPillColor:I

.field private blacklist mDefaultTextColor:I

.field private blacklist mExpanded:Z

.field private blacklist mHighlightPillColor:I

.field private blacklist mHighlightTextColor:I

.field private blacklist mIconView:Landroid/widget/ImageView;

.field private blacklist mNumber:I

.field private blacklist mNumberView:Landroid/widget/TextView;

.field private blacklist mPillDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mPillView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationExpandButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    return-void
.end method

.method private blacklist shouldShowNumber()Z
    .registers 4

    .line 226
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 227
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    if-le v0, v2, :cond_d

    move v1, v2

    :cond_d
    return v1

    .line 229
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    if-nez v0, :cond_17

    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    if-le v0, v2, :cond_17

    move v1, v2

    :cond_17
    return v1
.end method

.method private blacklist updateColors()V
    .registers 3

    .line 206
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->shouldShowNumber()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 207
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightPillColor:I

    if-eqz v0, :cond_15

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightPillColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 210
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 211
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightTextColor:I

    if-eqz v0, :cond_49

    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_49

    .line 215
    :cond_28
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultPillColor:I

    if-eqz v0, :cond_37

    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultPillColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 218
    :cond_37
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 219
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    if-eqz v0, :cond_49

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    :cond_49
    :goto_49
    return-void
.end method

.method private blacklist updateExpandedState()V
    .registers 5

    .line 145
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    if-eqz v0, :cond_15

    .line 146
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 147
    const v0, 0x1080585

    .local v0, "drawableId":I
    goto :goto_11

    .line 149
    .end local v0    # "drawableId":I
    :cond_e
    const v0, 0x10803f7

    .line 151
    .restart local v0    # "drawableId":I
    :goto_11
    const v1, 0x10403b8

    .local v1, "contentDescriptionId":I
    goto :goto_25

    .line 153
    .end local v0    # "drawableId":I
    .end local v1    # "contentDescriptionId":I
    :cond_15
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 154
    const v0, 0x1080586

    .restart local v0    # "drawableId":I
    goto :goto_22

    .line 156
    .end local v0    # "drawableId":I
    :cond_1f
    const v0, 0x1080433

    .line 158
    .restart local v0    # "drawableId":I
    :goto_22
    const v1, 0x10403b7

    .line 160
    .restart local v1    # "contentDescriptionId":I
    :goto_25
    iget-object v2, p0, Lcom/android/internal/widget/NotificationExpandButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationExpandButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v2

    if-nez v2, :cond_44

    .line 165
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateNumber()V

    .line 167
    :cond_44
    return-void
.end method

.method private blacklist updateNumber()V
    .registers 4

    .line 170
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->shouldShowNumber()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 171
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_22

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x1040a59

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    .line 173
    :cond_22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_36
    nop

    .line 174
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    .end local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_4a

    .line 177
    :cond_43
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :goto_4a
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 182
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updatePadding()V

    .line 183
    return-void
.end method

.method private blacklist updatePadding()V
    .registers 7

    .line 186
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-nez v0, :cond_7

    .line 187
    return-void

    .line 193
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 195
    .local v0, "reducedPadding":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105027e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 197
    .local v1, "normalPadding":I
    iget-object v2, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillView:Landroid/widget/LinearLayout;

    .line 199
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    .line 200
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->shouldShowNumber()Z

    move-result v4

    if-eqz v4, :cond_2d

    move v4, v0

    goto :goto_2e

    :cond_2d
    move v4, v1

    :goto_2e
    iget-object v5, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillView:Landroid/widget/LinearLayout;

    .line 201
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    .line 197
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 203
    return-void
.end method


# virtual methods
.method public blacklist getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "clipToParent"    # Z

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 96
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x10202f7

    if-ne v1, v2, :cond_15

    .line 97
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    goto :goto_18

    .line 99
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 101
    :goto_18
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 3

    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 82
    const v0, 0x10202f5

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillView:Landroid/widget/LinearLayout;

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 84
    .local v0, "layeredPill":Landroid/graphics/drawable/LayerDrawable;
    const v1, 0x10202f6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mPillDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    const v1, 0x10202f4

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumberView:Landroid/widget/TextView;

    .line 86
    const v1, 0x10202f3

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationExpandButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mIconView:Landroid/widget/ImageView;

    .line 87
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 119
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 120
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public blacklist pointInView(FFF)Z
    .registers 7
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 110
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x10202f7

    if-ne v1, v2, :cond_13

    .line 112
    const/4 v1, 0x1

    return v1

    .line 114
    :cond_13
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->pointInView(FFF)Z

    move-result v1

    return v1
.end method

.method public blacklist setDefaultPillColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 246
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultPillColor:I

    .line 247
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 248
    return-void
.end method

.method public blacklist setDefaultTextColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 237
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mDefaultTextColor:I

    .line 238
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 239
    return-void
.end method

.method public blacklist setExpanded(Z)V
    .registers 2
    .param p1, "expanded"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 128
    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mExpanded:Z

    .line 129
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateExpandedState()V

    .line 130
    return-void
.end method

.method public blacklist setHighlightPillColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 264
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightPillColor:I

    .line 265
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 266
    return-void
.end method

.method public blacklist setHighlightTextColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 255
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mHighlightTextColor:I

    .line 256
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateColors()V

    .line 257
    return-void
.end method

.method public blacklist setNumber(I)V
    .registers 3
    .param p1, "number"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 274
    iget v0, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    if-eq v0, p1, :cond_9

    .line 275
    iput p1, p0, Lcom/android/internal/widget/NotificationExpandButton;->mNumber:I

    .line 276
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationExpandButton;->updateNumber()V

    .line 278
    :cond_9
    return-void
.end method

.method public blacklist setStartPadding(I)V
    .registers 5
    .param p1, "startPadding"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/widget/NotificationExpandButton;->setPaddingRelative(IIII)V

    .line 140
    return-void
.end method
