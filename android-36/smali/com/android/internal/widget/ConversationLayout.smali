.class public Lcom/android/internal/widget/ConversationLayout;
.super Landroid/widget/FrameLayout;
.source "ConversationLayout.java"

# interfaces
.implements Lcom/android/internal/widget/ImageMessageConsumer;
.implements Lcom/android/internal/widget/IMessagingLayout;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;
    }
.end annotation


# static fields
.field public static final blacklist FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist IMPORTANCE_ANIM_GROW_DURATION:I = 0xfa

.field public static final blacklist IMPORTANCE_ANIM_SHRINK_DELAY:I = 0x19

.field public static final blacklist IMPORTANCE_ANIM_SHRINK_DURATION:I = 0xc8

.field public static final blacklist LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static final blacklist MAX_SUMMARIZATION_LINES:I = 0x3

.field public static final blacklist OVERSHOOT:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist mActions:Lcom/android/internal/widget/NotificationActionListLayout;

.field private final blacklist mAddedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppName:Lcom/android/internal/widget/ObservableTextView;

.field private blacklist mAppNameDivider:Landroid/view/View;

.field private blacklist mAppNameGone:Z

.field private blacklist mAvatarReplacement:Landroid/graphics/drawable/Icon;

.field private blacklist mBadgeProtrusion:I

.field private blacklist mContentContainer:Landroid/view/View;

.field private blacklist mContentMarginEnd:I

.field private blacklist mConversationAvatarSize:I

.field private blacklist mConversationAvatarSizeExpanded:I

.field private blacklist mConversationFacePile:Landroid/view/View;

.field private blacklist mConversationHeader:Landroid/view/View;

.field private blacklist mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

.field private blacklist mConversationIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mConversationIconBadge:Landroid/view/View;

.field private blacklist mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mConversationIconContainer:Landroid/view/View;

.field private blacklist mConversationIconTopPadding:I

.field private blacklist mConversationIconTopPaddingExpandedGroup:I

.field private blacklist mConversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mConversationText:Landroid/widget/TextView;

.field private blacklist mConversationTitle:Ljava/lang/CharSequence;

.field private blacklist mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

.field private blacklist mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

.field private blacklist mExpandButtonContainer:Landroid/view/View;

.field private blacklist mExpandButtonContainerA11yContainer:Landroid/view/ViewGroup;

.field private blacklist mExpandable:Z

.field private blacklist mExpandedGroupBadgeProtrusion:I

.field private blacklist mExpandedGroupBadgeProtrusionFacePile:I

.field private blacklist mExpandedGroupMessagePadding:I

.field private blacklist mFacePileAvatarSize:I

.field private blacklist mFacePileAvatarSizeExpandedGroup:I

.field private blacklist mFacePileProtectionWidth:I

.field private blacklist mFacePileProtectionWidthExpanded:I

.field private blacklist mFallbackChatName:Ljava/lang/CharSequence;

.field private blacklist mFallbackGroupChatName:Ljava/lang/CharSequence;

.field private blacklist mFeedbackIcon:Landroid/view/View;

.field private final blacklist mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIcon:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private blacklist mImageResolver:Lcom/android/internal/widget/ImageResolver;

.field private blacklist mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mImportantConversation:Z

.field private blacklist mIsCollapsed:Z

.field private blacklist mIsOneToOne:Z

.field private blacklist mLargeIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLayoutColor:I

.field private blacklist mMessageSpacingGroup:I

.field private blacklist mMessageSpacingStandard:I

.field private blacklist mMessageTextColor:I

.field private blacklist mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMessagingClipRect:Landroid/graphics/Rect;

.field private blacklist mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

.field private blacklist mMinTouchSize:F

.field private blacklist mNameReplacement:Ljava/lang/CharSequence;

.field private blacklist mNotificationBackgroundColor:I

.field private blacklist mNotificationHeaderExpandedPadding:I

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

.field private blacklist mPrecomputedTextEnabled:Z

.field private blacklist mSenderTextColor:I

.field private blacklist mShortcutIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mShowHistoricMessages:Z

.field private blacklist mSummarizedContent:Ljava/lang/CharSequence;

.field private final blacklist mToRecycle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

.field private blacklist mUser:Landroid/app/Person;


# direct methods
.method public static synthetic blacklist $r8$lambda$48djR3OJ_Jd-cPEGCIw0-RLSqVY(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/Icon;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setLargeIconAsync$8(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5ioQW4R5TLU8vs1Mw8MYyMpf3Q4(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$removeGroups$11(Lcom/android/internal/widget/MessagingGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6kyutpsVnJs2PmFS5ZoFPFVRgAk(Lcom/android/internal/widget/ConversationLayout;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setIsOneToOneAsync$13(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BNjQhXP-5aUYoQz14QmKl9PDSp4(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$D1UElgaWSvwZwtnT29ASPblWVNg(Lcom/android/internal/widget/ConversationLayout;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setLayoutColorAsync$12(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RRECZr-Ja0GiiVpYH-bfuM7k_w0(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setDataAsync$7(Lcom/android/internal/widget/MessagingData;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$S_9z6spairVf2ABxvBIpqs1dF4k(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ConversationLayout;->lambda$setIsImportantConversation$4(Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WzkgrNjBzjRkFbT2s60Ni0YZvfI(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iVbhjxQ2Q1bZLHqVy_h1ctUW3_A(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/Icon;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setShortcutIconAsync$9(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$itoNd3hDm44wQVysLeFna0aKNcg(Lcom/android/internal/widget/ConversationLayout;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setDataAsync$6(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kjfdbUt03rnmGgKDl1Q8gXF02A0(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m-6GV39jvtHC9VSXgbIKWmV1q5g(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$soZpOqaqXl-AcA4VGnk9iLD9Nso(Lcom/android/internal/widget/ConversationLayout;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setIsCollapsedAsync$5(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uPndYGOmPFTQJYtTZPKSmuXBylU(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setConversationTitleAsync$10(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yqVyMFOj2KUVULPU5rMn4phW6Yk(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$createGroupViews$14(Lcom/android/internal/widget/MessagingGroup;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAddedGroups(Lcom/android/internal/widget/ConversationLayout;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConversationIconBadgeBg(Lcom/android/internal/widget/ConversationLayout;)Lcom/android/internal/widget/CachingIconView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 85
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 86
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 87
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 88
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3fb33333    # 1.4f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->OVERSHOOT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 172
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 165
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    .line 173
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 176
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 165
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    .line 177
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 165
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    .line 182
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 165
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    .line 187
    return-void
.end method

.method private blacklist addRemoteInputHistoryToMessages(Ljava/util/List;[Landroid/app/RemoteInputHistoryItem;)V
    .registers 11
    .param p2, "remoteInputHistory"    # [Landroid/app/RemoteInputHistoryItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;[",
            "Landroid/app/RemoteInputHistoryItem;",
            ")V"
        }
    .end annotation

    .line 555
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    if-eqz p2, :cond_32

    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_32

    .line 558
    :cond_6
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_31

    .line 559
    aget-object v1, p2, v0

    .line 560
    .local v1, "historyMessage":Landroid/app/RemoteInputHistoryItem;
    new-instance v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 561
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    .line 562
    .local v2, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 563
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    .line 565
    :cond_2b
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v1    # "historyMessage":Landroid/app/RemoteInputHistoryItem;
    .end local v2    # "message":Landroid/app/Notification$MessagingStyle$Message;
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 567
    .end local v0    # "i":I
    :cond_31
    return-void

    .line 556
    :cond_32
    :goto_32
    return-void
.end method

.method private blacklist applyNotificationBackgroundColor(Landroid/widget/ImageView;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 1137
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationBackgroundColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1138
    return-void
.end method

.method private blacklist bind(Lcom/android/internal/widget/MessagingData;)V
    .registers 6
    .param p1, "messagingData"    # Lcom/android/internal/widget/MessagingData;

    .line 570
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getUser()Landroid/app/Person;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->setUser(Landroid/app/Person;)V

    .line 571
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getUnreadCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->setUnreadCount(I)V

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 578
    .local v0, "oldGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getSenders()Ljava/util/List;

    move-result-object v2

    .line 579
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getShowSpinner()Z

    move-result v3

    .line 578
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/ConversationLayout;->createGroupViews(Ljava/util/List;Ljava/util/List;Z)V

    .line 582
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->removeGroups(Ljava/util/ArrayList;)V

    .line 585
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    .line 586
    .local v2, "message":Lcom/android/internal/widget/MessagingMessage;
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    .line 587
    .end local v2    # "message":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_2d

    .line 588
    :cond_3f
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    .line 589
    .local v2, "historicMessage":Lcom/android/internal/widget/MessagingMessage;
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    .line 590
    .end local v2    # "historicMessage":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_45

    .line 592
    :cond_57
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getNewMessagingMessages()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 593
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getHistoricMessagingMessages()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 594
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateHistoricMessageVisibility()V

    .line 595
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateTitleAndNamesDisplay()V

    .line 597
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->updateConversationLayout(Lcom/android/internal/widget/MessagingData;)V

    .line 600
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 601
    .local v2, "child":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-interface {v2}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->recycle()V

    .line 602
    .end local v2    # "child":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    goto :goto_72

    .line 603
    :cond_82
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 604
    return-void
.end method

.method private blacklist bindFacePile()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 797
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile(Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V

    .line 798
    return-void
.end method

.method private blacklist bindFacePile(Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V
    .registers 10
    .param p1, "groupConversationAvatarData"    # Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;

    .line 801
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v1, 0x10202ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 803
    .local v0, "bottomBackground":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v2, 0x10202ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 805
    .local v1, "bottomView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v3, 0x10202ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 808
    .local v2, "topView":Landroid/widget/ImageView;
    if-nez p1, :cond_27

    .line 809
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_2a

    .line 811
    :cond_27
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/ConversationLayout;->bindFacePileWithDrawable(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V

    .line 816
    :goto_2a
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v3

    if-nez v3, :cond_82

    .line 821
    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v3, :cond_3e

    .line 822
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    .line 823
    .local v3, "conversationAvatarSize":I
    iget v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSize:I

    .line 824
    .local v4, "facepileAvatarSize":I
    iget v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .local v5, "facePileBackgroundSize":I
    goto :goto_47

    .line 826
    .end local v3    # "conversationAvatarSize":I
    .end local v4    # "facepileAvatarSize":I
    .end local v5    # "facePileBackgroundSize":I
    :cond_3e
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    .line 827
    .restart local v3    # "conversationAvatarSize":I
    iget v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSizeExpandedGroup:I

    .line 828
    .restart local v4    # "facepileAvatarSize":I
    iget v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidthExpanded:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 830
    .restart local v5    # "facePileBackgroundSize":I
    :goto_47
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 831
    .local v6, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 832
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 833
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 836
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 837
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 838
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 841
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 842
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 843
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 846
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 847
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 848
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    .end local v3    # "conversationAvatarSize":I
    .end local v4    # "facepileAvatarSize":I
    .end local v5    # "facePileBackgroundSize":I
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_82
    return-void
.end method

.method private blacklist computeAndSetConversationAvatarAndName()V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 636
    .local v0, "conversationText":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    .line 637
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v1, :cond_58

    .line 639
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 640
    .local v1, "userKey":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_58

    .line 641
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 642
    .local v3, "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v4

    .line 643
    .local v4, "messageSender":Landroid/app/Person;
    if-eqz v4, :cond_32

    invoke-direct {p0, v4}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_34

    :cond_32
    if-nez v2, :cond_55

    .line 645
    :cond_34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 648
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 650
    :cond_3e
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_58

    .line 651
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 652
    .local v5, "avatarIcon":Landroid/graphics/drawable/Icon;
    if-nez v5, :cond_52

    .line 653
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    const-string v7, ""

    iget v8, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 656
    :cond_52
    iput-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    .line 657
    .end local v5    # "avatarIcon":Landroid/graphics/drawable/Icon;
    goto :goto_58

    .line 640
    .end local v3    # "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "messageSender":Landroid/app/Person;
    :cond_55
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 662
    .end local v1    # "userKey":Ljava/lang/CharSequence;
    .end local v2    # "i":I
    :cond_58
    :goto_58
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_60

    .line 663
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    .line 665
    :cond_60
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_6c

    goto :goto_83

    .line 670
    :cond_6c
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 672
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 674
    const v1, 0x10202ab

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    .line 675
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile()V

    goto :goto_94

    .line 666
    :cond_83
    :goto_83
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 667
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 677
    :goto_94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 678
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackChatName:Ljava/lang/CharSequence;

    goto :goto_a3

    :cond_a1
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackGroupChatName:Ljava/lang/CharSequence;

    :goto_a3
    move-object v0, v1

    .line 680
    :cond_a4
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/widget/PeopleHelper;->maybeHideFirstSenderName(Ljava/util/List;ZLjava/lang/CharSequence;)V

    .line 684
    return-void
.end method

.method private blacklist createGroupViews(Ljava/util/List;Ljava/util/List;Z)V
    .registers 12
    .param p3, "showSpinner"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;Z)V"
        }
    .end annotation

    .line 1157
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local p2, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1158
    const/4 v0, 0x0

    .local v0, "groupIndex":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_f1

    .line 1159
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1160
    .local v1, "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v2, 0x0

    .line 1162
    .local v2, "newGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "messageIndex":I
    :goto_19
    if-ltz v3, :cond_2b

    .line 1163
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingMessage;

    .line 1164
    .local v5, "message":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v5}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v2

    .line 1165
    if-eqz v2, :cond_28

    .line 1166
    goto :goto_2b

    .line 1162
    .end local v5    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1170
    .end local v3    # "messageIndex":I
    :cond_2b
    :goto_2b
    if-nez v2, :cond_39

    .line 1171
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-static {v3}, Lcom/android/internal/widget/MessagingGroup;->createGroup(Lcom/android/internal/widget/MessagingLinearLayout;)Lcom/android/internal/widget/MessagingGroup;

    move-result-object v2

    .line 1172
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 1173
    :cond_39
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-ne v3, v5, :cond_c8

    .line 1178
    :goto_41
    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_48

    .line 1179
    const/4 v3, 0x2

    goto :goto_49

    .line 1180
    :cond_48
    move v3, v5

    .line 1178
    :goto_49
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setImageDisplayLocation(I)V

    .line 1181
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/MessagingGroup;->setIsInConversation(Z)V

    .line 1182
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    .line 1183
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mSenderTextColor:I

    iget v6, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageTextColor:I

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    .line 1184
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 1185
    .local v3, "sender":Landroid/app/Person;
    const/4 v6, 0x0

    .line 1186
    .local v6, "nameOverride":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-eq v3, v7, :cond_6c

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    if-eqz v7, :cond_6c

    .line 1187
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 1189
    :cond_6c
    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v7, :cond_76

    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-nez v7, :cond_76

    move v7, v4

    goto :goto_77

    :cond_76
    move v7, v5

    :goto_77
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/MessagingGroup;->setShowingAvatar(Z)V

    .line 1190
    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v7, :cond_90

    .line 1191
    invoke-static {}, Landroid/app/Flags;->nmCollapsedLines()Z

    move-result v7

    if-nez v7, :cond_8e

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8e

    move v7, v4

    goto :goto_91

    :cond_8e
    move v7, v5

    goto :goto_91

    .line 1192
    :cond_90
    move v7, v5

    .line 1190
    :goto_91
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/MessagingGroup;->setSingleLine(Z)V

    .line 1193
    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/MessagingGroup;->setIsCollapsed(Z)V

    .line 1194
    invoke-virtual {v2, v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setSender(Landroid/app/Person;Ljava/lang/CharSequence;)V

    .line 1195
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v0, v7, :cond_a6

    if-eqz p3, :cond_a6

    goto :goto_a7

    :cond_a6
    move v4, v5

    :goto_a7
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/MessagingGroup;->setSending(Z)V

    .line 1196
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_c1

    .line 1200
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 1201
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    .line 1203
    :cond_c1
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/MessagingGroup;->setMessages(Ljava/util/List;)V

    .line 1158
    .end local v1    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v2    # "newGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v3    # "sender":Landroid/app/Person;
    .end local v6    # "nameOverride":Ljava/lang/CharSequence;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 1174
    .restart local v1    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .restart local v2    # "newGroup":Lcom/android/internal/widget/MessagingGroup;
    :cond_c8
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "group parent was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1175
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1206
    .end local v0    # "groupIndex":I
    .end local v1    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v2    # "newGroup":Lcom/android/internal/widget/MessagingGroup;
    :cond_f1
    invoke-static {}, Landroid/widget/flags/Flags;->dropNonExistingMessages()Z

    move-result v0

    if-eqz v0, :cond_101

    .line 1208
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1211
    :cond_101
    return-void
.end method

.method private blacklist createMessages(Ljava/util/List;ZZ)Ljava/util/List;
    .registers 9
    .param p2, "isHistoric"    # Z
    .param p3, "usePrecomputedText"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    .line 1412
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1413
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 1414
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 1415
    .local v2, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 1416
    .local v3, "message":Lcom/android/internal/widget/MessagingMessage;
    if-nez v3, :cond_1e

    .line 1417
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    invoke-static {p0, v2, v4, p3}, Lcom/android/internal/widget/MessagingMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;Z)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 1420
    :cond_1e
    invoke-interface {v3, p2}, Lcom/android/internal/widget/MessagingMessage;->setIsHistoric(Z)V

    .line 1421
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1413
    .end local v2    # "m":Landroid/app/Notification$MessagingStyle$Message;
    .end local v3    # "message":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1423
    .end local v1    # "i":I
    :cond_27
    return-object v0
.end method

.method private blacklist finalizeInflate(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;)V"
        }
    .end annotation

    .line 535
    .local p1, "historicMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 536
    .local v1, "messagingMessage":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->finalizeInflate()V

    .line 537
    .end local v1    # "messagingMessage":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_4

    .line 538
    :cond_14
    return-void
.end method

.method private blacklist findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;
    .registers 5
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 1427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1428
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 1429
    .local v1, "existing":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1430
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1431
    return-object v1

    .line 1427
    .end local v1    # "existing":Lcom/android/internal/widget/MessagingMessage;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1434
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_21
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 1435
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 1436
    .restart local v1    # "existing":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1437
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1438
    return-object v1

    .line 1434
    .end local v1    # "existing":Lcom/android/internal/widget/MessagingMessage;
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1441
    .end local v0    # "i":I
    :cond_40
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist findGroups(Ljava/util/List;Ljava/util/List;Landroid/app/Person;Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .param p3, "user"    # Landroid/app/Person;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Landroid/app/Person;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;)V"
        }
    .end annotation

    .line 1219
    .local p1, "historicMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p4, "outGroups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local p5, "outSenders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    const/4 v0, 0x0

    .line 1220
    .local v0, "currentSenderKey":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1221
    .local v1, "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1222
    .local v2, "histSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_6e

    .line 1224
    if-ge v3, v2, :cond_17

    .line 1225
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .local v4, "message":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_1f

    .line 1227
    .end local v4    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_17
    sub-int v4, v3, v2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .line 1229
    .restart local v4    # "message":Lcom/android/internal/widget/MessagingMessage;
    :goto_1f
    const/4 v5, 0x1

    if-nez v1, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    const/4 v6, 0x0

    .line 1231
    .local v6, "isNewGroup":Z
    :goto_25
    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v7

    if-nez v7, :cond_2d

    const/4 v7, 0x0

    goto :goto_35

    :cond_2d
    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    .line 1232
    .local v7, "sender":Landroid/app/Person;
    :goto_35
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1233
    .local v8, "key":Ljava/lang/CharSequence;
    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v5, v9

    or-int/2addr v5, v6

    .line 1234
    .end local v6    # "isNewGroup":Z
    .local v5, "isNewGroup":Z
    if-eqz v5, :cond_68

    .line 1235
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .end local v1    # "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local v6, "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-interface {p4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    if-nez v7, :cond_4e

    .line 1238
    move-object v1, p3

    move-object v7, v1

    .end local v7    # "sender":Landroid/app/Person;
    .local v1, "sender":Landroid/app/Person;
    goto :goto_63

    .line 1241
    .end local v1    # "sender":Landroid/app/Person;
    .restart local v7    # "sender":Landroid/app/Person;
    :cond_4e
    invoke-virtual {v7}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    move-object v7, v1

    .line 1243
    :goto_63
    invoke-interface {p5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    move-object v0, v8

    move-object v1, v6

    .line 1246
    .end local v6    # "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local v1, "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    :cond_68
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    .end local v4    # "message":Lcom/android/internal/widget/MessagingMessage;
    .end local v5    # "isNewGroup":Z
    .end local v7    # "sender":Landroid/app/Person;
    .end local v8    # "key":Ljava/lang/CharSequence;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1248
    .end local v3    # "i":I
    :cond_6e
    return-void
.end method

.method private blacklist getKey(Landroid/app/Person;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "person"    # Landroid/app/Person;

    .line 1251
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_13

    :cond_4
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method private blacklist getNewImageMessage()Landroid/view/View;
    .registers 4

    .line 748
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 751
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    .line 752
    .local v0, "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v1

    .line 753
    .local v1, "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    if-eqz v1, :cond_1f

    .line 754
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingImageMessage;->getView()Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 757
    .end local v0    # "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v1    # "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getRelativeTouchRect(Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 6
    .param p1, "touchRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;

    .line 1548
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1549
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    :goto_6
    if-eq v0, p0, :cond_1b

    .line 1550
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1551
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_6

    .line 1553
    :cond_1b
    return-void
.end method

.method private synthetic blacklist lambda$createGroupViews$14(Lcom/android/internal/widget/MessagingGroup;)Z
    .registers 3
    .param p1, "messagingGroup"    # Lcom/android/internal/widget/MessagingGroup;

    .line 1209
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$onFinishInflate$0(Ljava/lang/Integer;)V
    .registers 11
    .param p1, "visibility"    # Ljava/lang/Integer;

    .line 213
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 214
    .local v0, "isGone":Z
    :goto_d
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v4}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v4

    .line 215
    .local v4, "oldVisibility":I
    if-ne v4, v3, :cond_17

    move v5, v1

    goto :goto_18

    :cond_17
    move v5, v2

    .line 216
    .local v5, "wasGone":Z
    :goto_18
    if-eq v5, v0, :cond_2c

    .line 219
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v6}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 220
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 224
    :cond_2c
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v6}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v4

    .line 225
    if-ne v4, v3, :cond_36

    move v6, v1

    goto :goto_37

    :cond_36
    move v6, v2

    .line 226
    .end local v5    # "wasGone":Z
    .local v6, "wasGone":Z
    :goto_37
    iget-boolean v5, p0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    if-nez v5, :cond_3d

    move v5, v3

    goto :goto_41

    :cond_3d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_4d

    move v5, v1

    goto :goto_4e

    :cond_4d
    move v5, v2

    .line 228
    .local v5, "isRingGone":Z
    :goto_4e
    if-eq v6, v5, :cond_62

    .line 231
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v7}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 232
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 235
    :cond_62
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 236
    if-ne v4, v3, :cond_6b

    goto :goto_6c

    :cond_6b
    move v1, v2

    .line 237
    .end local v6    # "wasGone":Z
    .local v1, "wasGone":Z
    :goto_6c
    if-eq v1, v0, :cond_80

    .line 238
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 239
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_80
    return-void
.end method

.method private synthetic blacklist lambda$onFinishInflate$1(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "forceHidden"    # Ljava/lang/Boolean;

    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 246
    return-void
.end method

.method private synthetic blacklist lambda$onFinishInflate$2(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "forceHidden"    # Ljava/lang/Boolean;

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 253
    return-void
.end method

.method private synthetic blacklist lambda$onFinishInflate$3(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "visibility"    # Ljava/lang/Integer;

    .line 304
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->onAppNameVisibilityChanged()V

    .line 305
    return-void
.end method

.method private synthetic blacklist lambda$removeGroups$11(Lcom/android/internal/widget/MessagingGroup;)V
    .registers 3
    .param p1, "group"    # Lcom/android/internal/widget/MessagingGroup;

    .line 1027
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeTransientView(Landroid/view/View;)V

    .line 1028
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->recycle()V

    .line 1029
    return-void
.end method

.method private synthetic blacklist lambda$setConversationTitleAsync$10(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;

    .line 989
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setConversationTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$6(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 509
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setData(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$7(Lcom/android/internal/widget/MessagingData;)V
    .registers 3
    .param p1, "messagingData"    # Lcom/android/internal/widget/MessagingData;

    .line 518
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getHistoricMessagingMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->finalizeInflate(Ljava/util/List;)V

    .line 519
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getNewMessagingMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->finalizeInflate(Ljava/util/List;)V

    .line 521
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->bind(Lcom/android/internal/widget/MessagingData;)V

    .line 522
    return-void
.end method

.method private synthetic blacklist lambda$setIsCollapsedAsync$5(Z)V
    .registers 2
    .param p1, "isCollapsed"    # Z

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setIsCollapsed(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$setIsImportantConversation$4(Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V
    .registers 8
    .param p1, "ring"    # Landroid/graphics/drawable/GradientDrawable;
    .param p2, "ringColor"    # I
    .param p3, "baseSize"    # I
    .param p4, "animation"    # Landroid/animation/ValueAnimator;

    .line 352
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 353
    .local v0, "strokeWidth":I
    invoke-virtual {p1, v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 354
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    .line 355
    .local v1, "newSize":I
    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 356
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->invalidate()V

    .line 357
    return-void
.end method

.method private synthetic blacklist lambda$setIsOneToOneAsync$13(Z)V
    .registers 2
    .param p1, "oneToOne"    # Z

    .line 1110
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setIsOneToOne(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$setLargeIconAsync$8(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;

    .line 953
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setLargeIcon(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method private synthetic blacklist lambda$setLayoutColorAsync$12(I)V
    .registers 2
    .param p1, "color"    # I

    .line 1092
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setLayoutColor(I)V

    return-void
.end method

.method private synthetic blacklist lambda$setShortcutIconAsync$9(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "shortcutIcon"    # Landroid/graphics/drawable/Icon;

    .line 971
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setShortcutIcon(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method private blacklist loadConversationHeaderData(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/util/List;Landroid/app/Person;Ljava/util/List;I)Lcom/android/internal/widget/ConversationHeaderData;
    .registers 30
    .param p1, "isOneToOne"    # Z
    .param p2, "conversationTitle"    # Ljava/lang/CharSequence;
    .param p3, "shortcutIcon"    # Landroid/graphics/drawable/Icon;
    .param p4, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p6, "user"    # Landroid/app/Person;
    .param p8, "layoutColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Landroid/app/Person;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;I)",
            "Lcom/android/internal/widget/ConversationHeaderData;"
        }
    .end annotation

    .line 1259
    .local p5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p7, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p8

    move-object/from16 v3, p3

    .line 1260
    .local v3, "conversationIcon":Landroid/graphics/drawable/Icon;
    move-object/from16 v4, p2

    .line 1261
    .local v4, "conversationText":Ljava/lang/CharSequence;
    move-object/from16 v5, p6

    invoke-direct {v0, v5}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1262
    .local v6, "userKey":Ljava/lang/CharSequence;
    const/4 v7, 0x1

    const-string v8, ""

    if-eqz p1, :cond_5e

    .line 1263
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    .local v9, "i":I
    :goto_1a
    if-ltz v9, :cond_5b

    .line 1264
    move-object/from16 v10, p5

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v11}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v11

    .line 1265
    .local v11, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v11}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v12

    .line 1266
    .local v12, "sender":Landroid/app/Person;
    invoke-direct {v0, v12}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1267
    .local v13, "senderKey":Ljava/lang/CharSequence;
    if-eqz v12, :cond_34

    if-ne v13, v6, :cond_36

    :cond_34
    if-nez v9, :cond_58

    .line 1268
    :cond_36
    if-eqz v4, :cond_3e

    invoke-interface {v4}, Ljava/lang/CharSequence;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_47

    .line 1269
    :cond_3e
    if-eqz v12, :cond_45

    invoke-virtual {v12}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v14

    goto :goto_46

    :cond_45
    move-object v14, v8

    :goto_46
    move-object v4, v14

    .line 1271
    :cond_47
    if-nez v3, :cond_60

    .line 1272
    if-eqz v12, :cond_50

    invoke-virtual {v12}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v14

    goto :goto_56

    .line 1273
    :cond_50
    iget-object v14, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v14, v4, v8, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v14

    :goto_56
    move-object v3, v14

    goto :goto_60

    .line 1263
    .end local v11    # "message":Landroid/app/Notification$MessagingStyle$Message;
    .end local v12    # "sender":Landroid/app/Person;
    .end local v13    # "senderKey":Ljava/lang/CharSequence;
    :cond_58
    add-int/lit8 v9, v9, -0x1

    goto :goto_1a

    :cond_5b
    move-object/from16 v10, p5

    goto :goto_60

    .line 1262
    .end local v9    # "i":I
    :cond_5e
    move-object/from16 v10, p5

    .line 1280
    :cond_60
    :goto_60
    invoke-static {}, Landroid/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v9

    if-eqz v9, :cond_6c

    if-eqz v4, :cond_6c

    .line 1282
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1285
    :cond_6c
    if-nez v3, :cond_70

    .line 1286
    move-object/from16 v3, p4

    .line 1289
    :cond_70
    if-nez p1, :cond_196

    if-eqz v3, :cond_78

    move-object/from16 v19, v6

    goto/16 :goto_198

    .line 1296
    :cond_78
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v9, "groupMessages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_b2

    .line 1298
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1299
    .local v12, "groupMessage":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_8a
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_ac

    .line 1300
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v14}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    add-int/lit8 v13, v13, 0x1

    goto :goto_8a

    .line 1302
    .end local v13    # "j":I
    :cond_ac
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    .end local v12    # "groupMessage":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    add-int/lit8 v11, v11, 0x1

    goto :goto_7e

    .line 1305
    .end local v11    # "i":I
    :cond_b2
    iget-object v11, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 1306
    invoke-virtual {v11, v9}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefixWithGroupList(Ljava/util/List;)Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;

    move-result-object v11

    .line 1308
    .local v11, "nameToPrefixMap":Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;
    const/4 v12, 0x0

    .line 1309
    .local v12, "lastIcon":Landroid/graphics/drawable/Icon;
    const/4 v13, 0x0

    .line 1311
    .local v13, "secondLastIcon":Landroid/graphics/drawable/Icon;
    const/4 v14, 0x0

    .line 1313
    .local v14, "lastKey":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v7

    .local v15, "i":I
    :goto_c0
    if-ltz v15, :cond_171

    .line 1314
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v7}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v7

    .line 1316
    .local v7, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v16

    if-eqz v16, :cond_e0

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v16

    goto :goto_e2

    :cond_e0
    move-object/from16 v16, v5

    :goto_e2
    move-object/from16 v17, v16

    .line 1317
    .local v17, "sender":Landroid/app/Person;
    move-object/from16 v1, v17

    .end local v17    # "sender":Landroid/app/Person;
    .local v1, "sender":Landroid/app/Person;
    invoke-direct {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1318
    .local v5, "senderKey":Ljava/lang/CharSequence;
    if-eq v5, v6, :cond_ef

    const/16 v17, 0x1

    goto :goto_f1

    :cond_ef
    const/16 v17, 0x0

    .line 1319
    .local v17, "notUser":Z
    :goto_f1
    if-eq v5, v14, :cond_f6

    const/16 v16, 0x1

    goto :goto_f8

    :cond_f6
    const/16 v16, 0x0

    .line 1321
    .local v16, "notIncluded":Z
    :goto_f8
    if-eqz v17, :cond_fc

    if-nez v16, :cond_100

    :cond_fc
    if-nez v15, :cond_160

    if-nez v14, :cond_160

    .line 1322
    :cond_100
    if-nez v12, :cond_138

    .line 1323
    invoke-virtual {v1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v18

    if-eqz v18, :cond_113

    .line 1324
    invoke-virtual {v1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    move-object/from16 v18, v1

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    goto :goto_134

    .line 1327
    :cond_113
    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v18

    if-eqz v18, :cond_11e

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v18

    goto :goto_120

    :cond_11e
    move-object/from16 v18, v8

    :goto_120
    move-object/from16 v19, v18

    .line 1328
    .local v19, "senderName":Ljava/lang/CharSequence;
    move-object/from16 v18, v1

    .end local v1    # "sender":Landroid/app/Person;
    .local v18, "sender":Landroid/app/Person;
    iget-object v1, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 1329
    move-object/from16 v20, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v6

    .end local v6    # "userKey":Ljava/lang/CharSequence;
    .local v5, "senderName":Ljava/lang/CharSequence;
    .local v19, "userKey":Ljava/lang/CharSequence;
    .local v20, "senderKey":Ljava/lang/CharSequence;
    invoke-virtual {v11, v5}, Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;->getPrefix(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1328
    invoke-virtual {v1, v5, v6, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    .line 1332
    .end local v5    # "senderName":Ljava/lang/CharSequence;
    :goto_134
    move-object/from16 v1, v20

    move-object v14, v1

    .end local v14    # "lastKey":Ljava/lang/CharSequence;
    .local v1, "lastKey":Ljava/lang/CharSequence;
    goto :goto_166

    .line 1334
    .end local v18    # "sender":Landroid/app/Person;
    .end local v19    # "userKey":Ljava/lang/CharSequence;
    .end local v20    # "senderKey":Ljava/lang/CharSequence;
    .local v1, "sender":Landroid/app/Person;
    .local v5, "senderKey":Ljava/lang/CharSequence;
    .restart local v6    # "userKey":Ljava/lang/CharSequence;
    .restart local v14    # "lastKey":Ljava/lang/CharSequence;
    :cond_138
    move-object/from16 v18, v1

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    .end local v1    # "sender":Landroid/app/Person;
    .end local v5    # "senderKey":Ljava/lang/CharSequence;
    .end local v6    # "userKey":Ljava/lang/CharSequence;
    .restart local v18    # "sender":Landroid/app/Person;
    .restart local v19    # "userKey":Ljava/lang/CharSequence;
    .restart local v20    # "senderKey":Ljava/lang/CharSequence;
    invoke-virtual/range {v18 .. v18}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_149

    .line 1335
    invoke-virtual/range {v18 .. v18}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    goto :goto_173

    .line 1338
    :cond_149
    invoke-virtual/range {v18 .. v18}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_154

    invoke-virtual/range {v18 .. v18}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_155

    :cond_154
    move-object v1, v8

    .line 1339
    .local v1, "senderName":Ljava/lang/CharSequence;
    :goto_155
    iget-object v5, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 1340
    invoke-virtual {v11, v1}, Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;->getPrefix(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1339
    invoke-virtual {v5, v1, v6, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    .line 1343
    .end local v1    # "senderName":Ljava/lang/CharSequence;
    goto :goto_173

    .line 1321
    .end local v18    # "sender":Landroid/app/Person;
    .end local v19    # "userKey":Ljava/lang/CharSequence;
    .end local v20    # "senderKey":Ljava/lang/CharSequence;
    .local v1, "sender":Landroid/app/Person;
    .restart local v5    # "senderKey":Ljava/lang/CharSequence;
    .restart local v6    # "userKey":Ljava/lang/CharSequence;
    :cond_160
    move-object/from16 v18, v1

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    .line 1313
    .end local v1    # "sender":Landroid/app/Person;
    .end local v5    # "senderKey":Ljava/lang/CharSequence;
    .end local v6    # "userKey":Ljava/lang/CharSequence;
    .end local v7    # "message":Landroid/app/Notification$MessagingStyle$Message;
    .end local v16    # "notIncluded":Z
    .end local v17    # "notUser":Z
    .restart local v19    # "userKey":Ljava/lang/CharSequence;
    :goto_166
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v5, p6

    move-object/from16 v1, p7

    move-object/from16 v6, v19

    const/4 v7, 0x1

    goto/16 :goto_c0

    .end local v19    # "userKey":Ljava/lang/CharSequence;
    .restart local v6    # "userKey":Ljava/lang/CharSequence;
    :cond_171
    move-object/from16 v19, v6

    .line 1348
    .end local v6    # "userKey":Ljava/lang/CharSequence;
    .end local v15    # "i":I
    .restart local v19    # "userKey":Ljava/lang/CharSequence;
    :goto_173
    if-nez v12, :cond_17b

    .line 1349
    iget-object v1, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v1, v8, v8, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    .line 1353
    :cond_17b
    if-nez v13, :cond_183

    .line 1354
    iget-object v1, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v1, v8, v8, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    .line 1358
    :cond_183
    new-instance v1, Lcom/android/internal/widget/ConversationHeaderData;

    new-instance v5, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;

    .line 1360
    invoke-direct {v0, v12}, Lcom/android/internal/widget/ConversationLayout;->resolveAvatarImageForFacePile(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1361
    invoke-direct {v0, v13}, Lcom/android/internal/widget/ConversationLayout;->resolveAvatarImageForFacePile(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v1, v4, v5}, Lcom/android/internal/widget/ConversationHeaderData;-><init>(Ljava/lang/CharSequence;Lcom/android/internal/widget/ConversationAvatarData;)V

    .line 1358
    return-object v1

    .line 1289
    .end local v9    # "groupMessages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;>;"
    .end local v11    # "nameToPrefixMap":Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;
    .end local v12    # "lastIcon":Landroid/graphics/drawable/Icon;
    .end local v13    # "secondLastIcon":Landroid/graphics/drawable/Icon;
    .end local v14    # "lastKey":Ljava/lang/CharSequence;
    .end local v19    # "userKey":Ljava/lang/CharSequence;
    .restart local v6    # "userKey":Ljava/lang/CharSequence;
    :cond_196
    move-object/from16 v19, v6

    .line 1290
    .end local v6    # "userKey":Ljava/lang/CharSequence;
    .restart local v19    # "userKey":Ljava/lang/CharSequence;
    :goto_198
    new-instance v1, Lcom/android/internal/widget/ConversationHeaderData;

    new-instance v5, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;

    .line 1293
    invoke-direct {v0, v3}, Lcom/android/internal/widget/ConversationLayout;->resolveAvatarImageForOneToOne(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v1, v4, v5}, Lcom/android/internal/widget/ConversationHeaderData;-><init>(Ljava/lang/CharSequence;Lcom/android/internal/widget/ConversationAvatarData;)V

    .line 1290
    return-object v1
.end method

.method private blacklist loadDrawableFromIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "conversationIcon"    # Landroid/graphics/drawable/Icon;

    .line 1398
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 1399
    :catch_9
    move-exception v0

    .line 1400
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist onAppNameVisibilityChanged()V
    .registers 3

    .line 1636
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1637
    return-void

    .line 1640
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ObservableTextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1641
    .local v0, "appNameGone":Z
    :goto_14
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    if-eq v0, v1, :cond_1d

    .line 1642
    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    .line 1643
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppNameDividerVisibility()V

    .line 1645
    :cond_1d
    return-void
.end method

.method private blacklist parseMessagingData(Landroid/os/Bundle;ZZ)Lcom/android/internal/widget/MessagingData;
    .registers 29
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "usePrecomputedText"    # Z
    .param p3, "includeConversationIcon"    # Z

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    const-string v1, "android.messages"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v11

    .line 446
    .local v11, "messages":[Landroid/os/Parcelable;
    nop

    .line 447
    invoke-static {v11}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v12

    .line 448
    .local v12, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const-string v1, "android.messages.historic"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v13

    .line 449
    .local v13, "histMessages":[Landroid/os/Parcelable;
    nop

    .line 450
    invoke-static {v13}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v14

    .line 453
    .local v14, "newHistoricMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const-string v1, "android.messagingUser"

    const-class v2, Landroid/app/Person;

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/app/Person;

    .line 455
    .local v16, "user":Landroid/app/Person;
    const-string v1, "android.remoteInputHistoryItems"

    const-class v2, Landroid/app/RemoteInputHistoryItem;

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Landroid/app/RemoteInputHistoryItem;

    .line 457
    .local v15, "history":[Landroid/app/RemoteInputHistoryItem;
    invoke-direct {v0, v12, v15}, Lcom/android/internal/widget/ConversationLayout;->addRemoteInputHistoryToMessages(Ljava/util/List;[Landroid/app/RemoteInputHistoryItem;)V

    .line 459
    nop

    .line 460
    const-string v1, "android.remoteInputSpinner"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 461
    .local v17, "showSpinner":Z
    const-string v1, "android.conversationUnreadMessageCount"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 464
    .local v18, "unreadCount":I
    const-string v1, "android.summarization"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    .line 465
    iget-object v1, v0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    iget-boolean v1, v0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v1, :cond_6d

    .line 466
    new-instance v1, Landroid/app/Notification$MessagingStyle$Message;

    iget-object v3, v0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    const-wide/16 v4, 0x0

    const-string v6, ""

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 468
    .local v1, "summary":Landroid/app/Notification$MessagingStyle$Message;
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3, v2, v10}, Lcom/android/internal/widget/ConversationLayout;->createMessages(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v1

    .line 469
    .local v1, "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    move-object v2, v1

    goto :goto_73

    .line 470
    .end local v1    # "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    :cond_6d
    nop

    .line 471
    invoke-direct {v0, v12, v2, v10}, Lcom/android/internal/widget/ConversationLayout;->createMessages(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 473
    .local v2, "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    :goto_73
    nop

    .line 474
    const/4 v1, 0x1

    invoke-direct {v0, v14, v1, v10}, Lcom/android/internal/widget/ConversationLayout;->createMessages(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v1

    .line 477
    .local v1, "newHistoricMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v4, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v5, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    move-object/from16 v3, v16

    .end local v16    # "user":Landroid/app/Person;
    .local v3, "user":Landroid/app/Person;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/ConversationLayout;->findGroups(Ljava/util/List;Ljava/util/List;Landroid/app/Person;Ljava/util/List;Ljava/util/List;)V

    .line 484
    move-object/from16 v19, v1

    move-object/from16 v22, v5

    .end local v1    # "newHistoricMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v3    # "user":Landroid/app/Person;
    .end local v5    # "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    .restart local v16    # "user":Landroid/app/Person;
    .local v19, "newHistoricMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local v22, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    if-eqz p3, :cond_b1

    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 485
    iget-boolean v1, v0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    move-object/from16 v20, v2

    .end local v2    # "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local v20, "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    iget-object v2, v0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v21, v4

    .end local v4    # "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local v21, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    iget-object v4, v0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iget v8, v0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    move-object/from16 v6, v16

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    .end local v16    # "user":Landroid/app/Person;
    .end local v20    # "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v21    # "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local v5, "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local v6, "user":Landroid/app/Person;
    .local v7, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/ConversationLayout;->loadConversationHeaderData(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/util/List;Landroid/app/Person;Ljava/util/List;I)Lcom/android/internal/widget/ConversationHeaderData;

    move-result-object v1

    move-object v2, v5

    move-object v4, v7

    move-object/from16 v23, v1

    .end local v5    # "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v6    # "user":Landroid/app/Person;
    .end local v7    # "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local v1, "conversationHeaderData":Lcom/android/internal/widget/ConversationHeaderData;
    .restart local v2    # "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .restart local v4    # "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .restart local v16    # "user":Landroid/app/Person;
    goto :goto_b4

    .line 490
    .end local v1    # "conversationHeaderData":Lcom/android/internal/widget/ConversationHeaderData;
    :cond_b1
    const/4 v1, 0x0

    move-object/from16 v23, v1

    .line 493
    .local v23, "conversationHeaderData":Lcom/android/internal/widget/ConversationHeaderData;
    :goto_b4
    move-object v1, v15

    .end local v15    # "history":[Landroid/app/RemoteInputHistoryItem;
    .local v1, "history":[Landroid/app/RemoteInputHistoryItem;
    new-instance v15, Lcom/android/internal/widget/MessagingData;

    iget-object v3, v0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    move-object/from16 v20, v2

    move-object/from16 v24, v3

    move-object/from16 v21, v4

    .end local v2    # "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v4    # "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .restart local v20    # "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .restart local v21    # "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    invoke-direct/range {v15 .. v24}, Lcom/android/internal/widget/MessagingData;-><init>(Landroid/app/Person;ZILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/internal/widget/ConversationHeaderData;Ljava/lang/CharSequence;)V

    .end local v20    # "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v21    # "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .restart local v2    # "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .restart local v4    # "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    return-object v15
.end method

.method private blacklist removeGroups(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;)V"
        }
    .end annotation

    .line 1017
    .local p1, "oldGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1018
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4b

    .line 1019
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingGroup;

    .line 1020
    .local v2, "group":Lcom/android/internal/widget/MessagingGroup;
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 1021
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v3

    .line 1022
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->isShown()Z

    move-result v4

    .line 1023
    .local v4, "wasShown":Z
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 1024
    if-eqz v4, :cond_39

    invoke-static {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 1025
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->addTransientView(Landroid/view/View;I)V

    .line 1026
    new-instance v5, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0, v2}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)V

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/MessagingGroup;->removeGroupAnimated(Ljava/lang/Runnable;)V

    goto :goto_3e

    .line 1033
    :cond_39
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    :goto_3e
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1036
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1018
    .end local v2    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v3    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v4    # "wasShown":Z
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1039
    .end local v1    # "i":I
    :cond_4b
    return-void
.end method

.method private blacklist resolveAvatarImageForFacePile(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "conversationIcon"    # Landroid/graphics/drawable/Icon;

    .line 1392
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->loadDrawableFromIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist resolveAvatarImageForOneToOne(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "conversationIcon"    # Landroid/graphics/drawable/Icon;

    .line 1369
    nop

    .line 1370
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->tryLoadingSizeRestrictedIconForOneToOne(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1371
    .local v0, "conversationIconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    .line 1372
    return-object v0

    .line 1375
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->loadDrawableFromIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private blacklist setConversationAvatarAndNameFromData(Lcom/android/internal/widget/ConversationHeaderData;)V
    .registers 9
    .param p1, "conversationHeaderData"    # Lcom/android/internal/widget/ConversationHeaderData;

    .line 688
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

    .line 691
    nop

    .line 692
    invoke-virtual {p1}, Lcom/android/internal/widget/ConversationHeaderData;->getConversationAvatar()Lcom/android/internal/widget/ConversationAvatarData;

    move-result-object v0

    .line 693
    .local v0, "conversationAvatar":Lcom/android/internal/widget/ConversationAvatarData;
    instance-of v1, v0, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;

    if-eqz v1, :cond_10

    .line 694
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;

    .line 696
    .local v1, "oneToOneConversationDrawable":Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;
    const/4 v2, 0x0

    .local v2, "groupConversationAvatarData":Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;
    goto :goto_14

    .line 698
    .end local v1    # "oneToOneConversationDrawable":Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;
    .end local v2    # "groupConversationAvatarData":Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;
    :cond_10
    const/4 v1, 0x0

    .line 699
    .restart local v1    # "oneToOneConversationDrawable":Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;
    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;

    .line 702
    .restart local v2    # "groupConversationAvatarData":Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;
    :goto_14
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_2b

    .line 703
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 704
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 705
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    iget-object v4, v1, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_41

    .line 707
    :cond_2b
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 709
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 711
    const v3, 0x10202ab

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    .line 712
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile(Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V

    .line 714
    :goto_41
    invoke-virtual {p1}, Lcom/android/internal/widget/ConversationHeaderData;->getConversationText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 715
    .local v3, "conversationText":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 716
    iget-boolean v4, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v4, :cond_52

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackChatName:Ljava/lang/CharSequence;

    goto :goto_54

    :cond_52
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackGroupChatName:Ljava/lang/CharSequence;

    :goto_54
    move-object v3, v4

    .line 718
    :cond_55
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/internal/widget/PeopleHelper;->maybeHideFirstSenderName(Ljava/util/List;ZLjava/lang/CharSequence;)V

    .line 722
    return-void
.end method

.method private blacklist setUser(Landroid/app/Person;)V
    .registers 4
    .param p1, "user"    # Landroid/app/Person;

    .line 1146
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    .line 1147
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 1148
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10806f1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 1150
    .local v0, "userIcon":Landroid/graphics/drawable/Icon;
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 1151
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v1}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    .line 1153
    .end local v0    # "userIcon":Landroid/graphics/drawable/Icon;
    :cond_2a
    return-void
.end method

.method private blacklist tryLoadingSizeRestrictedIconForOneToOne(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "conversationIcon"    # Landroid/graphics/drawable/Icon;

    .line 1381
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1382
    :catch_7
    move-exception v0

    .line 1383
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist updateActionListPadding()V
    .registers 3

    .line 725
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v0, :cond_12

    .line 726
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    const v1, 0x105007c

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->setCollapsibleIndentDimen(I)V

    .line 728
    :cond_12
    return-void
.end method

.method private blacklist updateAppName()V
    .registers 3

    .line 863
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 864
    return-void

    .line 867
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v1, :cond_10

    const/16 v1, 0x8

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ObservableTextView;->setVisibility(I)V

    .line 868
    return-void
.end method

.method private blacklist updateAppNameDividerVisibility()V
    .registers 3

    .line 1648
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1649
    return-void

    .line 1652
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameDivider:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    if-eqz v1, :cond_10

    const/16 v1, 0x8

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1653
    return-void
.end method

.method private blacklist updateContentEndPaddings()V
    .registers 7

    .line 1604
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1605
    return-void

    .line 1612
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    if-nez v0, :cond_f

    .line 1613
    const/4 v0, 0x0

    .line 1614
    .local v0, "headerPaddingEnd":I
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    .local v1, "contentPaddingEnd":I
    goto :goto_1a

    .line 1615
    .end local v0    # "headerPaddingEnd":I
    .end local v1    # "contentPaddingEnd":I
    :cond_f
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_16

    .line 1616
    const/4 v0, 0x0

    .line 1617
    .restart local v0    # "headerPaddingEnd":I
    const/4 v1, 0x0

    .restart local v1    # "contentPaddingEnd":I
    goto :goto_1a

    .line 1619
    .end local v0    # "headerPaddingEnd":I
    .end local v1    # "contentPaddingEnd":I
    :cond_16
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationHeaderExpandedPadding:I

    .line 1620
    .restart local v0    # "headerPaddingEnd":I
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    .line 1622
    .restart local v1    # "contentPaddingEnd":I
    :goto_1a
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 1623
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 1624
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 1626
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 1622
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1628
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 1629
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 1630
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 1632
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 1628
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1633
    return-void
.end method

.method private blacklist updateConversationLayout(Lcom/android/internal/widget/MessagingData;)V
    .registers 12
    .param p1, "messagingData"    # Lcom/android/internal/widget/MessagingData;

    .line 610
    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    if-nez v0, :cond_b

    .line 611
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->computeAndSetConversationAvatarAndName()V

    move-object v1, p0

    goto :goto_2e

    .line 613
    :cond_b
    nop

    .line 614
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getConversationHeaderData()Lcom/android/internal/widget/ConversationHeaderData;

    move-result-object v0

    .line 615
    .local v0, "conversationHeaderData":Lcom/android/internal/widget/ConversationHeaderData;
    if-nez v0, :cond_2a

    .line 616
    iget-boolean v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    .line 618
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getGroups()Ljava/util/List;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    .line 616
    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/widget/ConversationLayout;->loadConversationHeaderData(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/util/List;Landroid/app/Person;Ljava/util/List;I)Lcom/android/internal/widget/ConversationHeaderData;

    move-result-object v0

    goto :goto_2b

    .line 615
    :cond_2a
    move-object v1, p0

    .line 621
    :goto_2b
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->setConversationAvatarAndNameFromData(Lcom/android/internal/widget/ConversationHeaderData;)V

    .line 624
    .end local v0    # "conversationHeaderData":Lcom/android/internal/widget/ConversationHeaderData;
    :goto_2e
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppName()V

    .line 625
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateIconPositionAndSize()V

    .line 626
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateImageMessages()V

    .line 627
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updatePaddingsBasedOnContentAvailability()V

    .line 628
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateActionListPadding()V

    .line 629
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppNameDividerVisibility()V

    .line 630
    return-void
.end method

.method private blacklist updateExpandButton()V
    .registers 5

    .line 1568
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1569
    return-void

    .line 1574
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_10

    .line 1575
    const/16 v0, 0x11

    .line 1582
    .local v0, "buttonGravity":I
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

    .local v1, "newContainer":Landroid/view/ViewGroup;
    goto :goto_14

    .line 1584
    .end local v0    # "buttonGravity":I
    .end local v1    # "newContainer":Landroid/view/ViewGroup;
    :cond_10
    const/16 v0, 0x31

    .line 1585
    .restart local v0    # "buttonGravity":I
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainerA11yContainer:Landroid/view/ViewGroup;

    .line 1587
    .restart local v1    # "newContainer":Landroid/view/ViewGroup;
    :goto_14
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/NotificationExpandButton;->setExpanded(Z)V

    .line 1591
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v1, v2, :cond_37

    .line 1592
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1593
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1597
    :cond_37
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 1598
    invoke-virtual {v2}, Lcom/android/internal/widget/NotificationExpandButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1599
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1600
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/NotificationExpandButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1601
    return-void
.end method

.method private blacklist updateHistoricMessageVisibility()V
    .registers 13

    .line 1450
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1451
    .local v0, "numHistoric":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v1, v0, :cond_20

    .line 1452
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .line 1453
    .local v4, "existing":Lcom/android/internal/widget/MessagingMessage;
    iget-boolean v5, p0, Lcom/android/internal/widget/ConversationLayout;->mShowHistoricMessages:Z

    if-eqz v5, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    invoke-interface {v4, v2}, Lcom/android/internal/widget/MessagingMessage;->setVisibility(I)V

    .line 1451
    .end local v4    # "existing":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1455
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1456
    .local v1, "numGroups":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v1, :cond_68

    .line 1457
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingGroup;

    .line 1458
    .local v5, "group":Lcom/android/internal/widget/MessagingGroup;
    const/4 v6, 0x0

    .line 1459
    .local v6, "visibleChildren":I
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v7

    .line 1460
    .local v7, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 1461
    .local v8, "numGroupMessages":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3b
    if-ge v9, v8, :cond_4e

    .line 1462
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/MessagingMessage;

    .line 1463
    .local v10, "message":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v10}, Lcom/android/internal/widget/MessagingMessage;->getVisibility()I

    move-result v11

    if-eq v11, v3, :cond_4b

    .line 1464
    add-int/lit8 v6, v6, 0x1

    .line 1461
    .end local v10    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_4b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    .line 1467
    .end local v9    # "j":I
    :cond_4e
    if-lez v6, :cond_5a

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v9

    if-ne v9, v3, :cond_5a

    .line 1468
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    goto :goto_65

    .line 1469
    :cond_5a
    if-nez v6, :cond_65

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v9

    if-eq v9, v3, :cond_65

    .line 1470
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    .line 1456
    .end local v5    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v6    # "visibleChildren":I
    .end local v7    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v8    # "numGroupMessages":I
    :cond_65
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1473
    .end local v4    # "i":I
    :cond_68
    return-void
.end method

.method private blacklist updateIconPositionAndSize()V
    .registers 5

    .line 878
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 880
    return-void

    .line 885
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_10

    goto :goto_21

    .line 889
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 890
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusionFacePile:I

    goto :goto_1d

    .line 891
    :cond_1b
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusion:I

    :goto_1d
    nop

    .line 892
    .local v0, "badgeProtrusion":I
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    .local v1, "conversationAvatarSize":I
    goto :goto_25

    .line 886
    .end local v0    # "badgeProtrusion":I
    .end local v1    # "conversationAvatarSize":I
    :cond_21
    :goto_21
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mBadgeProtrusion:I

    .line 887
    .restart local v0    # "badgeProtrusion":I
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    .line 895
    .restart local v1    # "conversationAvatarSize":I
    :goto_25
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_44

    .line 896
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 897
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 898
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 899
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 900
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 901
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 902
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/CachingIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_44
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5f

    .line 906
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 907
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 908
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 909
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 910
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5f
    return-void
.end method

.method private blacklist updateImageMessages()V
    .registers 5

    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    if-nez v0, :cond_5

    .line 732
    return-void

    .line 734
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->getNewImageMessage()Landroid/view/View;

    move-result-object v0

    .line 736
    .local v0, "newMessage":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 737
    .local v1, "previousMessage":Landroid/view/View;
    if-eq v1, v0, :cond_1e

    .line 738
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 739
    if-eqz v0, :cond_1e

    .line 740
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;)V

    .line 743
    :cond_1e
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    const/16 v2, 0x8

    :goto_25
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setVisibility(I)V

    .line 744
    return-void
.end method

.method private blacklist updatePaddingsBasedOnContentAvailability()V
    .registers 7

    .line 915
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 917
    return-void

    .line 921
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 922
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingStandard:I

    goto :goto_12

    :cond_10
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingGroup:I

    .line 921
    :goto_12
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setSpacing(I)V

    .line 924
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_1e

    goto :goto_21

    .line 928
    :cond_1e
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupMessagePadding:I

    goto :goto_22

    .line 925
    :cond_21
    :goto_21
    const/4 v0, 0x0

    .line 928
    :goto_22
    nop

    .line 930
    .local v0, "messagingPadding":I
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v1, :cond_2c

    goto :goto_2f

    .line 932
    :cond_2c
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPaddingExpandedGroup:I

    goto :goto_31

    .line 931
    :cond_2f
    :goto_2f
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPadding:I

    .line 932
    :goto_31
    nop

    .line 934
    .local v1, "iconPadding":I
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 935
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 937
    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 938
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 934
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 940
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 941
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 943
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingEnd()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 944
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingBottom()I

    move-result v5

    .line 940
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->setPaddingRelative(IIII)V

    .line 945
    return-void
.end method

.method private blacklist updateTitleAndNamesDisplay()V
    .registers 10

    .line 1043
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefix(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 1046
    .local v0, "uniqueNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1047
    .local v1, "cachedAvatars":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 1049
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 1050
    .local v3, "group":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-ne v4, v5, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    .line 1051
    .local v4, "isOwnMessage":Z
    :goto_29
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1052
    .local v5, "senderName":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_55

    iget-boolean v6, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v6, :cond_44

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v6, :cond_44

    if-nez v4, :cond_44

    .line 1054
    goto :goto_55

    .line 1056
    :cond_44
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1057
    .local v6, "symbol":Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/widget/MessagingGroup;->getAvatarSymbolIfMatching(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 1059
    .local v7, "cachedIcon":Landroid/graphics/drawable/Icon;
    if-eqz v7, :cond_55

    .line 1060
    invoke-virtual {v1, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    .end local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "isOwnMessage":Z
    .end local v5    # "senderName":Ljava/lang/CharSequence;
    .end local v6    # "symbol":Ljava/lang/String;
    .end local v7    # "cachedIcon":Landroid/graphics/drawable/Icon;
    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1064
    .end local v2    # "i":I
    :cond_58
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_59
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b7

    .line 1066
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 1067
    .restart local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1068
    .local v4, "senderName":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v5

    if-eqz v5, :cond_b4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 1069
    goto :goto_b4

    .line 1071
    :cond_7a
    iget-boolean v5, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v5, :cond_90

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v5, :cond_90

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-eq v5, v6, :cond_90

    .line 1072
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    goto :goto_b4

    .line 1074
    :cond_90
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 1075
    .local v5, "cachedIcon":Landroid/graphics/drawable/Icon;
    if-nez v5, :cond_a9

    .line 1076
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 1077
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    .line 1076
    invoke-virtual {v6, v4, v7, v8}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 1078
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    :cond_a9
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setCreatedAvatar(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 1064
    .end local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "senderName":Ljava/lang/CharSequence;
    .end local v5    # "cachedIcon":Landroid/graphics/drawable/Icon;
    :cond_b4
    :goto_b4
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 1084
    .end local v2    # "i":I
    :cond_b7
    return-void
.end method


# virtual methods
.method public blacklist bindFacePile(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 15
    .param p1, "bottomBackground"    # Landroid/widget/ImageView;
    .param p2, "bottomView"    # Landroid/widget/ImageView;
    .param p3, "topView"    # Landroid/widget/ImageView;

    .line 761
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->applyNotificationBackgroundColor(Landroid/widget/ImageView;)V

    .line 763
    const/4 v0, 0x0

    .line 764
    .local v0, "secondLastIcon":Landroid/graphics/drawable/Icon;
    const/4 v1, 0x0

    .line 765
    .local v1, "lastKey":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 766
    .local v2, "lastIcon":Landroid/graphics/drawable/Icon;
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 767
    .local v3, "userKey":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_14
    if-ltz v4, :cond_5c

    .line 768
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingGroup;

    .line 769
    .local v6, "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v7

    .line 770
    .local v7, "messageSender":Landroid/app/Person;
    const/4 v8, 0x0

    if-eqz v7, :cond_31

    .line 771
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_31

    move v9, v5

    goto :goto_32

    :cond_31
    move v9, v8

    .line 772
    .local v9, "notUser":Z
    :goto_32
    if-eqz v7, :cond_40

    .line 773
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_40

    move v8, v5

    goto :goto_41

    :cond_40
    nop

    .line 774
    .local v8, "notIncluded":Z
    :goto_41
    if-eqz v9, :cond_45

    if-nez v8, :cond_49

    :cond_45
    if-nez v4, :cond_59

    if-nez v1, :cond_59

    .line 776
    :cond_49
    if-nez v2, :cond_54

    .line 777
    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 778
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_59

    .line 780
    :cond_54
    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 781
    goto :goto_5c

    .line 767
    .end local v6    # "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v7    # "messageSender":Landroid/app/Person;
    .end local v8    # "notIncluded":Z
    .end local v9    # "notUser":Z
    :cond_59
    :goto_59
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 785
    .end local v4    # "i":I
    :cond_5c
    :goto_5c
    const-string v4, ""

    if-nez v2, :cond_6a

    .line 786
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    const-string v6, " "

    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 788
    :cond_6a
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 789
    if-nez v0, :cond_77

    .line 790
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget v6, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v5, v4, v4, v6}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 792
    :cond_77
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 793
    return-void
.end method

.method public blacklist bindFacePileWithDrawable(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V
    .registers 6
    .param p1, "bottomBackground"    # Landroid/widget/ImageView;
    .param p2, "bottomView"    # Landroid/widget/ImageView;
    .param p3, "topView"    # Landroid/widget/ImageView;
    .param p4, "groupConversationAvatarData"    # Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;

    .line 857
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->applyNotificationBackgroundColor(Landroid/widget/ImageView;)V

    .line 858
    iget-object v0, p4, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;->mLastIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 859
    iget-object v0, p4, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;->mSecondLastIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 860
    return-void
.end method

.method public blacklist getConversationHeaderData()Lcom/android/internal/widget/ConversationHeaderData;
    .registers 2

    .line 1723
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

    return-object v0
.end method

.method public blacklist getConversationIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 1718
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getConversationSenderName()Ljava/lang/CharSequence;
    .registers 5

    .line 1680
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1681
    const/4 v0, 0x0

    return-object v0

    .line 1683
    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1684
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040311

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getConversationText()Ljava/lang/CharSequence;
    .registers 9

    .line 1693
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 1694
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    return-object v0

    .line 1696
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1697
    return-object v1

    .line 1699
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingMessage;

    .line 1700
    .local v0, "messagingMessage":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v2

    if-nez v2, :cond_28

    goto :goto_30

    .line 1701
    :cond_28
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_30
    nop

    .line 1702
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_59

    instance-of v2, v0, Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v2, :cond_59

    .line 1703
    nop

    .line 1704
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040310

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1705
    .local v2, "unformatted":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1706
    .local v3, "spannableString":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1709
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 1706
    const/4 v6, 0x0

    const/16 v7, 0x11

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1711
    return-object v3

    .line 1713
    .end local v2    # "unformatted":Ljava/lang/String;
    .end local v3    # "spannableString":Landroid/text/SpannableString;
    :cond_59
    return-object v1
.end method

.method public blacklist getConversationTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1013
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getImageMessageContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 1560
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method public blacklist getMessagingGroups()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation

    .line 1564
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;
    .registers 2

    .line 1556
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method public blacklist isImportantConversation()Z
    .registers 2

    .line 393
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    return v0
.end method

.method public blacklist isOneToOne()Z
    .registers 2

    .line 1688
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 6

    .line 191
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    .line 193
    const v0, 0x1020437

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 194
    const v0, 0x10201ef

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationActionListLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    .line 195
    const v0, 0x10202b5

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 199
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 200
    .local v1, "size":I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    .line 201
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ConversationLayout;->setMessagingClippingDisabled(Z)V

    .line 202
    const v2, 0x10202b0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    .line 203
    const v2, 0x10202b4

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 204
    const v2, 0x1020006

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 205
    const v2, 0x10202ff

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    .line 207
    const v2, 0x10202b3

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    .line 208
    const v2, 0x10202b1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    .line 209
    const v2, 0x10202b2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    .line 210
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v4, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/CachingIconView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 243
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v4, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    .line 249
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    new-instance v4, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    .line 254
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 255
    const v2, 0x1020016

    goto :goto_c9

    :cond_c6
    const v2, 0x10202b6

    .line 254
    :goto_c9
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    .line 256
    const v2, 0x10202f2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    .line 257
    nop

    .line 258
    const v2, 0x10202f0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainerA11yContainer:Landroid/view/ViewGroup;

    .line 259
    const v2, 0x10202af

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 260
    const v2, 0x102042a

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 261
    const v2, 0x10202f1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

    .line 262
    const v2, 0x10202ef

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/NotificationExpandButton;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10502cd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingStandard:I

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10502ce

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingGroup:I

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050139

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationHeaderExpandedPadding:I

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10502a9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105012d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mBadgeProtrusion:I

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105012b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105012c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105013c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPaddingExpandedGroup:I

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105013b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPadding:I

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050187

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupMessagePadding:I

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105012e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusion:I

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105012f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusionFacePile:I

    .line 287
    const v2, 0x10202ab

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050135

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSize:I

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050136

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSizeExpandedGroup:I

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050137

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidth:I

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050138

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidthExpanded:I

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1040313

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackChatName:Ljava/lang/CharSequence;

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1040312

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackGroupChatName:Ljava/lang/CharSequence;

    .line 300
    const v2, 0x1020219

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ObservableTextView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    .line 301
    const v2, 0x1020218

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameDivider:Landroid/view/View;

    .line 302
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ObservableTextView;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_220

    const/4 v3, 0x1

    :cond_220
    iput-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    .line 303
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    new-instance v3, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ObservableTextView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 306
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1508
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1509
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
    iget-object v1, p1, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1510
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/ConversationLayout$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ConversationLayout$2;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1528
    :cond_1d
    iget-object v1, p1, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    invoke-virtual {v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->clear()V

    .line 1529
    iget-object v1, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_94

    .line 1530
    iget v1, p1, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    iget-object v2, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1531
    .local v1, "width":F
    iget v2, p1, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    iget-object v3, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1532
    .local v2, "height":F
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1533
    .local v3, "feedbackTouchRect":Landroid/graphics/Rect;
    iget-object v4, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-float v6, v1, v5

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1535
    iget-object v4, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v6, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v5

    div-float v5, v2, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1537
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1538
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1540
    iget-object v4, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/ConversationLayout;->getRelativeTouchRect(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1541
    iget-object v4, p1, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    new-instance v5, Landroid/view/TouchDelegate;

    iget-object v6, p1, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-direct {v5, v3, v6}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->add(Landroid/view/TouchDelegate;)V

    .line 1544
    .end local v1    # "width":F
    .end local v2    # "height":F
    .end local v3    # "feedbackTouchRect":Landroid/graphics/Rect;
    :cond_94
    iget-object v1, p1, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ConversationLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 1545
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1478
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1485
    invoke-static {}, Landroid/widget/flags/Flags;->conversationLayoutUseMaximumChildHeight()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1486
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getMeasuredHeight()I

    move-result v0

    .line 1487
    .local v0, "maxHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getChildCount()I

    move-result v1

    .line 1489
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_3b

    .line 1490
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1491
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_38

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_23

    .line 1492
    goto :goto_38

    .line 1495
    :cond_23
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1496
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 1497
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 1496
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1489
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1499
    .end local v2    # "i":I
    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1500
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getMeasuredHeight()I

    move-result v2

    if-eq v0, v2, :cond_50

    .line 1501
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/ConversationLayout;->setMeasuredDimension(II)V

    .line 1504
    .end local v0    # "maxHeight":I
    .end local v1    # "count":I
    :cond_50
    return-void
.end method

.method public blacklist setAvatarReplacement(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 310
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    .line 311
    return-void
.end method

.method public blacklist setConversationTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setConversationTitleAsync"
    .end annotation

    .line 1005
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 1006
    return-void
.end method

.method public blacklist setConversationTitleAsync(Ljava/lang/CharSequence;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 988
    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    if-nez v0, :cond_c

    .line 989
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/CharSequence;)V

    return-object v0

    .line 993
    :cond_c
    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 994
    sget-object v0, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setDataAsync"
    .end annotation

    .line 437
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/widget/ConversationLayout;->parseMessagingData(Landroid/os/Bundle;ZZ)Lcom/android/internal/widget/MessagingData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->bind(Lcom/android/internal/widget/MessagingData;)V

    .line 440
    return-void
.end method

.method public blacklist setDataAsync(Landroid/os/Bundle;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 508
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    if-nez v0, :cond_a

    .line 509
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/os/Bundle;)V

    return-object v0

    .line 512
    :cond_a
    nop

    .line 513
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/widget/ConversationLayout;->parseMessagingData(Landroid/os/Bundle;ZZ)Lcom/android/internal/widget/MessagingData;

    move-result-object v0

    .line 517
    .local v0, "messagingData":Lcom/android/internal/widget/MessagingData;
    new-instance v1, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingData;)V

    return-object v1
.end method

.method public blacklist setImageResolver(Lcom/android/internal/widget/ImageResolver;)V
    .registers 2
    .param p1, "resolver"    # Lcom/android/internal/widget/ImageResolver;

    .line 542
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    .line 543
    return-void
.end method

.method public blacklist setIsCollapsed(Z)V
    .registers 4
    .param p1, "isCollapsed"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setIsCollapsedAsync"
    .end annotation

    .line 403
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    .line 404
    const v0, 0x7fffffff

    .line 405
    .local v0, "maxLines":I
    if-eqz p1, :cond_1a

    .line 406
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 407
    const/4 v0, 0x3

    goto :goto_1a

    .line 409
    :cond_11
    invoke-static {}, Landroid/app/Flags;->nmCollapsedLines()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 410
    const/4 v0, 0x2

    goto :goto_1a

    .line 412
    :cond_19
    const/4 v0, 0x1

    .line 416
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->setMaxDisplayedLines(I)V

    .line 417
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateExpandButton()V

    .line 418
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateContentEndPaddings()V

    .line 419
    return-void
.end method

.method public blacklist setIsCollapsedAsync(Z)Ljava/lang/Runnable;
    .registers 3
    .param p1, "isCollapsed"    # Z

    .line 426
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    .line 427
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/widget/ConversationLayout;Z)V

    return-object v0
.end method

.method public blacklist setIsImportantConversation(Z)V
    .registers 3
    .param p1, "isImportantConversation"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ConversationLayout;->setIsImportantConversation(ZZ)V

    .line 324
    return-void
.end method

.method public blacklist setIsImportantConversation(ZZ)V
    .registers 21
    .param p1, "isImportantConversation"    # Z
    .param p2, "animate"    # Z

    .line 330
    move-object/from16 v0, p0

    move/from16 v1, p1

    iput-boolean v1, v0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    .line 331
    iget-object v2, v0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_17

    iget-object v5, v0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v5}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_17

    .line 332
    move v3, v4

    goto :goto_18

    :cond_17
    nop

    .line 331
    :goto_18
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 334
    if-eqz p2, :cond_cd

    if-eqz v1, :cond_cd

    .line 335
    iget-object v2, v0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 336
    .local v2, "ring":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 337
    iget-object v3, v0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v3}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 338
    .local v3, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 339
    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 340
    const v6, 0x10601fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 341
    .local v5, "ringColor":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 342
    const v7, 0x10501b6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 343
    .local v6, "standardThickness":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 344
    const v8, 0x10501b4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 345
    .local v7, "largeThickness":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10501b5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 347
    .local v8, "standardSize":I
    mul-int/lit8 v9, v6, 0x2

    sub-int v9, v8, v9

    .line 348
    .local v9, "baseSize":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 349
    const v11, 0x105013d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 351
    .local v10, "bgSize":I
    new-instance v11, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda6;

    invoke-direct {v11, v0, v2, v5, v9}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;II)V

    .line 359
    .local v11, "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    int-to-float v12, v7

    const/4 v13, 0x2

    new-array v14, v13, [F

    const/4 v15, 0x0

    aput v15, v14, v4

    const/4 v15, 0x1

    aput v12, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 360
    .local v12, "growAnimation":Landroid/animation/ValueAnimator;
    sget-object v14, Lcom/android/internal/widget/ConversationLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 361
    move v14, v4

    move/from16 v16, v5

    .end local v5    # "ringColor":I
    .local v16, "ringColor":I
    const-wide/16 v4, 0xfa

    invoke-virtual {v12, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 362
    invoke-virtual {v12, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 364
    int-to-float v4, v7

    int-to-float v5, v6

    move/from16 v17, v14

    new-array v14, v13, [F

    aput v4, v14, v17

    aput v5, v14, v15

    .line 365
    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 366
    .local v4, "shrinkAnimation":Landroid/animation/ValueAnimator;
    const-wide/16 v13, 0xc8

    invoke-virtual {v4, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    const-wide/16 v13, 0x19

    invoke-virtual {v4, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 368
    sget-object v13, Lcom/android/internal/widget/ConversationLayout;->OVERSHOOT:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 369
    invoke-virtual {v4, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 370
    new-instance v13, Lcom/android/internal/widget/ConversationLayout$1;

    invoke-direct {v13, v0, v3, v9, v10}, Lcom/android/internal/widget/ConversationLayout$1;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;II)V

    invoke-virtual {v4, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 387
    .local v13, "anims":Landroid/animation/AnimatorSet;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v12, v5, v17

    aput-object v4, v5, v15

    invoke-virtual {v13, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 388
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 390
    .end local v2    # "ring":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "bg":Landroid/graphics/drawable/GradientDrawable;
    .end local v4    # "shrinkAnimation":Landroid/animation/ValueAnimator;
    .end local v6    # "standardThickness":I
    .end local v7    # "largeThickness":I
    .end local v8    # "standardSize":I
    .end local v9    # "baseSize":I
    .end local v10    # "bgSize":I
    .end local v11    # "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .end local v12    # "growAnimation":Landroid/animation/ValueAnimator;
    .end local v13    # "anims":Landroid/animation/AnimatorSet;
    .end local v16    # "ringColor":I
    :cond_cd
    return-void
.end method

.method public blacklist setIsOneToOne(Z)V
    .registers 2
    .param p1, "oneToOne"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setIsOneToOneAsync"
    .end annotation

    .line 1118
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    .line 1119
    return-void
.end method

.method public blacklist setIsOneToOneAsync(Z)Ljava/lang/Runnable;
    .registers 3
    .param p1, "oneToOne"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1109
    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1110
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/widget/ConversationLayout;Z)V

    return-object v0

    .line 1112
    :cond_c
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    .line 1113
    sget-object v0, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist setLargeIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLargeIconAsync"
    .end annotation

    .line 962
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 963
    return-void
.end method

.method public blacklist setLargeIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 952
    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    if-nez v0, :cond_c

    .line 953
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/Icon;)V

    return-object v0

    .line 956
    :cond_c
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 957
    sget-object v0, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist setLayoutColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutColorAsync"
    .end annotation

    .line 1101
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    .line 1102
    return-void
.end method

.method public blacklist setLayoutColorAsync(I)Ljava/lang/Runnable;
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1091
    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1092
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/widget/ConversationLayout;I)V

    return-object v0

    .line 1095
    :cond_c
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    .line 1096
    sget-object v0, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist setMessageTextColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1142
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageTextColor:I

    .line 1143
    return-void
.end method

.method public blacklist setMessagingClippingDisabled(Z)V
    .registers 4
    .param p1, "clippingDisabled"    # Z

    .line 1675
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    :goto_8
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 1676
    return-void
.end method

.method public blacklist setNameReplacement(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "nameReplacement"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 316
    return-void
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1132
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationBackgroundColor:I

    .line 1133
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->applyNotificationBackgroundColor(Landroid/widget/ImageView;)V

    .line 1134
    return-void
.end method

.method public blacklist setPrecomputedTextEnabled(Z)V
    .registers 2
    .param p1, "precomputedTextEnabled"    # Z

    .line 531
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    .line 532
    return-void
.end method

.method public blacklist setSenderTextColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1123
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mSenderTextColor:I

    .line 1124
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1125
    return-void
.end method

.method public blacklist setShortcutIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "shortcutIcon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setShortcutIconAsync"
    .end annotation

    .line 980
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 981
    return-void
.end method

.method public blacklist setShortcutIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "shortcutIcon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 970
    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    if-nez v0, :cond_c

    .line 971
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/Icon;)V

    return-object v0

    .line 974
    :cond_c
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 975
    sget-object v0, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist setUnreadCount(I)V
    .registers 3
    .param p1, "unreadCount"    # I

    .line 549
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NotificationExpandButton;->setNumber(I)V

    .line 550
    return-void
.end method

.method public blacklist shouldHideAppName()Z
    .registers 2

    .line 871
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    return v0
.end method

.method public blacklist showHistoricMessages(Z)V
    .registers 2
    .param p1, "show"    # Z

    .line 1445
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mShowHistoricMessages:Z

    .line 1446
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateHistoricMessageVisibility()V

    .line 1447
    return-void
.end method

.method public blacklist updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .registers 6
    .param p1, "expandable"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 1656
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1657
    return-void

    .line 1660
    :cond_7
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 1661
    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 1662
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1663
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/NotificationExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1664
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_29

    .line 1666
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1667
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1669
    :goto_29
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NotificationExpandButton;->setVisibility(I)V

    .line 1670
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateContentEndPaddings()V

    .line 1671
    return-void
.end method
