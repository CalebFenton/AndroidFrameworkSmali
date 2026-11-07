.class public Lcom/android/internal/widget/MessagingImageMessage;
.super Landroid/widget/ImageView;
.source "MessagingImageMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingMessage;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MessagingImageMessage"

.field private static final blacklist sInstancePool:Lcom/android/internal/widget/MessagingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/MessagingPool<",
            "Lcom/android/internal/widget/MessagingImageMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActualHeight:I

.field private blacklist mActualWidth:I

.field private blacklist mAspectRatio:F

.field private blacklist mDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mExtraSpacing:I

.field private blacklist mImageResolver:Lcom/android/internal/widget/ImageResolver;

.field private final blacklist mImageRounding:I

.field private blacklist mIsIsolated:Z

.field private final blacklist mIsolatedSize:I

.field private final blacklist mMaxImageHeight:I

.field private final blacklist mMinImageHeight:I

.field private final blacklist mPath:Landroid/graphics/Path;

.field private final blacklist mState:Lcom/android/internal/widget/MessagingMessageState;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/android/internal/widget/MessagingPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MessagingPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105025e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMinImageHeight:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMaxImageHeight:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105025f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    .line 86
    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMaxImageHeight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setMaxHeight(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsolatedSize:I

    .line 88
    return-void
.end method

.method static blacklist createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;Z)Lcom/android/internal/widget/MessagingMessage;
    .registers 9
    .param p0, "layout"    # Lcom/android/internal/widget/IMessagingLayout;
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;
    .param p2, "resolver"    # Lcom/android/internal/widget/ImageResolver;
    .param p3, "usePrecomputedText"    # Z

    .line 127
    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    .line 128
    .local v0, "messagingLinearLayout":Lcom/android/internal/widget/MessagingLinearLayout;
    sget-object v1, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingPool;->acquire()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingImageMessage;

    .line 129
    .local v1, "createdMessage":Lcom/android/internal/widget/MessagingImageMessage;
    const/4 v2, 0x0

    if-nez v1, :cond_27

    .line 130
    nop

    .line 131
    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 130
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 131
    const v4, 0x10900f0

    invoke-virtual {v3, v4, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/widget/MessagingImageMessage;

    .line 135
    sget-object v3, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MessagingImageMessage;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 137
    :cond_27
    invoke-direct {v1, p2}, Lcom/android/internal/widget/MessagingImageMessage;->setImageResolver(Lcom/android/internal/widget/ImageResolver;)V

    .line 139
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/MessagingImageMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z

    move-result v2

    .line 140
    .local v2, "populated":Z
    if-nez v2, :cond_38

    .line 141
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingImageMessage;->recycle()V

    .line 142
    invoke-static {p0, p1, p3}, Lcom/android/internal/widget/MessagingTextMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Z)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    return-object v3

    .line 144
    :cond_38
    return-object v1
.end method

.method public static blacklist dropCache()V
    .registers 1

    .line 207
    sget-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingPool;->clear()V

    .line 208
    return-void
.end method

.method private blacklist setImageResolver(Lcom/android/internal/widget/ImageResolver;)V
    .registers 2
    .param p1, "resolver"    # Lcom/android/internal/widget/ImageResolver;

    .line 155
    iput-object p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    .line 156
    return-void
.end method


# virtual methods
.method public blacklist finalizeInflate()V
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method public blacklist getActualHeight()I
    .registers 2

    .line 295
    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualHeight:I

    return v0
.end method

.method public blacklist getActualWidth()I
    .registers 2

    .line 286
    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualWidth:I

    return v0
.end method

.method public blacklist getConsumedLines()I
    .registers 2

    .line 277
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getExtraSpacing()I
    .registers 2

    .line 311
    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    return v0
.end method

.method public blacklist getMeasuredType()I
    .registers 7

    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 213
    const-string v0, "MessagingImageMessage"

    const-string v2, "getMeasuredType() after recycle()!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v1

    .line 217
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getMeasuredHeight()I

    move-result v0

    .line 219
    .local v0, "measuredHeight":I
    iget-boolean v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eqz v2, :cond_18

    .line 220
    iget v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsolatedSize:I

    .local v2, "minImageHeight":I
    goto :goto_1a

    .line 222
    .end local v2    # "minImageHeight":I
    :cond_18
    iget v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMinImageHeight:I

    .line 224
    .restart local v2    # "minImageHeight":I
    :goto_1a
    const/4 v3, 0x1

    if-ge v0, v2, :cond_27

    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 225
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-eq v0, v4, :cond_27

    move v4, v3

    goto :goto_28

    :cond_27
    move v4, v1

    .line 226
    .local v4, "measuredTooSmall":Z
    :goto_28
    if-eqz v4, :cond_2c

    .line 227
    const/4 v1, 0x2

    return v1

    .line 229
    :cond_2c
    iget-boolean v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-nez v5, :cond_39

    iget-object v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-eq v0, v5, :cond_39

    .line 230
    return v3

    .line 232
    :cond_39
    return v1
.end method

.method public blacklist getRoundedRectPath()Landroid/graphics/Path;
    .registers 13

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v1

    .line 179
    .local v1, "right":I
    const/4 v2, 0x0

    .line 180
    .local v2, "top":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v3

    .line 181
    .local v3, "bottom":I
    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 182
    sub-int v4, v1, v0

    .line 183
    .local v4, "width":I
    iget v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    int-to-float v5, v5

    .line 184
    .local v5, "roundnessX":F
    iget v6, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    int-to-float v6, v6

    .line 185
    .local v6, "roundnessY":F
    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 186
    sub-int v7, v3, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 187
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v2

    add-float/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 188
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v2

    int-to-float v10, v0

    add-float/2addr v10, v5

    int-to-float v11, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 189
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    sub-float/2addr v8, v5

    int-to-float v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 190
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v2

    int-to-float v10, v1

    int-to-float v11, v2

    add-float/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 191
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v3

    sub-float/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v3

    int-to-float v10, v1

    sub-float/2addr v10, v5

    int-to-float v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 193
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    add-float/2addr v8, v5

    int-to-float v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 194
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v0

    int-to-float v11, v3

    sub-float/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 195
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 196
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    return-object v7
.end method

.method public blacklist getState()Lcom/android/internal/widget/MessagingMessageState;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getRoundedRectPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    mul-float/2addr v0, v1

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v1

    int-to-float v1, v1

    .line 164
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 166
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    div-float/2addr v1, v2

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v2

    int-to-float v2, v2

    .line 166
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 168
    .local v1, "height":I
    int-to-float v2, v1

    int-to-float v3, v0

    iget v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v1, v2

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 170
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 171
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v5, v2, v0

    add-int v6, v3, v1

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 174
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 269
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 271
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "bottom":I
    .local p2, "changed":Z
    .local p3, "left":I
    .local p4, "top":I
    .local p5, "right":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingImageMessage;->setActualWidth(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingImageMessage;->setActualHeight(I)V

    .line 273
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 244
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    .line 247
    const-string v0, "MessagingImageMessage"

    const-string v1, "onMeasure() after recycle()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setMeasuredDimension(II)V

    .line 249
    return-void

    .line 252
    :cond_13
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eqz v0, :cond_23

    .line 254
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 255
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 254
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MessagingImageMessage;->setMeasuredDimension(II)V

    goto :goto_42

    .line 259
    :cond_23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 261
    .local v0, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    iget v3, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 263
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MessagingImageMessage;->setMeasuredDimension(II)V

    .line 265
    .end local v0    # "width":I
    .end local v1    # "height":I
    :goto_42
    return-void
.end method

.method public blacklist recycle()V
    .registers 2

    .line 200
    invoke-super {p0}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    sget-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/MessagingPool;->release(Landroid/view/View;)Z

    .line 204
    return-void
.end method

.method public blacklist setActualHeight(I)V
    .registers 2
    .param p1, "actualHeight"    # I

    .line 290
    iput p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualHeight:I

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->invalidate()V

    .line 292
    return-void
.end method

.method public blacklist setActualWidth(I)V
    .registers 2
    .param p1, "actualWidth"    # I

    .line 281
    iput p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualWidth:I

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->invalidate()V

    .line 283
    return-void
.end method

.method public blacklist setIsolated(Z)V
    .registers 4
    .param p1, "isolated"    # Z

    .line 299
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eq v0, p1, :cond_18

    .line 300
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    .line 302
    nop

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 304
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_11

    const/4 v1, 0x0

    goto :goto_13

    :cond_11
    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    :goto_13
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_18
    return-void
.end method

.method public blacklist setMaxDisplayedLines(I)V
    .registers 2
    .param p1, "lines"    # I

    .line 240
    return-void
.end method

.method public blacklist setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z
    .registers 8
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;
    .param p2, "usePrecomputedText"    # Z

    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/MessagingMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z

    .line 101
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 102
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ImageResolver;->loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1b

    .line 103
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1b} :catch_42
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_1b} :catch_42

    :goto_1b
    nop

    .line 107
    .end local v1    # "uri":Landroid/net/Uri;
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    nop

    .line 108
    if-nez v2, :cond_20

    .line 109
    return v0

    .line 111
    :cond_20
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 112
    .local v1, "intrinsicHeight":I
    if-nez v1, :cond_2e

    .line 113
    const-string v3, "MessagingImageMessage"

    const-string v4, "Drawable with 0 intrinsic height was returned"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v0

    .line 116
    :cond_2e
    iput-object v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    .line 118
    if-nez p2, :cond_40

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->finalizeInflate()V

    .line 121
    :cond_40
    const/4 v0, 0x1

    return v0

    .line 104
    .end local v1    # "intrinsicHeight":I
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_42
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    return v0
.end method
