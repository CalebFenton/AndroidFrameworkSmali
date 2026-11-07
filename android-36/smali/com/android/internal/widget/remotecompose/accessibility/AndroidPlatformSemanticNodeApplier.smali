.class public Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;
.super Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;
.source "AndroidPlatformSemanticNodeApplier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier<",
        "Landroid/view/accessibility/AccessibilityNodeInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist ROLE_DESCRIPTION_KEY:Ljava/lang/String; = "AccessibilityNodeInfo.roleDescription"


# instance fields
.field private final blacklist mPlayer:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "player"    # Landroid/view/View;

    .line 35
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->mPlayer:Landroid/view/View;

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V
    .registers 6
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p2, "childIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 165
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->mPlayer:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 166
    .end local v1    # "id":I
    goto :goto_4

    .line 167
    :cond_1a
    return-void
.end method

.method public bridge synthetic blacklist addChildren(Ljava/lang/Object;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    return-void
.end method

.method protected blacklist applyListItem(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .registers 5
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "parentId"    # I

    .line 152
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScreenReaderFocusable(Z)V

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->mPlayer:Landroid/view/View;

    invoke-virtual {p1, v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 158
    nop

    .line 159
    const/4 v1, 0x0

    invoke-static {v0, v0, v1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 160
    return-void
.end method

.method protected bridge synthetic blacklist applyListItem(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->applyListItem(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return-void
.end method

.method protected blacklist applyScrollable(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;I)V
    .registers 9
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "scrollAxis"    # Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;
    .param p3, "scrollDirection"    # I

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 106
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 107
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setGranularScrollingSupported(Z)V

    .line 111
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->canScrollForward()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_36

    .line 112
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 113
    if-ne p3, v2, :cond_2a

    .line 114
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 115
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_36

    .line 116
    :cond_2a
    if-ne p3, v0, :cond_36

    .line 118
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 119
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 123
    :cond_36
    :goto_36
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->canScrollBackwards()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 124
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 125
    if-ne p3, v2, :cond_4e

    .line 126
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 127
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_5a

    .line 128
    :cond_4e
    if-ne p3, v0, :cond_5a

    .line 130
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 131
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 135
    :cond_5a
    :goto_5a
    const-string v1, "android.widget.HorizontalScrollView"

    const-string v2, "android.widget.ScrollView"

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p3, v0, :cond_6d

    .line 136
    invoke-static {v0, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 137
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_77

    .line 139
    :cond_6d
    invoke-static {v4, v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 140
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 143
    :goto_77
    if-ne p3, v0, :cond_7d

    .line 144
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_80

    .line 146
    :cond_7d
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 148
    :goto_80
    return-void
.end method

.method protected bridge synthetic blacklist applyScrollable(Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->applyScrollable(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;I)V

    return-void
.end method

.method protected blacklist getContentDescription(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 81
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->getContentDescription(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getStateDescription(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 56
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist getStateDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->getStateDescription(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 71
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist setBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 93
    return-void
.end method

.method protected bridge synthetic blacklist setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->setBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected blacklist setClickable(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .registers 4
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "clickable"    # Z

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 42
    if-eqz p2, :cond_b

    .line 43
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_10

    .line 45
    :cond_b
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 47
    :goto_10
    return-void
.end method

.method protected bridge synthetic blacklist setClickable(Ljava/lang/Object;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->setClickable(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    return-void
.end method

.method protected blacklist setContentDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method protected bridge synthetic blacklist setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->setContentDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected blacklist setEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .registers 3
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "enabled"    # Z

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 52
    return-void
.end method

.method protected bridge synthetic blacklist setEnabled(Ljava/lang/Object;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->setEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    return-void
.end method

.method protected blacklist setRoleDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .registers 5
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "description"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method protected bridge synthetic blacklist setRoleDescription(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->setRoleDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist setStateDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method protected bridge synthetic blacklist setStateDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->setStateDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected blacklist setText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method protected bridge synthetic blacklist setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->setText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected blacklist setUniqueId(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "id"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setUniqueId(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected bridge synthetic blacklist setUniqueId(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;->setUniqueId(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    return-void
.end method
