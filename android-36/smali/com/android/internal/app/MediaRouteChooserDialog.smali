.class public Lcom/android/internal/app/MediaRouteChooserDialog;
.super Landroid/app/AlertDialog;
.source "MediaRouteChooserDialog.java"

# interfaces
.implements Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;


# instance fields
.field private final blacklist mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

.field private blacklist mExtendedSettingsButton:Landroid/widget/Button;

.field private blacklist mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mShowProgressBarWhenEmpty:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;IZ)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IZ)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "showProgressBarWhenEmpty"    # Z

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    iput-boolean p3, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mShowProgressBarWhenEmpty:Z

    .line 57
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/app/MediaRouteChooserContentManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

    .line 58
    return-void
.end method

.method static blacklist isLightTheme(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 130
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 131
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010590

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    return v3
.end method

.method private blacklist updateExtendedSettingsButton()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    if-eqz v0, :cond_18

    .line 101
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    .line 103
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    goto :goto_15

    :cond_13
    const/16 v1, 0x8

    .line 102
    :goto_15
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    :cond_18
    return-void
.end method


# virtual methods
.method public blacklist dismissView()V
    .registers 1

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->dismiss()V

    .line 122
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .registers 2

    .line 109
    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    .line 110
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->onAttachedToWindow()V

    .line 111
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900b0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "containerView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setView(Landroid/view/View;)V

    .line 84
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {v1}, Lcom/android/internal/app/MediaRouteChooserContentManager;->getRouteTypes()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_20

    .line 85
    const v1, 0x10405e5

    goto :goto_23

    .line 86
    :cond_20
    const v1, 0x10405e4

    .line 84
    :goto_23
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setTitle(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_34

    const v1, 0x108052c

    goto :goto_37

    .line 89
    :cond_34
    const v1, 0x108052b

    .line 88
    :goto_37
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setIcon(I)V

    .line 91
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v1, 0x10203e0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    .line 94
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    .line 96
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->bindViews(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->onDetachedFromWindow()V

    .line 116
    invoke-super {p0}, Landroid/app/AlertDialog;->onDetachedFromWindow()V

    .line 117
    return-void
.end method

.method public blacklist setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 71
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eq p1, v0, :cond_9

    .line 72
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 73
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    .line 75
    :cond_9
    return-void
.end method

.method public blacklist setRouteTypes(I)V
    .registers 3
    .param p1, "types"    # I

    .line 67
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserContentManager;->setRouteTypes(I)V

    .line 68
    return-void
.end method

.method public blacklist showProgressBarWhenEmpty()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mShowProgressBarWhenEmpty:Z

    return v0
.end method
