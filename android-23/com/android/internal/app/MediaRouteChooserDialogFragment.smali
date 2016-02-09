.class public Lcom/android/internal/app/MediaRouteChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "MediaRouteChooserDialogFragment.java"


# instance fields
.field private final ARGUMENT_ROUTE_TYPES:Ljava/lang/String;

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #@3
    .line 35
    const-string/jumbo v0, "routeTypes"

    #@6
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->ARGUMENT_ROUTE_TYPES:Ljava/lang/String;

    #@8
    .line 46
    const/4 v0, 0x1

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setCancelable(Z)V

    #@c
    .line 47
    const/4 v0, 0x0

    #@d
    const v1, 0x103012e

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setStyle(II)V

    #@13
    .line 45
    return-void
.end method


# virtual methods
.method public getRouteTypes()I
    .locals 2

    #@0
    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    .line 52
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v1, "routeTypes"

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method public onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteChooserDialog;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 90
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getTheme()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, p1, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;I)V

    #@9
    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getActivity()Landroid/app/Activity;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteChooserDialog;

    #@7
    move-result-object v0

    #@8
    .line 96
    .local v0, "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getRouteTypes()I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    #@f
    .line 97
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    #@14
    .line 98
    return-object v0
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    #@2
    if-eq p1, v1, :cond_0

    #@4
    .line 73
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    #@6
    .line 75
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    #@c
    .line 76
    .local v0, "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    if-eqz v0, :cond_0

    #@e
    .line 77
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    #@11
    .line 71
    .end local v0    # "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    :cond_0
    return-void
.end method

.method public setRouteTypes(I)V
    .locals 3
    .param p1, "types"    # I

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getRouteTypes()I

    #@3
    move-result v2

    #@4
    if-eq p1, v2, :cond_1

    #@6
    .line 57
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    #@9
    move-result-object v0

    #@a
    .line 58
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    #@c
    .line 59
    new-instance v0, Landroid/os/Bundle;

    #@e
    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@11
    .line 61
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v2, "routeTypes"

    #@14
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@17
    .line 62
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setArguments(Landroid/os/Bundle;)V

    #@1a
    .line 64
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/internal/app/MediaRouteChooserDialog;

    #@20
    .line 65
    .local v1, "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    if-eqz v1, :cond_1

    #@22
    .line 66
    invoke-virtual {v1, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    #@25
    .line 55
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    :cond_1
    return-void
.end method
