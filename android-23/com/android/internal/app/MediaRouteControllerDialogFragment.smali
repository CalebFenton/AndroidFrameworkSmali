.class public Lcom/android/internal/app/MediaRouteControllerDialogFragment;
.super Landroid/app/DialogFragment;
.source "MediaRouteControllerDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #@3
    .line 41
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->setCancelable(Z)V

    #@7
    .line 42
    const/4 v0, 0x0

    #@8
    const v1, 0x103012e

    #@b
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->setStyle(II)V

    #@e
    .line 40
    return-void
.end method


# virtual methods
.method public onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteControllerDialog;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 53
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerDialog;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->getTheme()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, p1, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    #@9
    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->getActivity()Landroid/app/Activity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteControllerDialog;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
