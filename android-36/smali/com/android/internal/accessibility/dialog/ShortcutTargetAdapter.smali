.class Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;
.super Lcom/android/internal/accessibility/dialog/TargetAdapter;
.source "ShortcutTargetAdapter.java"


# instance fields
.field private blacklist mShortcutMenuMode:I

.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/TargetAdapter;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    .line 39
    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mTargets:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist getCount()I
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 49
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method blacklist getShortcutMenuMode()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 59
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    if-nez p2, :cond_47

    .line 62
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;-><init>()V

    .line 66
    .local v1, "holder":Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    const v2, 0x10201cd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mCheckBoxView:Landroid/widget/CheckBox;

    .line 68
    const v2, 0x10201ce

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 69
    const v2, 0x10201cf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    .line 71
    const v2, 0x10201d0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4d

    .line 75
    .end local v1    # "holder":Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    :cond_47
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;

    .line 78
    .restart local v1    # "holder":Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    :goto_4d
    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mTargets:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 79
    .local v2, "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    iget v3, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V

    .line 81
    return-object p2
.end method

.method blacklist setShortcutMenuMode(I)V
    .registers 2
    .param p1, "shortcutMenuMode"    # I

    .line 85
    iput p1, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    .line 86
    return-void
.end method
