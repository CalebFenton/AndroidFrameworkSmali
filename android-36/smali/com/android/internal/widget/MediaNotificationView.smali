.class public Lcom/android/internal/widget/MediaNotificationView;
.super Landroid/widget/FrameLayout;
.source "MediaNotificationView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;
    }
.end annotation


# instance fields
.field private blacklist mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist addVisibilityListener(Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;

    .line 75
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    .line 78
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_18
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 1

    .line 56
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 57
    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .registers 4
    .param p1, "isVisible"    # Z

    .line 61
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 64
    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;->onAggregatedVisibilityChanged(Z)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 67
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method public blacklist removeVisibilityListener(Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;

    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    :cond_9
    return-void
.end method
