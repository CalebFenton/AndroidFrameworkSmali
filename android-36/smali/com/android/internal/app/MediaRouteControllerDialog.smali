.class public Lcom/android/internal/app/MediaRouteControllerDialog;
.super Landroid/app/AlertDialog;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;


# instance fields
.field private final blacklist mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$ny9FfsOHzkhKTFP04BfvAdzzgyU(Lcom/android/internal/app/MediaRouteControllerDialog;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/MediaRouteControllerDialog;->lambda$onCreate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 49
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    .line 50
    return-void
.end method

.method private synthetic blacklist lambda$onCreate$0(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 56
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->onDisconnectButtonClick()V

    return-void
.end method


# virtual methods
.method public blacklist dismissView()V
    .registers 1

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->dismiss()V

    .line 115
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .registers 2

    .line 72
    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    .line 73
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->onAttachedToWindow()V

    .line 74
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10405e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/MediaRouteControllerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/app/MediaRouteControllerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900b1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 58
    .local v5, "customView":Landroid/view/View;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/MediaRouteControllerDialog;->setView(Landroid/view/View;IIII)V

    .line 59
    iget-object v1, v4, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v1, v5}, Lcom/android/internal/app/MediaRouteControllerContentManager;->bindViews(Landroid/view/View;)V

    .line 60
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x10202bc

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "customPanelView":Landroid/view/View;
    if-eqz v1, :cond_45

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 67
    :cond_45
    iget-object v2, v4, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v2}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    .line 68
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->onDetachedFromWindow()V

    .line 79
    invoke-super {p0}, Landroid/app/AlertDialog;->onDetachedFromWindow()V

    .line 80
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 84
    const/16 v0, 0x19

    if-eq p1, v0, :cond_e

    const/16 v1, 0x18

    if-ne p1, v1, :cond_9

    goto :goto_e

    .line 90
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 86
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    .line 87
    const/4 v2, 0x1

    if-ne p1, v0, :cond_15

    const/4 v0, -0x1

    goto :goto_16

    :cond_15
    move v0, v2

    .line 86
    :goto_16
    invoke-virtual {v1, v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->requestUpdateRouteVolume(I)V

    .line 88
    return v2
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 95
    const/16 v0, 0x19

    if-eq p1, v0, :cond_e

    const/16 v0, 0x18

    if-ne p1, v0, :cond_9

    goto :goto_e

    .line 99
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 97
    :cond_e
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setMediaRouteDeviceIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 110
    return-void
.end method

.method public blacklist setMediaRouteDeviceTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method
