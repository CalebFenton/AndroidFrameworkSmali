.class public abstract Lcom/android/internal/app/MediaRouteDialogPresenter;
.super Ljava/lang/Object;
.source "MediaRouteDialogPresenter.java"


# static fields
.field private static final blacklist CHOOSER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

.field private static final blacklist CONTROLLER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

.field private static final blacklist TAG:Ljava/lang/String; = "MediaRouter"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;

    .line 72
    invoke-static {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 73
    const v0, 0x1030132

    goto :goto_d

    .line 74
    :cond_a
    const v0, 0x103012e

    :goto_d
    nop

    .line 75
    .local v0, "theme":I
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/app/MediaRouteDialogPresenter;->createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;I)Landroid/app/Dialog;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "theme"    # I

    .line 81
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/app/MediaRouteDialogPresenter;->createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;IZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;IZ)Landroid/app/Dialog;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "theme"    # I
    .param p4, "showProgressBarWhenEmpty"    # Z

    .line 89
    invoke-static {p0, p1}, Lcom/android/internal/app/MediaRouteDialogPresenter;->shouldShowChooserDialog(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 90
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;IZ)V

    .line 92
    .local v0, "d":Lcom/android/internal/app/MediaRouteChooserDialog;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    .line 93
    invoke-virtual {v0, p2}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-object v0

    .line 96
    .end local v0    # "d":Lcom/android/internal/app/MediaRouteChooserDialog;
    :cond_12
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {v0, p0, p3}, Lcom/android/internal/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static blacklist shouldShowChooserDialog(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "routeTypes"    # I

    .line 102
    const-class v0, Landroid/media/MediaRouter;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    .line 103
    .local v0, "router":Landroid/media/MediaRouter;
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    .line 104
    .local v1, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v2, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v2, 0x1

    :goto_1c
    return v2
.end method

.method public static blacklist showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;

    .line 43
    const-string v0, "media_router"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    .line 45
    .local v0, "router":Landroid/media/MediaRouter;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 47
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 48
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "MediaRouter"

    if-nez v3, :cond_38

    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_38

    .line 59
    :cond_20
    const-string v3, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_2f

    .line 60
    const-string/jumbo v3, "showDialog(): Route controller dialog already showing!"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v4

    .line 63
    :cond_2f
    new-instance v4, Lcom/android/internal/app/MediaRouteControllerDialogFragment;

    invoke-direct {v4}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;-><init>()V

    .line 64
    .local v4, "f":Lcom/android/internal/app/MediaRouteControllerDialogFragment;
    invoke-virtual {v4, v1, v3}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    return-object v4

    .line 49
    .end local v4    # "f":Lcom/android/internal/app/MediaRouteControllerDialogFragment;
    :cond_38
    :goto_38
    const-string v3, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_47

    .line 50
    const-string/jumbo v3, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-object v4

    .line 53
    :cond_47
    new-instance v4, Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-direct {v4}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;-><init>()V

    .line 54
    .local v4, "f":Lcom/android/internal/app/MediaRouteChooserDialogFragment;
    invoke-virtual {v4, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setRouteTypes(I)V

    .line 55
    invoke-virtual {v4, p2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v4, v1, v3}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 57
    return-object v4
.end method
