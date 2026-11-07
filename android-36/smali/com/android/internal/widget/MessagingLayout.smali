.class public Lcom/android/internal/widget/MessagingLayout;
.super Landroid/widget/FrameLayout;
.source "MessagingLayout.java"

# interfaces
.implements Lcom/android/internal/widget/ImageMessageConsumer;
.implements Lcom/android/internal/widget/IMessagingLayout;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final blacklist FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static final blacklist MAX_SUMMARIZATION_LINES:I = 0x3

.field public static final blacklist MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final blacklist mAddedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAvatarReplacement:Landroid/graphics/drawable/Icon;

.field private blacklist mConversationTitle:Ljava/lang/CharSequence;

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

.field private blacklist mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private blacklist mImageResolver:Lcom/android/internal/widget/ImageResolver;

.field private blacklist mIsCollapsed:Z

.field private blacklist mIsOneToOne:Z

.field private blacklist mLayoutColor:I

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

.field private blacklist mNameReplacement:Ljava/lang/CharSequence;

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

.field private blacklist mPrecomputedTextEnabled:Z

.field private blacklist mRightIconView:Landroid/widget/ImageView;

.field private blacklist mSenderTextColor:I

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

.field private blacklist mUser:Landroid/app/Person;


# direct methods
.method public static synthetic blacklist $r8$lambda$248fl5uqIjPq-VF87Aq8LbUGTVg(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingGroup;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->lambda$createGroupViews$11(Lcom/android/internal/widget/MessagingGroup;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$2IQiR5jlqUQ2crHAMR5gMW2Elto(Lcom/android/internal/widget/MessagingLayout;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->lambda$setDataAsync$4(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$War0eaoA5eHkVDhSMCji9RudPPw(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->lambda$setDataAsync$5(Lcom/android/internal/widget/MessagingData;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$isLf-hDmp9snEpE2jDJ6mNvzQuM(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->lambda$removeGroups$6(Lcom/android/internal/widget/MessagingGroup;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAddedGroups(Lcom/android/internal/widget/MessagingLayout;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 64
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 65
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 67
    new-instance v0, Lcom/android/internal/widget/MessagingPropertyAnimator;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    .line 95
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    .line 99
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    .line 109
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

    .line 296
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    if-eqz p2, :cond_32

    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_32

    .line 299
    :cond_6
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_31

    .line 300
    aget-object v1, p2, v0

    .line 301
    .local v1, "historyMessage":Landroid/app/RemoteInputHistoryItem;
    new-instance v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 302
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    .line 303
    .local v2, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 304
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    .line 306
    :cond_2b
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v1    # "historyMessage":Landroid/app/RemoteInputHistoryItem;
    .end local v2    # "message":Landroid/app/Notification$MessagingStyle$Message;
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 308
    .end local v0    # "i":I
    :cond_31
    return-void

    .line 297
    :cond_32
    :goto_32
    return-void
.end method

.method private blacklist bind(Lcom/android/internal/widget/MessagingData;)V
    .registers 7
    .param p1, "messagingData"    # Lcom/android/internal/widget/MessagingData;

    .line 311
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getUser()Landroid/app/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->setUser(Landroid/app/Person;)V

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 315
    .local v0, "oldGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getSenders()Ljava/util/List;

    move-result-object v2

    .line 316
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getShowSpinner()Z

    move-result v3

    .line 315
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/MessagingLayout;->createGroupViews(Ljava/util/List;Ljava/util/List;Z)V

    .line 319
    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->removeGroups(Ljava/util/ArrayList;)V

    .line 322
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    .line 323
    .local v2, "message":Lcom/android/internal/widget/MessagingMessage;
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    .line 324
    .end local v2    # "message":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_26

    .line 325
    :cond_38
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    .line 326
    .local v2, "historicMessage":Lcom/android/internal/widget/MessagingMessage;
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    .line 327
    .end local v2    # "historicMessage":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_3e

    .line 329
    :cond_50
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getNewMessagingMessages()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    .line 330
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getHistoricMessagingMessages()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    .line 332
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateHistoricMessageVisibility()V

    .line 333
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateTitleAndNamesDisplay()V

    .line 335
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/PeopleHelper;->maybeHideFirstSenderName(Ljava/util/List;ZLjava/lang/CharSequence;)V

    .line 336
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateImageMessages()V

    .line 339
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 340
    .local v2, "child":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-interface {v2}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->recycle()V

    .line 341
    .end local v2    # "child":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    goto :goto_76

    .line 342
    :cond_86
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 343
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

    .line 525
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local p2, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 526
    const/4 v0, 0x0

    .local v0, "groupIndex":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e9

    .line 527
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 528
    .local v1, "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v2, 0x0

    .line 530
    .local v2, "newGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "messageIndex":I
    :goto_19
    if-ltz v3, :cond_2b

    .line 531
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingMessage;

    .line 532
    .local v5, "message":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v5}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v2

    .line 533
    if-eqz v2, :cond_28

    .line 534
    goto :goto_2b

    .line 530
    .end local v5    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 537
    .end local v3    # "messageIndex":I
    :cond_2b
    :goto_2b
    if-nez v2, :cond_39

    .line 538
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-static {v3}, Lcom/android/internal/widget/MessagingGroup;->createGroup(Lcom/android/internal/widget/MessagingLinearLayout;)Lcom/android/internal/widget/MessagingGroup;

    move-result-object v2

    .line 539
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 540
    :cond_39
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-ne v3, v5, :cond_c0

    .line 545
    :goto_41
    iget-boolean v3, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_48

    .line 546
    const/4 v3, 0x2

    goto :goto_49

    .line 547
    :cond_48
    move v3, v5

    .line 545
    :goto_49
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setImageDisplayLocation(I)V

    .line 548
    invoke-virtual {v2, v5}, Lcom/android/internal/widget/MessagingGroup;->setIsInConversation(Z)V

    .line 549
    iget v3, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    .line 550
    iget v3, p0, Lcom/android/internal/widget/MessagingLayout;->mSenderTextColor:I

    iget v6, p0, Lcom/android/internal/widget/MessagingLayout;->mMessageTextColor:I

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    .line 551
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 552
    .local v3, "sender":Landroid/app/Person;
    const/4 v6, 0x0

    .line 553
    .local v6, "nameOverride":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    if-eq v3, v7, :cond_6c

    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    if-eqz v7, :cond_6c

    .line 554
    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 556
    :cond_6c
    iget-boolean v7, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    if-eqz v7, :cond_82

    .line 557
    invoke-static {}, Landroid/app/Flags;->nmCollapsedLines()Z

    move-result v7

    if-nez v7, :cond_80

    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_80

    move v7, v4

    goto :goto_83

    :cond_80
    move v7, v5

    goto :goto_83

    .line 558
    :cond_82
    move v7, v5

    .line 556
    :goto_83
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/MessagingGroup;->setSingleLine(Z)V

    .line 559
    iget-boolean v7, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    xor-int/2addr v7, v4

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/MessagingGroup;->setShowingAvatar(Z)V

    .line 560
    iget-boolean v7, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/MessagingGroup;->setIsCollapsed(Z)V

    .line 561
    invoke-virtual {v2, v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setSender(Landroid/app/Person;Ljava/lang/CharSequence;)V

    .line 562
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v0, v7, :cond_9e

    if-eqz p3, :cond_9e

    goto :goto_9f

    :cond_9e
    move v4, v5

    :goto_9f
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/MessagingGroup;->setSending(Z)V

    .line 563
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_b9

    .line 566
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 567
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    .line 569
    :cond_b9
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/MessagingGroup;->setMessages(Ljava/util/List;)V

    .line 526
    .end local v1    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v2    # "newGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v3    # "sender":Landroid/app/Person;
    .end local v6    # "nameOverride":Ljava/lang/CharSequence;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 541
    .restart local v1    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .restart local v2    # "newGroup":Lcom/android/internal/widget/MessagingGroup;
    :cond_c0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "group parent was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 542
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 572
    .end local v0    # "groupIndex":I
    .end local v1    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v2    # "newGroup":Lcom/android/internal/widget/MessagingGroup;
    :cond_e9
    invoke-static {}, Landroid/widget/flags/Flags;->dropNonExistingMessages()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 574
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/widget/MessagingLayout;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 577
    :cond_f9
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

    .line 619
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 621
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 622
    .local v2, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-direct {p0, v2}, Lcom/android/internal/widget/MessagingLayout;->findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 623
    .local v3, "message":Lcom/android/internal/widget/MessagingMessage;
    if-nez v3, :cond_1e

    .line 624
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    invoke-static {p0, v2, v4, p3}, Lcom/android/internal/widget/MessagingMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;Z)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 627
    :cond_1e
    invoke-interface {v3, p2}, Lcom/android/internal/widget/MessagingMessage;->setIsHistoric(Z)V

    .line 628
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    .end local v2    # "m":Landroid/app/Notification$MessagingStyle$Message;
    .end local v3    # "message":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 630
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

    .line 283
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

    .line 284
    .local v1, "messagingMessage":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->finalizeInflate()V

    .line 285
    .end local v1    # "messagingMessage":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_4

    .line 286
    :cond_14
    return-void
.end method

.method private blacklist findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;
    .registers 5
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 634
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 635
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 636
    .local v1, "existing":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 637
    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 638
    return-object v1

    .line 634
    .end local v1    # "existing":Lcom/android/internal/widget/MessagingMessage;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 641
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_21
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 642
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 643
    .restart local v1    # "existing":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 644
    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 645
    return-object v1

    .line 641
    .end local v1    # "existing":Lcom/android/internal/widget/MessagingMessage;
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 648
    .end local v0    # "i":I
    :cond_40
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist findGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;)V"
        }
    .end annotation

    .line 582
    .local p1, "historicMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p3, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local p4, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    const/4 v0, 0x0

    .line 583
    .local v0, "currentSenderKey":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 584
    .local v1, "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 585
    .local v2, "histSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_69

    .line 587
    if-ge v3, v2, :cond_17

    .line 588
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .local v4, "message":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_1f

    .line 590
    .end local v4    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_17
    sub-int v4, v3, v2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .line 592
    .restart local v4    # "message":Lcom/android/internal/widget/MessagingMessage;
    :goto_1f
    const/4 v5, 0x1

    if-nez v1, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    const/4 v6, 0x0

    .line 594
    .local v6, "isNewGroup":Z
    :goto_25
    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_2e

    move-object v7, v8

    goto :goto_36

    :cond_2e
    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    .line 595
    .local v7, "sender":Landroid/app/Person;
    :goto_36
    if-nez v7, :cond_39

    goto :goto_48

    .line 596
    :cond_39
    invoke-virtual {v7}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_44

    invoke-virtual {v7}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_48

    :cond_44
    invoke-virtual {v7}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v8

    :goto_48
    nop

    .line 597
    .local v8, "key":Ljava/lang/CharSequence;
    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v5, v9

    or-int/2addr v5, v6

    .line 598
    .end local v6    # "isNewGroup":Z
    .local v5, "isNewGroup":Z
    if-eqz v5, :cond_63

    .line 599
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .end local v1    # "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local v6, "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    if-nez v7, :cond_5e

    .line 602
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    move-object v7, v1

    .line 604
    :cond_5e
    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    move-object v0, v8

    move-object v1, v6

    .line 607
    .end local v6    # "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .restart local v1    # "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    :cond_63
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    .end local v4    # "message":Lcom/android/internal/widget/MessagingMessage;
    .end local v5    # "isNewGroup":Z
    .end local v7    # "sender":Landroid/app/Person;
    .end local v8    # "key":Ljava/lang/CharSequence;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 609
    .end local v3    # "i":I
    :cond_69
    return-void
.end method

.method private blacklist getNewImageMessage()Landroid/view/View;
    .registers 4

    .line 370
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    .line 374
    .local v0, "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v1

    .line 375
    .local v1, "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    if-eqz v1, :cond_1f

    .line 376
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingImageMessage;->getView()Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 379
    .end local v0    # "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v1    # "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic blacklist lambda$createGroupViews$11(Lcom/android/internal/widget/MessagingGroup;)Z
    .registers 3
    .param p1, "messagingGroup"    # Lcom/android/internal/widget/MessagingGroup;

    .line 575
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$removeGroups$6(Lcom/android/internal/widget/MessagingGroup;)V
    .registers 3
    .param p1, "group"    # Lcom/android/internal/widget/MessagingGroup;

    .line 394
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeTransientView(Landroid/view/View;)V

    .line 395
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->recycle()V

    .line 396
    return-void
.end method

.method static synthetic blacklist lambda$setAvatarReplacementAsync$0()V
    .registers 0

    .line 136
    return-void
.end method

.method static synthetic blacklist lambda$setConversationTitleAsync$3()V
    .registers 0

    .line 195
    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$4(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->setData(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$5(Lcom/android/internal/widget/MessagingData;)V
    .registers 3
    .param p1, "messagingData"    # Lcom/android/internal/widget/MessagingData;

    .line 268
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getHistoricMessagingMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->finalizeInflate(Ljava/util/List;)V

    .line 269
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getNewMessagingMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->finalizeInflate(Ljava/util/List;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->bind(Lcom/android/internal/widget/MessagingData;)V

    .line 271
    return-void
.end method

.method static synthetic blacklist lambda$setIsCollapsedAsync$2()V
    .registers 0

    .line 172
    return-void
.end method

.method static synthetic blacklist lambda$setIsOneToOneAsync$8()V
    .registers 0

    .line 477
    return-void
.end method

.method static synthetic blacklist lambda$setLayoutColorAsync$7()V
    .registers 0

    .line 464
    return-void
.end method

.method static synthetic blacklist lambda$setMessageTextColorAsync$10()V
    .registers 0

    .line 510
    return-void
.end method

.method static synthetic blacklist lambda$setNameReplacementAsync$1()V
    .registers 0

    .line 149
    return-void
.end method

.method static synthetic blacklist lambda$setSenderTextColorAsync$9()V
    .registers 0

    .line 490
    return-void
.end method

.method private blacklist parseMessagingData(Landroid/os/Bundle;Z)Lcom/android/internal/widget/MessagingData;
    .registers 20
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "usePrecomputedText"    # Z

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "android.messages"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 210
    .local v3, "messages":[Landroid/os/Parcelable;
    nop

    .line 211
    invoke-static {v3}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v4

    .line 212
    .local v4, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const-string v5, "android.messages.historic"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 213
    .local v5, "histMessages":[Landroid/os/Parcelable;
    nop

    .line 214
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v6

    .line 215
    .local v6, "newHistoricMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const-class v7, Landroid/app/Person;

    const-string v8, "android.messagingUser"

    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Person;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/MessagingLayout;->setUser(Landroid/app/Person;)V

    .line 217
    const-string v7, "android.remoteInputHistoryItems"

    const-class v9, Landroid/app/RemoteInputHistoryItem;

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/app/RemoteInputHistoryItem;

    .line 219
    .local v7, "history":[Landroid/app/RemoteInputHistoryItem;
    invoke-direct {v0, v4, v7}, Lcom/android/internal/widget/MessagingLayout;->addRemoteInputHistoryToMessages(Ljava/util/List;[Landroid/app/RemoteInputHistoryItem;)V

    .line 221
    const-class v9, Landroid/app/Person;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroid/app/Person;

    .line 222
    .local v10, "user":Landroid/app/Person;
    nop

    .line 223
    const-string v8, "android.remoteInputSpinner"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 226
    .local v11, "showSpinner":Z
    const/4 v8, 0x1

    invoke-direct {v0, v6, v8, v2}, Lcom/android/internal/widget/MessagingLayout;->createMessages(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v12

    .line 229
    .local v12, "historicMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const-string v8, "android.summarization"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/widget/MessagingLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    .line 230
    iget-object v8, v0, Lcom/android/internal/widget/MessagingLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7c

    iget-boolean v8, v0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    if-eqz v8, :cond_7c

    .line 231
    iget-object v8, v0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v13, 0x3

    invoke-virtual {v8, v13}, Lcom/android/internal/widget/MessagingLinearLayout;->setMaxDisplayedLines(I)V

    .line 232
    new-instance v8, Landroid/app/Notification$MessagingStyle$Message;

    iget-object v13, v0, Lcom/android/internal/widget/MessagingLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    const-wide/16 v14, 0x0

    const-string v9, ""

    invoke-direct {v8, v13, v14, v15, v9}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 234
    .local v8, "summary":Landroid/app/Notification$MessagingStyle$Message;
    invoke-static {v8}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v13, 0x0

    invoke-direct {v0, v9, v13, v2}, Lcom/android/internal/widget/MessagingLayout;->createMessages(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v8

    .line 235
    .local v8, "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    move-object v13, v8

    goto :goto_83

    .line 230
    .end local v8    # "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    :cond_7c
    move v13, v9

    .line 236
    nop

    .line 237
    invoke-direct {v0, v4, v13, v2}, Lcom/android/internal/widget/MessagingLayout;->createMessages(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v8

    move-object v13, v8

    .line 241
    .local v13, "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    :goto_83
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v14, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v15, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/internal/widget/MessagingLayout;->findGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 247
    new-instance v9, Lcom/android/internal/widget/MessagingData;

    iget-object v8, v0, Lcom/android/internal/widget/MessagingLayout;->mSummarizedContent:Ljava/lang/CharSequence;

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/android/internal/widget/MessagingData;-><init>(Landroid/app/Person;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    return-object v9
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

    .line 383
    .local p1, "oldGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 384
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4b

    .line 385
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingGroup;

    .line 386
    .local v2, "group":Lcom/android/internal/widget/MessagingGroup;
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 387
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v3

    .line 389
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->isShown()Z

    move-result v4

    .line 390
    .local v4, "wasShown":Z
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 391
    if-eqz v4, :cond_39

    invoke-static {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 392
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->addTransientView(Landroid/view/View;I)V

    .line 393
    new-instance v5, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v2}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingGroup;)V

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/MessagingGroup;->removeGroupAnimated(Ljava/lang/Runnable;)V

    goto :goto_3e

    .line 398
    :cond_39
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :goto_3e
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 401
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 384
    .end local v2    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v3    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v4    # "wasShown":Z
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 404
    .end local v1    # "i":I
    :cond_4b
    return-void
.end method

.method private blacklist updateHistoricMessageVisibility()V
    .registers 13

    .line 657
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 658
    .local v0, "numHistoric":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v1, v0, :cond_20

    .line 659
    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .line 660
    .local v4, "existing":Lcom/android/internal/widget/MessagingMessage;
    iget-boolean v5, p0, Lcom/android/internal/widget/MessagingLayout;->mShowHistoricMessages:Z

    if-eqz v5, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    invoke-interface {v4, v2}, Lcom/android/internal/widget/MessagingMessage;->setVisibility(I)V

    .line 658
    .end local v4    # "existing":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 662
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 663
    .local v1, "numGroups":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v1, :cond_68

    .line 664
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingGroup;

    .line 665
    .local v5, "group":Lcom/android/internal/widget/MessagingGroup;
    const/4 v6, 0x0

    .line 666
    .local v6, "visibleChildren":I
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v7

    .line 667
    .local v7, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 668
    .local v8, "numGroupMessages":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3b
    if-ge v9, v8, :cond_4e

    .line 669
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/MessagingMessage;

    .line 670
    .local v10, "message":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v10}, Lcom/android/internal/widget/MessagingMessage;->getVisibility()I

    move-result v11

    if-eq v11, v3, :cond_4b

    .line 671
    add-int/lit8 v6, v6, 0x1

    .line 668
    .end local v10    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_4b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    .line 674
    .end local v9    # "j":I
    :cond_4e
    if-lez v6, :cond_5a

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v9

    if-ne v9, v3, :cond_5a

    .line 675
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    goto :goto_65

    .line 676
    :cond_5a
    if-nez v6, :cond_65

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v9

    if-eq v9, v3, :cond_65

    .line 677
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    .line 663
    .end local v5    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v6    # "visibleChildren":I
    .end local v7    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v8    # "numGroupMessages":I
    :cond_65
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 680
    .end local v4    # "i":I
    :cond_68
    return-void
.end method

.method private blacklist updateImageMessages()V
    .registers 6

    .line 346
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    if-nez v0, :cond_5

    .line 347
    return-void

    .line 349
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->getNewImageMessage()Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, "newMessage":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 352
    .local v1, "previousMessage":Landroid/view/View;
    if-eq v1, v0, :cond_1e

    .line 353
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 354
    if-eqz v0, :cond_1e

    .line 355
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;)V

    .line 358
    :cond_1e
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const/16 v4, 0x8

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    move v2, v4

    :goto_26
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setVisibility(I)V

    .line 362
    if-eqz v0, :cond_42

    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 363
    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    :cond_42
    return-void
.end method

.method private blacklist updateTitleAndNamesDisplay()V
    .registers 9

    .line 407
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefix(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 410
    .local v0, "uniqueNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 411
    .local v1, "cachedAvatars":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 413
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 414
    .local v3, "group":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    if-ne v4, v5, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    .line 415
    .local v4, "isOwnMessage":Z
    :goto_29
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 416
    .local v5, "senderName":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_55

    iget-boolean v6, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    if-eqz v6, :cond_44

    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v6, :cond_44

    if-nez v4, :cond_44

    .line 418
    goto :goto_55

    .line 420
    :cond_44
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 421
    .local v6, "symbol":Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/widget/MessagingGroup;->getAvatarSymbolIfMatching(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 423
    .local v7, "cachedIcon":Landroid/graphics/drawable/Icon;
    if-eqz v7, :cond_55

    .line 424
    invoke-virtual {v1, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .end local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "isOwnMessage":Z
    .end local v5    # "senderName":Ljava/lang/CharSequence;
    .end local v6    # "symbol":Ljava/lang/String;
    .end local v7    # "cachedIcon":Landroid/graphics/drawable/Icon;
    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 428
    .end local v2    # "i":I
    :cond_58
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_59
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b5

    .line 430
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 431
    .restart local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 432
    .local v4, "senderName":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 433
    goto :goto_b2

    .line 435
    :cond_7a
    iget-boolean v5, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    if-eqz v5, :cond_90

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v5, :cond_90

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    if-eq v5, v6, :cond_90

    .line 436
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    goto :goto_b2

    .line 438
    :cond_90
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 439
    .local v5, "cachedIcon":Landroid/graphics/drawable/Icon;
    if-nez v5, :cond_a7

    .line 440
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/internal/widget/MessagingLayout;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 442
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_a7
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setCreatedAvatar(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 428
    .end local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "senderName":Ljava/lang/CharSequence;
    .end local v5    # "cachedIcon":Landroid/graphics/drawable/Icon;
    :cond_b2
    :goto_b2
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 448
    .end local v2    # "i":I
    :cond_b5
    return-void
.end method


# virtual methods
.method public blacklist createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .registers 5
    .param p1, "senderName"    # Ljava/lang/CharSequence;
    .param p2, "symbol"    # Ljava/lang/String;
    .param p3, "layoutColor"    # I

    .line 451
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getImageMessageContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 712
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

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

    .line 716
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;
    .registers 2

    .line 707
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 5

    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    .line 115
    const v0, 0x1020437

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 116
    const v0, 0x10202b5

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 117
    const v0, 0x10204d0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 121
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 122
    .local v1, "size":I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    .line 123
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/MessagingLayout;->setMessagingClippingDisabled(Z)V

    .line 124
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 684
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 685
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
    iget-object v1, p1, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/MessagingLayout$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/MessagingLayout$1;-><init>(Lcom/android/internal/widget/MessagingLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 704
    :cond_1d
    return-void
.end method

.method public blacklist setAvatarReplacement(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setAvatarReplacementAsync"
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    .line 129
    return-void
.end method

.method public blacklist setAvatarReplacementAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 135
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    .line 136
    new-instance v0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda7;-><init>()V

    return-object v0
.end method

.method public blacklist setConversationTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setConversationTitleAsync"
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 188
    return-void
.end method

.method public blacklist setConversationTitleAsync(Ljava/lang/CharSequence;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;

    .line 194
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 195
    new-instance v0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda6;-><init>()V

    return-object v0
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setDataAsync"
    .end annotation

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MessagingLayout;->parseMessagingData(Landroid/os/Bundle;Z)Lcom/android/internal/widget/MessagingData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->bind(Lcom/android/internal/widget/MessagingData;)V

    .line 205
    return-void
.end method

.method public blacklist setDataAsync(Landroid/os/Bundle;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 260
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    if-nez v0, :cond_a

    .line 261
    new-instance v0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/MessagingLayout;Landroid/os/Bundle;)V

    return-object v0

    .line 264
    :cond_a
    nop

    .line 265
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MessagingLayout;->parseMessagingData(Landroid/os/Bundle;Z)Lcom/android/internal/widget/MessagingData;

    move-result-object v0

    .line 267
    .local v0, "messagingData":Lcom/android/internal/widget/MessagingData;
    new-instance v1, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingData;)V

    return-object v1
.end method

.method public blacklist setImageResolver(Lcom/android/internal/widget/ImageResolver;)V
    .registers 2
    .param p1, "resolver"    # Lcom/android/internal/widget/ImageResolver;

    .line 290
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    .line 291
    return-void
.end method

.method public blacklist setIsCollapsed(Z)V
    .registers 4
    .param p1, "isCollapsed"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setIsCollapsedAsync"
    .end annotation

    .line 159
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    .line 160
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_14

    .line 161
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 162
    invoke-static {}, Landroid/app/Flags;->nmCollapsedLines()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x2

    goto :goto_11

    :cond_10
    const/4 v1, 0x1

    .line 161
    :goto_11
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setMaxDisplayedLines(I)V

    .line 164
    :cond_14
    return-void
.end method

.method public blacklist setIsCollapsedAsync(Z)Ljava/lang/Runnable;
    .registers 3
    .param p1, "isCollapsed"    # Z

    .line 171
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    .line 172
    new-instance v0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda9;-><init>()V

    return-object v0
.end method

.method public blacklist setIsOneToOne(Z)V
    .registers 2
    .param p1, "oneToOne"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setIsOneToOneAsync"
    .end annotation

    .line 469
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    .line 470
    return-void
.end method

.method public blacklist setIsOneToOneAsync(Z)Ljava/lang/Runnable;
    .registers 3
    .param p1, "oneToOne"    # Z

    .line 476
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    .line 477
    new-instance v0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda4;-><init>()V

    return-object v0
.end method

.method public blacklist setLargeIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 178
    return-void
.end method

.method public blacklist setLayoutColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutColorAsync"
    .end annotation

    .line 456
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    .line 457
    return-void
.end method

.method public blacklist setLayoutColorAsync(I)Ljava/lang/Runnable;
    .registers 3
    .param p1, "color"    # I

    .line 463
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    .line 464
    new-instance v0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public blacklist setMessageTextColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setMessageTextColorAsync"
    .end annotation

    .line 502
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessageTextColor:I

    .line 503
    return-void
.end method

.method public blacklist setMessageTextColorAsync(I)Ljava/lang/Runnable;
    .registers 3
    .param p1, "color"    # I

    .line 509
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessageTextColor:I

    .line 510
    new-instance v0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda8;-><init>()V

    return-object v0
.end method

.method public blacklist setMessagingClippingDisabled(Z)V
    .registers 4
    .param p1, "clippingDisabled"    # Z

    .line 721
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    :goto_8
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 722
    return-void
.end method

.method public blacklist setNameReplacement(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "nameReplacement"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setNameReplacementAsync"
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 142
    return-void
.end method

.method public blacklist setNameReplacementAsync(Ljava/lang/CharSequence;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "nameReplacement"    # Ljava/lang/CharSequence;

    .line 148
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 149
    new-instance v0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda10;-><init>()V

    return-object v0
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 498
    return-void
.end method

.method public blacklist setPrecomputedTextEnabled(Z)V
    .registers 2
    .param p1, "precomputedTextEnabled"    # Z

    .line 279
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    .line 280
    return-void
.end method

.method public blacklist setSenderTextColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setSenderTextColorAsync"
    .end annotation

    .line 482
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mSenderTextColor:I

    .line 483
    return-void
.end method

.method public blacklist setSenderTextColorAsync(I)Ljava/lang/Runnable;
    .registers 3
    .param p1, "color"    # I

    .line 489
    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mSenderTextColor:I

    .line 490
    new-instance v0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda11;-><init>()V

    return-object v0
.end method

.method public blacklist setUser(Landroid/app/Person;)V
    .registers 4
    .param p1, "user"    # Landroid/app/Person;

    .line 514
    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 516
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10806f1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 518
    .local v0, "userIcon":Landroid/graphics/drawable/Icon;
    iget v1, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 519
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v1}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    .line 521
    .end local v0    # "userIcon":Landroid/graphics/drawable/Icon;
    :cond_2a
    return-void
.end method

.method public blacklist showHistoricMessages(Z)V
    .registers 2
    .param p1, "show"    # Z

    .line 652
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mShowHistoricMessages:Z

    .line 653
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateHistoricMessageVisibility()V

    .line 654
    return-void
.end method
