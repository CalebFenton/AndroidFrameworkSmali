.class public abstract Lcom/android/internal/app/MediaRouteDialogPresenter;
.super Ljava/lang/Object;
.source "MediaRouteDialogPresenter.java"


# static fields
.field private static final CHOOSER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

.field private static final CONTROLLER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

.field private static final TAG:Ljava/lang/String; = "MediaRouter"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    const v5, 0x103012e

    #@3
    .line 72
    const-string/jumbo v4, "media_router"

    #@6
    .line 71
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    check-cast v3, Landroid/media/MediaRouter;

    #@c
    .line 74
    .local v3, "router":Landroid/media/MediaRouter;
    invoke-virtual {v3}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    #@f
    move-result-object v2

    #@10
    .line 75
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_0

    #@16
    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 82
    new-instance v1, Lcom/android/internal/app/MediaRouteControllerDialog;

    #@1e
    invoke-direct {v1, p0, v5}, Lcom/android/internal/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    #@21
    .line 84
    .local v1, "d":Lcom/android/internal/app/MediaRouteControllerDialog;
    return-object v1

    #@22
    .line 76
    .end local v1    # "d":Lcom/android/internal/app/MediaRouteControllerDialog;
    :cond_0
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    #@24
    invoke-direct {v0, p0, v5}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;I)V

    #@27
    .line 78
    .local v0, "d":Lcom/android/internal/app/MediaRouteChooserDialog;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    #@2a
    .line 79
    invoke-virtual {v0, p2}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    #@2d
    .line 80
    return-object v0
.end method

.method public static showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 44
    const-string/jumbo v5, "media_router"

    #@4
    .line 43
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v4

    #@8
    check-cast v4, Landroid/media/MediaRouter;

    #@a
    .line 45
    .local v4, "router":Landroid/media/MediaRouter;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    #@d
    move-result-object v2

    #@e
    .line 47
    .local v2, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v4}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    #@11
    move-result-object v3

    #@12
    .line 48
    .local v3, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    #@15
    move-result v5

    #@16
    if-nez v5, :cond_0

    #@18
    invoke-virtual {v3, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 59
    const-string/jumbo v5, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    #@21
    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    #@24
    move-result-object v5

    #@25
    if-eqz v5, :cond_2

    #@27
    .line 60
    const-string/jumbo v5, "MediaRouter"

    #@2a
    const-string/jumbo v6, "showDialog(): Route controller dialog already showing!"

    #@2d
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 61
    return-object v7

    #@31
    .line 49
    :cond_0
    const-string/jumbo v5, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    #@34
    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    #@37
    move-result-object v5

    #@38
    if-eqz v5, :cond_1

    #@3a
    .line 50
    const-string/jumbo v5, "MediaRouter"

    #@3d
    const-string/jumbo v6, "showDialog(): Route chooser dialog already showing!"

    #@40
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 51
    return-object v7

    #@44
    .line 53
    :cond_1
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #@46
    invoke-direct {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;-><init>()V

    #@49
    .line 54
    .local v0, "f":Lcom/android/internal/app/MediaRouteChooserDialogFragment;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setRouteTypes(I)V

    #@4c
    .line 55
    invoke-virtual {v0, p2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    #@4f
    .line 56
    const-string/jumbo v5, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    #@52
    invoke-virtual {v0, v2, v5}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    #@55
    .line 57
    return-object v0

    #@56
    .line 63
    .end local v0    # "f":Lcom/android/internal/app/MediaRouteChooserDialogFragment;
    :cond_2
    new-instance v1, Lcom/android/internal/app/MediaRouteControllerDialogFragment;

    #@58
    invoke-direct {v1}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;-><init>()V

    #@5b
    .line 64
    .local v1, "f":Lcom/android/internal/app/MediaRouteControllerDialogFragment;
    const-string/jumbo v5, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    #@5e
    invoke-virtual {v1, v2, v5}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    #@61
    .line 65
    return-object v1
.end method
