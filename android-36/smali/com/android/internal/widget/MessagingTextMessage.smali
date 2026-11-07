.class public Lcom/android/internal/widget/MessagingTextMessage;
.super Lcom/android/internal/widget/ImageFloatingTextView;
.source "MessagingTextMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingMessage;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MessagingTextMessage"

.field private static final blacklist sInstancePool:Lcom/android/internal/widget/MessagingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/MessagingPool<",
            "Lcom/android/internal/widget/MessagingTextMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mPrecomputedText:Landroid/text/PrecomputedText;

.field private final blacklist mState:Lcom/android/internal/widget/MessagingMessageState;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/android/internal/widget/MessagingPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MessagingPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    .line 63
    return-void
.end method

.method static blacklist createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Z)Lcom/android/internal/widget/MessagingMessage;
    .registers 8
    .param p0, "layout"    # Lcom/android/internal/widget/IMessagingLayout;
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;
    .param p2, "usePrecomputedText"    # Z

    .line 86
    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    .line 87
    .local v0, "messagingLinearLayout":Lcom/android/internal/widget/MessagingLinearLayout;
    sget-object v1, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingPool;->acquire()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingTextMessage;

    .line 88
    .local v1, "createdMessage":Lcom/android/internal/widget/MessagingTextMessage;
    if-nez v1, :cond_27

    .line 89
    nop

    .line 90
    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 89
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 90
    const v3, 0x10900f1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/widget/MessagingTextMessage;

    .line 94
    sget-object v2, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingTextMessage;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 96
    :cond_27
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/MessagingTextMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z

    .line 97
    return-object v1
.end method

.method public static blacklist dropCache()V
    .registers 1

    .line 106
    sget-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingPool;->clear()V

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist finalizeInflate()V
    .registers 4

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    goto :goto_13

    .line 155
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 154
    :goto_13
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingTextMessage;->setText(Ljava/lang/CharSequence;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_16} :catch_17

    .line 164
    goto :goto_42

    .line 156
    :catch_17
    move-exception v0

    .line 157
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrecomputedText setText failed for TextView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessagingTextMessage"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingMessageState;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingTextMessage;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :goto_42
    return-void
.end method

.method public blacklist getConsumedLines()I
    .registers 2

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLineCount()I

    move-result v0

    return v0
.end method

.method public blacklist getLayoutHeight()I
    .registers 3

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 140
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_8

    .line 141
    const/4 v1, 0x0

    return v1

    .line 143
    :cond_8
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    return v1
.end method

.method public blacklist getMeasuredType()I
    .registers 6

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getMeasuredHeight()I

    move-result v0

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayoutHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_18

    move v0, v3

    goto :goto_19

    :cond_18
    move v0, v2

    .line 113
    .local v0, "measuredTooSmall":Z
    :goto_19
    const/4 v1, 0x2

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLineCount()I

    move-result v4

    if-gt v4, v3, :cond_23

    .line 114
    return v1

    .line 116
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 117
    .local v4, "layout":Landroid/text/Layout;
    if-nez v4, :cond_2a

    .line 118
    return v1

    .line 120
    :cond_2a
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    if-lez v1, :cond_36

    .line 121
    return v3

    .line 123
    :cond_36
    return v2
.end method

.method public blacklist getState()Lcom/android/internal/widget/MessagingMessageState;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    return-object v0
.end method

.method public blacklist recycle()V
    .registers 2

    .line 101
    invoke-super {p0}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    .line 102
    sget-object v0, Lcom/android/internal/widget/MessagingTextMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/MessagingPool;->release(Landroid/view/View;)Z

    .line 103
    return-void
.end method

.method public blacklist setColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setTextColor(I)V

    .line 149
    return-void
.end method

.method public blacklist setMaxDisplayedLines(I)V
    .registers 2
    .param p1, "lines"    # I

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->setMaxLines(I)V

    .line 131
    return-void
.end method

.method public blacklist setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z
    .registers 5
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;
    .param p2, "usePrecomputedText"    # Z

    .line 73
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/MessagingMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z

    .line 74
    if-eqz p2, :cond_14

    .line 75
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingTextMessage;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    goto :goto_1e

    .line 77
    :cond_14
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingTextMessage;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingTextMessage;->mPrecomputedText:Landroid/text/PrecomputedText;

    .line 81
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method
