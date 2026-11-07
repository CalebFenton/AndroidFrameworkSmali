.class public Lcom/android/internal/widget/MessagingGroup;
.super Lcom/android/internal/widget/NotificationOptimizedLinearLayout;
.source "MessagingGroup.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingGroup$ImageDisplayLocation;
    }
.end annotation


# static fields
.field public static final blacklist IMAGE_DISPLAY_LOCATION_AT_END:I = 0x1

.field public static final blacklist IMAGE_DISPLAY_LOCATION_EXTERNAL:I = 0x2

.field public static final blacklist IMAGE_DISPLAY_LOCATION_INLINE:I

.field private static final blacklist sInstancePool:Lcom/android/internal/widget/MessagingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/MessagingPool<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAddedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAvatarIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mAvatarName:Ljava/lang/CharSequence;

.field private blacklist mAvatarSymbol:Ljava/lang/String;

.field private blacklist mAvatarView:Landroid/widget/ImageView;

.field private blacklist mCanHideSenderIfFirst:Z

.field private blacklist mClippingDisabled:Z

.field private blacklist mContentContainer:Landroid/widget/LinearLayout;

.field private blacklist mConversationAvatarSize:I

.field private blacklist mConversationContentStart:I

.field private blacklist mDisplaySize:Landroid/graphics/Point;

.field private blacklist mFirstLayout:Z

.field private blacklist mImageContainer:Landroid/view/ViewGroup;

.field private blacklist mImageDisplayLocation:I

.field private blacklist mIsCollapsed:Z

.field private blacklist mIsFirstGroupInLayout:Z

.field private blacklist mIsHidingAnimated:Z

.field private blacklist mIsInConversation:Z

.field private blacklist mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

.field private blacklist mLayoutColor:I

.field private blacklist mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private blacklist mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMessagingIconContainer:Landroid/view/ViewGroup;

.field private blacklist mNeedsGeneratedAvatar:Z

.field private blacklist mNonConversationAvatarSize:I

.field private blacklist mNonConversationContentStart:I

.field private blacklist mNonConversationPaddingStart:I

.field private blacklist mNotificationTextMarginTop:I

.field private blacklist mRequestedMaxDisplayedLines:I

.field private blacklist mSender:Landroid/app/Person;

.field private blacklist mSenderName:Ljava/lang/CharSequence;

.field private blacklist mSenderTextPaddingSingleLine:I

.field blacklist mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

.field private blacklist mSendingSpinner:Landroid/widget/ProgressBar;

.field private blacklist mSendingSpinnerContainer:Landroid/view/View;

.field private blacklist mSendingTextColor:I

.field private blacklist mShowingAvatar:Z

.field private blacklist mSingleLine:Z

.field private blacklist mTextColor:I


# direct methods
.method public static synthetic blacklist $r8$lambda$CDvi2J9_mK_SkZQU9ZS4mUDZGkU(Lcom/android/internal/widget/MessagingGroup;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->lambda$hideAnimated$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m2ZVOgQiFyryR5zNq_LOpHJ4YCo(Lcom/android/internal/widget/MessagingGroup;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingGroup;->lambda$removeGroupAnimated$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$n5AsO7zNzS_MtbzACdAJwedZLXk(Lcom/android/internal/widget/MessagingGroup;Lcom/android/internal/widget/MessagingMessage;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingGroup;->lambda$setMessages$3(Lcom/android/internal/widget/MessagingMessage;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAddedMessages(Lcom/android/internal/widget/MessagingGroup;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Lcom/android/internal/widget/MessagingPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MessagingPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingGroup;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mShowingAvatar:Z

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsCollapsed:Z

    .line 108
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/widget/MessagingGroup;->mRequestedMaxDisplayedLines:I

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    .line 123
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mShowingAvatar:Z

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsCollapsed:Z

    .line 108
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/widget/MessagingGroup;->mRequestedMaxDisplayedLines:I

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    .line 127
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mShowingAvatar:Z

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsCollapsed:Z

    .line 108
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/widget/MessagingGroup;->mRequestedMaxDisplayedLines:I

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mShowingAvatar:Z

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsCollapsed:Z

    .line 108
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/widget/MessagingGroup;->mRequestedMaxDisplayedLines:I

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    .line 137
    return-void
.end method

.method private blacklist calculateSendingTextColor()I
    .registers 6

    .line 240
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 241
    .local v0, "alphaValue":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502e7

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 243
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 244
    .local v1, "alpha":F
    iget v2, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    .line 245
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    .line 246
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    .line 247
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    .line 244
    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v2

    .line 248
    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    .line 244
    return v2
.end method

.method static blacklist createGroup(Lcom/android/internal/widget/MessagingLinearLayout;)Lcom/android/internal/widget/MessagingGroup;
    .registers 5
    .param p0, "layout"    # Lcom/android/internal/widget/MessagingLinearLayout;

    .line 261
    sget-object v0, Lcom/android/internal/widget/MessagingGroup;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingPool;->acquire()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    .line 262
    .local v0, "createdGroup":Lcom/android/internal/widget/MessagingGroup;
    if-nez v0, :cond_23

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 264
    invoke-static {}, Lcom/android/internal/widget/MessagingGroup;->getMessagingGroupLayoutResource()I

    move-result v2

    .line 263
    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    .line 266
    sget-object v1, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 268
    :cond_23
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;)V

    .line 269
    return-object v0
.end method

.method public static blacklist dropCache()V
    .registers 1

    .line 355
    sget-object v0, Lcom/android/internal/widget/MessagingGroup;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingPool;->clear()V

    .line 356
    return-void
.end method

.method private blacklist getDistanceFromParent(Landroid/view/View;Landroid/view/ViewGroup;)I
    .registers 8
    .param p1, "searchedView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "position":I
    move-object v1, p1

    .line 192
    .local v1, "view":Landroid/view/View;
    :goto_2
    if-eq v1, p2, :cond_19

    .line 193
    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 194
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_2

    .line 196
    :cond_19
    return v0
.end method

.method private static blacklist getMessagingGroupLayoutResource()I
    .registers 1

    .line 273
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 274
    const v0, 0x10900ba

    return v0

    .line 276
    :cond_a
    const v0, 0x10900ef

    return v0
.end method

.method private synthetic blacklist lambda$hideAnimated$2()V
    .registers 2

    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setIsHidingAnimated(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$removeGroupAnimated$1(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "endAction"    # Ljava/lang/Runnable;

    .line 332
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setAlpha(F)V

    .line 333
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setToLaidOutPosition(Landroid/view/View;)V

    .line 334
    if-eqz p1, :cond_d

    .line 335
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 337
    :cond_d
    return-void
.end method

.method static synthetic blacklist lambda$removeMessage$0(Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/internal/widget/MessagingMessage;)V
    .registers 3
    .param p0, "messageParent"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "messagingMessage"    # Lcom/android/internal/widget/MessagingMessage;

    .line 292
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 293
    invoke-interface {p2}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    .line 294
    return-void
.end method

.method private synthetic blacklist lambda$setMessages$3(Lcom/android/internal/widget/MessagingMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/internal/widget/MessagingMessage;

    .line 575
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist performRemoveAnimation(Landroid/view/View;ILjava/lang/Runnable;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "disappearTranslation"    # I
    .param p3, "endAction"    # Ljava/lang/Runnable;

    .line 345
    sget-object v0, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-static {p1, p2, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startLocalTranslationTo(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    .line 347
    invoke-static {p1, p3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method private blacklist removeFromParentIfDifferent(Lcom/android/internal/widget/MessagingMessage;Landroid/view/ViewGroup;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/internal/widget/MessagingMessage;
    .param p2, "newParent"    # Landroid/view/ViewGroup;

    .line 591
    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 592
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p2, :cond_1a

    .line 593
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_18

    .line 594
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 596
    :cond_18
    const/4 v1, 0x1

    return v1

    .line 598
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist setIsHidingAnimated(Z)V
    .registers 4
    .param p1, "isHiding"    # Z

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 466
    .local v0, "parent":Landroid/view/ViewParent;
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsHidingAnimated:Z

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->invalidate()V

    .line 468
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    .line 469
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 471
    :cond_13
    return-void
.end method

.method private blacklist updateIconVisibility()V
    .registers 3

    .line 453
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 455
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessagingIconContainer:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsCollapsed:Z

    if-eqz v1, :cond_f

    const/16 v1, 0x8

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 457
    :cond_13
    return-void
.end method

.method private blacklist updateImageContainerVisibility()V
    .registers 4

    .line 581
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    .line 582
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/internal/widget/MessagingGroup;->mImageDisplayLocation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 583
    const/4 v1, 0x0

    goto :goto_f

    :cond_d
    const/16 v1, 0x8

    .line 581
    :goto_f
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 584
    return-void
.end method

.method private blacklist updateMaxDisplayedLines()V
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    iget-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_a

    :cond_8
    iget v1, p0, Lcom/android/internal/widget/MessagingGroup;->mRequestedMaxDisplayedLines:I

    :goto_a
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setMaxDisplayedLines(I)V

    .line 415
    return-void
.end method

.method private blacklist updateMessageColor()V
    .registers 6

    .line 513
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    if-eqz v0, :cond_41

    .line 514
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinnerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 515
    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingTextColor:I

    goto :goto_11

    :cond_f
    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    .line 516
    .local v0, "color":I
    :goto_11
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    .line 517
    .local v2, "message":Lcom/android/internal/widget/MessagingMessage;
    nop

    .line 518
    invoke-interface {v2}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->isRemoteInputHistory()Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    .line 519
    .local v3, "isRemoteInputHistory":Z
    :goto_37
    if-eqz v3, :cond_3b

    move v4, v0

    goto :goto_3d

    :cond_3b
    iget v4, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    :goto_3d
    invoke-interface {v2, v4}, Lcom/android/internal/widget/MessagingMessage;->setColor(I)V

    .line 520
    .end local v2    # "message":Lcom/android/internal/widget/MessagingMessage;
    .end local v3    # "isRemoteInputHistory":Z
    goto :goto_17

    .line 522
    .end local v0    # "color":I
    :cond_41
    return-void
.end method

.method private blacklist updateSenderVisibility()V
    .registers 4

    .line 447
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    if-eqz v0, :cond_d

    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mCanHideSenderIfFirst:Z

    if-nez v0, :cond_18

    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Ljava/lang/CharSequence;

    .line 448
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v1

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    .line 449
    .local v0, "hidden":Z
    :goto_19
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v0, :cond_1f

    const/16 v1, 0x8

    :cond_1f
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ImageFloatingTextView;->setVisibility(I)V

    .line 450
    return-void
.end method


# virtual methods
.method public blacklist calculateGroupCompatibility(Lcom/android/internal/widget/MessagingGroup;)I
    .registers 7
    .param p1, "otherGroup"    # Lcom/android/internal/widget/MessagingGroup;

    .line 639
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 640
    const/4 v0, 0x1

    .line 641
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    iget-object v2, p1, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 642
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    .line 643
    .local v2, "ownMessage":Lcom/android/internal/widget/MessagingMessage;
    iget-object v3, p1, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    iget-object v4, p1, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    .line 644
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    .line 643
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingMessage;

    .line 645
    .local v3, "otherMessage":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v2, v3}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Lcom/android/internal/widget/MessagingMessage;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 646
    return v0

    .line 648
    :cond_49
    nop

    .end local v2    # "ownMessage":Lcom/android/internal/widget/MessagingMessage;
    .end local v3    # "otherMessage":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v0, v0, 0x1

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 650
    .end local v1    # "i":I
    :cond_4f
    return v0

    .line 652
    .end local v0    # "result":I
    :cond_50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAvatar()Landroid/view/View;
    .registers 2

    .line 660
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public blacklist getAvatarIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 664
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getAvatarSymbolIfMatching(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .registers 5
    .param p1, "avatarName"    # Ljava/lang/CharSequence;
    .param p2, "avatarSymbol"    # Ljava/lang/String;
    .param p3, "layoutColor"    # I

    .line 480
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    if-ne p3, v0, :cond_17

    .line 482
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarIcon:Landroid/graphics/drawable/Icon;

    return-object v0

    .line 484
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConsumedLines()I
    .registers 5

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 397
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 398
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v3, :cond_1c

    .line 399
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v3}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v3

    add-int/2addr v0, v3

    .line 396
    .end local v2    # "child":Landroid/view/View;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 402
    .end local v1    # "i":I
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2a

    :cond_29
    move v1, v0

    .line 404
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_2a
    add-int/lit8 v0, v1, 0x1

    return v0
.end method

.method public blacklist getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;
    .registers 2

    .line 672
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    return-object v0
.end method

.method public blacklist getMeasuredType()I
    .registers 10

    .line 360
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 363
    return v1

    .line 365
    :cond_6
    const/4 v0, 0x0

    .line 366
    .local v0, "hasNormal":Z
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_e
    const/4 v3, 0x0

    if-ltz v2, :cond_46

    .line 367
    iget-object v4, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 368
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_20

    .line 369
    goto :goto_43

    .line 371
    :cond_20
    instance-of v5, v4, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v5, :cond_43

    .line 372
    move-object v5, v4

    check-cast v5, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v5}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getMeasuredType()I

    move-result v5

    .line 373
    .local v5, "type":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2f

    move v3, v1

    .line 374
    .local v3, "tooSmall":Z
    :cond_2f
    nop

    .line 375
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 376
    .local v7, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    iget-boolean v8, v7, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    or-int/2addr v3, v8

    .line 377
    if-eqz v3, :cond_3f

    .line 378
    if-eqz v0, :cond_3e

    .line 379
    return v1

    .line 381
    :cond_3e
    return v6

    .line 383
    :cond_3f
    if-ne v5, v1, :cond_42

    .line 384
    return v1

    .line 386
    :cond_42
    const/4 v0, 0x1

    .line 366
    .end local v3    # "tooSmall":Z
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "type":I
    .end local v7    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    :cond_43
    :goto_43
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 390
    .end local v2    # "i":I
    :cond_46
    return v3
.end method

.method public blacklist getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;
    .registers 2

    .line 668
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method public blacklist getMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSender()Landroid/app/Person;
    .registers 2

    .line 680
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSender:Landroid/app/Person;

    return-object v0
.end method

.method public blacklist getSenderName()Ljava/lang/CharSequence;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getSenderView()Landroid/widget/TextView;
    .registers 2

    .line 656
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    return-object v0
.end method

.method public blacklist hasDifferentHeightWhenFirst()Z
    .registers 2

    .line 461
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mCanHideSenderIfFirst:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .registers 2

    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hideAnimated()V
    .registers 2

    .line 419
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setIsHidingAnimated(Z)V

    .line 420
    new-instance v0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/MessagingGroup;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->removeGroupAnimated(Ljava/lang/Runnable;)V

    .line 421
    return-void
.end method

.method public blacklist isHidingAnimated()Z
    .registers 2

    .line 425
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsHidingAnimated:Z

    return v0
.end method

.method public blacklist isSingleLine()Z
    .registers 2

    .line 731
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    return v0
.end method

.method public blacklist needsGeneratedAvatar()Z
    .registers 2

    .line 676
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mNeedsGeneratedAvatar:Z

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 5

    .line 141
    invoke-super {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->onFinishInflate()V

    .line 142
    const v0, 0x1020349

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 143
    const v0, 0x10203ea

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ImageFloatingTextView;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    .line 144
    const v0, 0x10203e8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    .line 145
    const v0, 0x10203ed

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    .line 146
    const v0, 0x10203ee

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinner:Landroid/widget/ProgressBar;

    .line 147
    const v0, 0x10203e9

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessagingIconContainer:Landroid/view/ViewGroup;

    .line 148
    const v0, 0x10203ec

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mContentContainer:Landroid/widget/LinearLayout;

    .line 149
    const v0, 0x10203ef

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinnerContainer:Landroid/view/View;

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 152
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 153
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 154
    const v2, 0x105025b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderTextPaddingSingleLine:I

    .line 156
    const v2, 0x1050133

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mConversationContentStart:I

    .line 157
    const v2, 0x10502aa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mNonConversationContentStart:I

    .line 159
    const v2, 0x1050260

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mNonConversationPaddingStart:I

    .line 161
    const v2, 0x1050259

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mConversationAvatarSize:I

    .line 162
    const v2, 0x10502c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mNonConversationAvatarSize:I

    .line 164
    const v2, 0x10502ec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mNotificationTextMarginTop:I

    .line 166
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 603
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->onLayout(ZIIII)V

    .line 604
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
    iget-object v1, p1, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 605
    iget-boolean v1, p1, Lcom/android/internal/widget/MessagingGroup;->mFirstLayout:Z

    .line 606
    .local v1, "firstLayout":Z
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/internal/widget/MessagingGroup$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/widget/MessagingGroup$1;-><init>(Lcom/android/internal/widget/MessagingGroup;Z)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 626
    .end local v1    # "firstLayout":Z
    :cond_1f
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/internal/widget/MessagingGroup;->mFirstLayout:Z

    .line 627
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->updateClipRect()V

    .line 628
    return-void
.end method

.method public blacklist performRemoveAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "message"    # Landroid/view/View;
    .param p2, "endAction"    # Ljava/lang/Runnable;

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/MessagingGroup;->performRemoveAnimation(Landroid/view/View;ILjava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method public blacklist recycle()V
    .registers 5

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v0, :cond_b

    .line 302
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 304
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 305
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 306
    .local v1, "message":Lcom/android/internal/widget/MessagingMessage;
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 307
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    .line 304
    .end local v1    # "message":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 309
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 311
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 312
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ImageFloatingTextView;->setAlpha(F)V

    .line 313
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ImageFloatingTextView;->setTranslationY(F)V

    .line 314
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MessagingGroup;->setAlpha(F)V

    .line 315
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    .line 316
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    .line 317
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Ljava/lang/CharSequence;

    .line 318
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mFirstLayout:Z

    .line 320
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingGroup;->setCanHideSenderIfFirst(Z)V

    .line 321
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setIsFirstInLayout(Z)V

    .line 323
    const v2, 0x7fffffff

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MessagingGroup;->setMaxDisplayedLines(I)V

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingGroup;->setSingleLine(Z)V

    .line 325
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setShowingAvatar(Z)V

    .line 326
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->recycle(Landroid/view/View;)V

    .line 327
    sget-object v0, Lcom/android/internal/widget/MessagingGroup;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/MessagingPool;->release(Landroid/view/View;)Z

    .line 328
    return-void
.end method

.method public blacklist removeGroupAnimated(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "endAction"    # Ljava/lang/Runnable;

    .line 331
    new-instance v0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/MessagingGroup;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/MessagingGroup;->performRemoveAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method

.method public blacklist removeMessage(Lcom/android/internal/widget/MessagingMessage;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "messagingMessage"    # Lcom/android/internal/widget/MessagingMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/MessagingMessage;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p2, "toRecycle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;>;"
    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    .line 284
    .local v1, "wasShown":Z
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 285
    .local v2, "messageParent":Landroid/view/ViewGroup;
    if-nez v2, :cond_11

    .line 286
    return-void

    .line 288
    :cond_11
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 289
    if-eqz v1, :cond_29

    invoke-static {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 290
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    .line 291
    new-instance v3, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0, p1}, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/internal/widget/MessagingMessage;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/MessagingGroup;->performRemoveAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2c

    .line 296
    :cond_29
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :goto_2c
    return-void
.end method

.method public blacklist setAvatar(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 252
    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarIcon:Landroid/graphics/drawable/Icon;

    .line 253
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mShowingAvatar:Z

    if-nez v0, :cond_8

    if-nez p1, :cond_d

    .line 254
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 256
    :cond_d
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    .line 257
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    .line 258
    return-void
.end method

.method public blacklist setCanHideSenderIfFirst(Z)V
    .registers 3
    .param p1, "canHide"    # Z

    .line 440
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mCanHideSenderIfFirst:Z

    if-eq v0, p1, :cond_9

    .line 441
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mCanHideSenderIfFirst:Z

    .line 442
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateSenderVisibility()V

    .line 444
    :cond_9
    return-void
.end method

.method public blacklist setClippingDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 684
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mClippingDisabled:Z

    .line 685
    return-void
.end method

.method public blacklist setCreatedAvatar(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .registers 6
    .param p1, "cachedIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "avatarName"    # Ljava/lang/CharSequence;
    .param p3, "avatarSymbol"    # Ljava/lang/String;
    .param p4, "layoutColor"    # I

    .line 489
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    invoke-interface {v0, p2}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    if-eq p4, v0, :cond_1e

    .line 491
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    .line 492
    iput-object p3, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    .line 493
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    .line 494
    iput-object p2, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    .line 496
    :cond_1e
    return-void
.end method

.method public blacklist setImageDisplayLocation(I)V
    .registers 3
    .param p1, "displayLocation"    # I

    .line 688
    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageDisplayLocation:I

    if-eq v0, p1, :cond_9

    .line 689
    iput p1, p0, Lcom/android/internal/widget/MessagingGroup;->mImageDisplayLocation:I

    .line 690
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateImageContainerVisibility()V

    .line 692
    :cond_9
    return-void
.end method

.method public blacklist setIsCollapsed(Z)V
    .registers 2
    .param p1, "isCollapsed"    # Z

    .line 726
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsCollapsed:Z

    .line 727
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateIconVisibility()V

    .line 728
    return-void
.end method

.method public blacklist setIsFirstInLayout(Z)V
    .registers 3
    .param p1, "first"    # Z

    .line 430
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    if-eq p1, v0, :cond_9

    .line 431
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    .line 432
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateSenderVisibility()V

    .line 434
    :cond_9
    return-void
.end method

.method public blacklist setIsInConversation(Z)V
    .registers 7
    .param p1, "isInConversation"    # Z

    .line 740
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    if-eq v0, p1, :cond_4c

    .line 741
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    .line 743
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 744
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateIconVisibility()V

    .line 747
    return-void

    .line 750
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessagingIconContainer:Landroid/view/ViewGroup;

    .line 751
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 752
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    if-eqz v1, :cond_1f

    .line 753
    iget v1, p0, Lcom/android/internal/widget/MessagingGroup;->mConversationContentStart:I

    goto :goto_21

    .line 754
    :cond_1f
    iget v1, p0, Lcom/android/internal/widget/MessagingGroup;->mNonConversationContentStart:I

    :goto_21
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 755
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessagingIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    move v2, v1

    goto :goto_2f

    :cond_2d
    iget v2, p0, Lcom/android/internal/widget/MessagingGroup;->mNonConversationPaddingStart:I

    .line 757
    .local v2, "imagePaddingStart":I
    :goto_2f
    iget-object v3, p0, Lcom/android/internal/widget/MessagingGroup;->mMessagingIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1, v1, v1}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 759
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 760
    .local v1, "avatarLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v3, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    if-eqz v3, :cond_41

    iget v3, p0, Lcom/android/internal/widget/MessagingGroup;->mConversationAvatarSize:I

    goto :goto_43

    :cond_41
    iget v3, p0, Lcom/android/internal/widget/MessagingGroup;->mNonConversationAvatarSize:I

    .line 761
    .local v3, "size":I
    :goto_43
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 762
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 763
    iget-object v4, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "avatarLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "imagePaddingStart":I
    .end local v3    # "size":I
    :cond_4c
    return-void
.end method

.method public blacklist setLayoutColor(I)V
    .registers 4
    .param p1, "layoutColor"    # I

    .line 506
    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    if-eq p1, v0, :cond_11

    .line 507
    iput p1, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    .line 508
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinner:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 510
    :cond_11
    return-void
.end method

.method public blacklist setMaxDisplayedLines(I)V
    .registers 2
    .param p1, "lines"    # I

    .line 409
    iput p1, p0, Lcom/android/internal/widget/MessagingGroup;->mRequestedMaxDisplayedLines:I

    .line 410
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateMaxDisplayedLines()V

    .line 411
    return-void
.end method

.method public blacklist setMessages(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;)V"
        }
    .end annotation

    .line 526
    .local p1, "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v0, 0x0

    .line 527
    .local v0, "textMessageIndex":I
    const/4 v1, 0x0

    .line 528
    .local v1, "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    const/4 v2, 0x0

    .local v2, "messageIndex":I
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_81

    .line 529
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingMessage;

    .line 530
    .local v3, "message":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v4

    if-eq v4, p0, :cond_1d

    .line 531
    invoke-interface {v3, p0}, Lcom/android/internal/widget/MessagingMessage;->setMessagingGroup(Lcom/android/internal/widget/MessagingGroup;)V

    .line 532
    iget-object v4, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_1d
    instance-of v4, v3, Lcom/android/internal/widget/MessagingImageMessage;

    .line 535
    .local v4, "isImage":Z
    iget v5, p0, Lcom/android/internal/widget/MessagingGroup;->mImageDisplayLocation:I

    if-eqz v5, :cond_29

    if-eqz v4, :cond_29

    .line 536
    move-object v1, v3

    check-cast v1, Lcom/android/internal/widget/MessagingImageMessage;

    goto :goto_7e

    .line 538
    :cond_29
    iget-object v5, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/MessagingGroup;->removeFromParentIfDifferent(Lcom/android/internal/widget/MessagingMessage;Landroid/view/ViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 539
    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 540
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_4c

    instance-of v6, v5, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-nez v6, :cond_4c

    .line 542
    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 543
    invoke-virtual {v7}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v7

    .line 542
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    :cond_4c
    iget-object v6, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    .line 547
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_55
    if-eqz v4, :cond_5e

    .line 548
    move-object v5, v3

    check-cast v5, Lcom/android/internal/widget/MessagingImageMessage;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MessagingImageMessage;->setIsolated(Z)V

    .line 551
    :cond_5e
    iget-object v5, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-eq v0, v5, :cond_7c

    .line 552
    iget-object v5, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 553
    iget-object v5, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    .line 555
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    .line 528
    .end local v3    # "message":Lcom/android/internal/widget/MessagingMessage;
    .end local v4    # "isImage":Z
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 558
    .end local v2    # "messageIndex":I
    :cond_81
    if-eqz v1, :cond_ad

    .line 559
    iget v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageDisplayLocation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9f

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    .line 560
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/MessagingGroup;->removeFromParentIfDifferent(Lcom/android/internal/widget/MessagingMessage;Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 561
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 562
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingImageMessage;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_a9

    .line 563
    :cond_9f
    iget v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageDisplayLocation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_a9

    .line 564
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 566
    :cond_a9
    :goto_a9
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MessagingImageMessage;->setIsolated(Z)V

    goto :goto_b6

    .line 567
    :cond_ad
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v2, :cond_b6

    .line 568
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 570
    :cond_b6
    :goto_b6
    iput-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    .line 571
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateImageContainerVisibility()V

    .line 572
    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    .line 573
    invoke-static {}, Landroid/widget/flags/Flags;->dropNonExistingMessages()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 575
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/MessagingGroup;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 577
    :cond_cd
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateMessageColor()V

    .line 578
    return-void
.end method

.method public blacklist setSender(Landroid/app/Person;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "sender"    # Landroid/app/Person;
    .param p2, "nameOverride"    # Ljava/lang/CharSequence;

    .line 200
    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup;->mSender:Landroid/app/Person;

    .line 201
    if-nez p2, :cond_8

    .line 202
    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object p2

    .line 204
    :cond_8
    invoke-static {}, Landroid/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p2, :cond_14

    .line 206
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 208
    :cond_14
    iput-object p2, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Ljava/lang/CharSequence;

    .line 209
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    if-eqz v0, :cond_31

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040311

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 213
    :cond_31
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/ImageFloatingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mNeedsGeneratedAvatar:Z

    .line 215
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mNeedsGeneratedAvatar:Z

    if-nez v0, :cond_4c

    .line 216
    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    .line 218
    :cond_4c
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateSenderVisibility()V

    .line 219
    return-void
.end method

.method public blacklist setSending(Z)V
    .registers 4
    .param p1, "sending"    # Z

    .line 232
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    const/16 v0, 0x8

    .line 233
    .local v0, "visibility":I
    :goto_6
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinnerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_16

    .line 234
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinnerContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 235
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateMessageColor()V

    .line 237
    :cond_16
    return-void
.end method

.method public blacklist setShowingAvatar(Z)V
    .registers 4
    .param p1, "showingAvatar"    # Z

    .line 227
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mShowingAvatar:Z

    .line 229
    return-void
.end method

.method public blacklist setSingleLine(Z)V
    .registers 6
    .param p1, "singleLine"    # Z

    .line 705
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    if-eq p1, v0, :cond_41

    .line 706
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    .line 707
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 708
    .local v0, "p":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    move v2, v1

    goto :goto_15

    :cond_13
    iget v2, p0, Lcom/android/internal/widget/MessagingGroup;->mNotificationTextMarginTop:I

    :goto_15
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 709
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mContentContainer:Landroid/widget/LinearLayout;

    .line 711
    nop

    .line 710
    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 712
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 713
    .local v2, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_30

    iget v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderTextPaddingSingleLine:I

    :cond_30
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 714
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ImageFloatingTextView;->setSingleLine(Z)V

    .line 715
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateMaxDisplayedLines()V

    .line 716
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->updateClipRect()V

    .line 717
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateSenderVisibility()V

    .line 719
    .end local v0    # "p":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_41
    return-void
.end method

.method public blacklist setTextColors(II)V
    .registers 4
    .param p1, "senderTextColor"    # I
    .param p2, "messageTextColor"    # I

    .line 499
    iput p2, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    .line 500
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->calculateSendingTextColor()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingTextColor:I

    .line 501
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateMessageColor()V

    .line 502
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ImageFloatingTextView;->setTextColor(I)V

    .line 503
    return-void
.end method

.method public blacklist updateClipRect()V
    .registers 5

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ImageFloatingTextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3f

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mClippingDisabled:Z

    if-nez v0, :cond_3f

    .line 174
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    if-eqz v0, :cond_14

    .line 175
    const/4 v0, 0x0

    .local v0, "top":I
    goto :goto_2c

    .line 177
    .end local v0    # "top":I
    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mContentContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/MessagingGroup;->getDistanceFromParent(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mContentContainer:Landroid/widget/LinearLayout;

    .line 178
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/MessagingGroup;->getDistanceFromParent(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    .line 179
    invoke-virtual {v1}, Lcom/android/internal/widget/ImageFloatingTextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    .restart local v0    # "top":I
    :goto_2c
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 182
    .local v1, "size":I
    new-instance v2, Landroid/graphics/Rect;

    neg-int v3, v1

    invoke-direct {v2, v3, v0, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 183
    .end local v0    # "top":I
    .end local v1    # "size":I
    .local v2, "clipRect":Landroid/graphics/Rect;
    goto :goto_40

    .line 184
    .end local v2    # "clipRect":Landroid/graphics/Rect;
    :cond_3f
    const/4 v2, 0x0

    .line 186
    .restart local v2    # "clipRect":Landroid/graphics/Rect;
    :goto_40
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 187
    return-void
.end method
